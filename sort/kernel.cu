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

__device__ void merge0_first(int* a_s, int tid) {//传入的tid的值不是最初的值
	int r1 = a_s[tid * 2];
	int r2 = a_s[tid * 2 + 1];

	int merge_pair = tid;//两个组一起合并，合并组的配对编号
	
	
}

__device__ void merge1_first(int* a_s, int tid) {
	int r1 = a_s[tid * 2+(blocksize/2)];
	int r2 = a_s[tid * 2 + 1+(blocksize/2)];

	int merge_pair = tid;
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
	a_s[threadIdx.x] = r1;
	a_s[threadIdx.x + 1] = r2;
	__syncthreads();

	//执行不同的函数的线程尽量分开，减少损耗
	if (threadIdx.x >= blocksize/2) {
		merge1_first(a_s, threadIdx.x % (blocksize / 2));
	}
	else
	{
		merge0_first(a_s, threadIdx.x % (blocksize / 2));
	}

	
	a_d[tid] = a_s[threadIdx.x + 1];
	a_d[tid - 1] = a_s[threadIdx.x];
}

void sort_int(int *a,int lg2,int length) {
	int length_dev = 1 << lg2;
	printf("length_dev = %d\n", length_dev);
	int *a_dev;
	int *a_map;
	cudaMalloc((void**)&a_dev, length_dev * sizeof(int));
	cudaHostGetDevicePointer((void **)&a_map, (void *)a, 0);
	sort_int_kernel<<<getblock(length),length/2>>>(a_map, a_dev, length);
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
		a[i] =  i*3;
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

	int in = insert0_4(10, a, 0);
	printf("in = %d\n", in);
	sort_int(a,lg2,length);
	getchar();
}