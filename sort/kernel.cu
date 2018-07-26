#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include "cuda.h"

#include "insert.cuh"

#include <stdio.h>


#define blocksize 256

int getblock(int length) {
	int block = length / blocksize;
	if ((length%blocksize) > 0)block++;
	return block;
}

__device__ void merge_block(int *a_s, int thread_tid) {
	int r1 = 0, r2 = 0;
	
	//先获取r1,r2的值
	bool flag = (thread_tid < blocksize / 2);
	if (flag) {
		thread_tid *= 4;
		r1 = a_s[thread_tid];
		r2 = a_s[thread_tid+1];
	}
	else
	{
		thread_tid %= (blocksize / 2);//thread_tid大小不要大于(blocksize/2)
		thread_tid *= 4;
		r1 = a_s[thread_tid+2];
		r2 = a_s[thread_tid + 3];
	}
	__syncthreads();//获取完后一定要同步


	//找到插入的位置
	int p1 = 0, p2 = 0;//p1,p2为插入的位置
	if (flag) {
		p1 = insert0_1(r1, a_s, thread_tid + 2);
		p2 = insert0_1(r2, a_s, thread_tid + 2)+1;
	}
	else
	{
		p1 = insert1_1(r1, a_s, thread_tid);
		p2 = insert1_1(r2, a_s, thread_tid)+1;
	}

	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
}


__global__ void sort_int_kernel(int *a_h, int *a_d, int length) {
	
	__shared__ int a_s[blocksize*2];
	int tid = blockIdx.x * blockDim.x + threadIdx.x;
	int r1 = INT_MAX, r2 = INT_MAX;//初始值设为最大值，填满整个数组


	//冲a_h读入两个值
	tid *= 2;
	if (tid < length) {
		r1 = a_h[tid];
	}
	tid++;
	if (tid < length) {
		r2 = a_h[tid];
	}
	
	//对r1,r2进行一次最简单的排序
	if (r1 > r2) {
		int c = r1;
		r1 = r2;
		r2 = c;
	}

	//放入共享内存并同步
	int t2 = threadIdx.x * 2;
	a_s[t2] = r1;
	a_s[t2 + 1] = r2;
	__syncthreads();

	merge_block(a_s, threadIdx.x);
		
	a_d[tid] = a_s[t2 + 1];
	a_d[tid - 1] = a_s[t2];
}

void sort_int(int *a,int lg2,int length) {
	int length_dev = 1 << lg2;
	printf("length_dev = %d\n", length_dev);
	int *a_dev;
	int *a_map;
	if (length_dev < blocksize)length_dev = blocksize;
	cudaMalloc((void**)&a_dev, length_dev * sizeof(int));
	cudaHostGetDevicePointer((void **)&a_map, (void *)a, 0);
	sort_int_kernel<<<getblock(length),blocksize>>>(a_map, a_dev, length);
	cudaMemcpy(a,a_dev,length*sizeof(int), cudaMemcpyDeviceToHost);
}



int getlg2(int length) {
	int a = 0, b = 0;
	for (int i = 0; i < 32; i++) {
		if (((length >>i )&1) == 1) {
			printf("i = %d\n", i);
			a = i;
			b++;
		}
	}
	if (b > 1)a++;
	return a;
}

int* genarray(int length) {
	int *a;
	cudaHostAlloc((void**)&a, length*sizeof(int), cudaHostAllocMapped);
	for (int i = 0; i < length; i++) {
		a[i] =  i;
	};

	return a;
}



int main() {
	int length = 16;
	int *a = genarray(16);
	for (int i = 0; i < length; i++) {
		printf("a[%d] = %d\n", i, a[i]);
	}
	int lg2 = getlg2(length);
	printf("lg2 = %d\n", lg2);

	int in = insert0_4(-1, a, 0);
	printf("in = %d \n", in);
	//sort_int(a,lg2,length);
	getchar();
}