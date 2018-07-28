#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include "cuda.h"


#include <stdio.h>


#define blocksize 256

int getblock(int length) {
	int block = length / blocksize;
	if ((length%blocksize) > 0)block++;
	return block;
}


int getlg2(int length);

void check(int *a, int length) {
	printf("//////////////////////////////////////////////\n");
	int t = 0;
	for (int i = 0; i < length; i++) {
		
		if (i < (length - 1)) {
			if (a[i] > a[i + 1])
				printf("a[%d] = %d , a[%d] = %d\n", i, a[i], i + 1, a[i + 1]);
				
		}
		else printf("succeed\n");
	}
}

__device__ __host__ int insert0(int a, int *array,unsigned int star,unsigned int end) {
	int p = 0;
	while ((end - star) > 1) {
		p = (star + end) / 2;
		if (a > array[p])star = p;
		else end = p;
	}
	p = (end + star)/2;
	if (a > array[p])star = p;
	else end = p;
	if (a > array[end])end++;
	return end;
}

__device__ __host__ int insert1(int a, int *array, unsigned int star, unsigned int end) {
	int p = 0;
	while ((end - star) > 1) {
		p = (star + end) / 2;
		if (a >= array[p])star = p;
		else end = p;
	}
	p = (end + star) / 2;
	if (a >= array[p])star = p;
	else end = p;
	if (a >= array[end])end++;
	return end;
}

__global__ void sort_int_shared(int *a_map, int *a_dev, int length) {
	int tid = blockIdx.x * blockDim.x + threadIdx.x;
	__shared__ int a_s[blocksize];

	//先获取待排序的值存入共享内存中
	if(tid<length)a_s[threadIdx.x] = a_map[tid];
	else a_s[threadIdx.x] = INT_MAX;
	int r = 0;
	
	__syncthreads();

	//把线程块分成两半,分别执行不同的内容
	bool flag = (threadIdx.x < (blocksize / 2));
	tid = tid % (blocksize / 2);

	//进行只有两个元素的数组的排序
	if (flag) r = a_s[tid * 2];
	else r = a_s[tid * 2 + 1];
	__syncthreads();

	if (flag) {
		if(r > a_s[tid * 2 + 1])a_s[tid*2+1] = r;
	}
	else {
		if (r < a_s[tid * 2])a_s[tid * 2] = r;
	}
	__syncthreads();//存储结果，并同步

	for (int i = 2; i < blocksize; i *= 2) {
		int pair_star = (tid / i)*i*2;

		int offset = tid%i;
		r = a_s[pair_star + offset + ((!flag)*i)];

		int p;
		if (flag) {
			p = insert0(r, a_s, pair_star + i, pair_star + (2 * i) - 1);
			p = p - i;
		}
		else
		{
			p = insert1(r, a_s, pair_star, pair_star + i - 1);
		}

		__syncthreads();

		p += offset;
		a_s[p] = r;

		__syncthreads();

	}
	
	a_dev[blockIdx.x * blockDim.x + threadIdx.x] = a_s[threadIdx.x];
}

__global__ void short_int_global(int *a_dev, int *a_next, int i) {
	int tid = blockIdx.x * blockDim.x + threadIdx.x;
	int r = a_dev[tid];
	int p = tid;

	bool flag = ((blockIdx.x >> i)&1);
	flag = !flag;
	int pair_length = 2 << i;
	int pair_tid = blockIdx.x / pair_length;
	if (flag) 
	{
		if ((blockIdx.x >> (i + 1)) == (gridDim.x >> (i + 1))) {
			int size = gridDim.x % (2 << i);
			size -= (pair_length / 2);
			if (size > 0) {
				int star = pair_tid*pair_length + (pair_length / 2);
				int end = star + size;
				star *= blocksize;
				end *= blocksize;
				end--;
				p = insert0(r, a_dev, star, end);
				p = p - blocksize*(pair_length / 2);
				p += tid - (pair_tid*pair_length*blocksize);
			}
			a_next[p] = r;
		}
		else
		{
			int star = pair_tid*pair_length + (pair_length / 2);
			int end = star + (pair_length/2);
			star *= blocksize;
			end *= blocksize;
			end--;
			p = insert0(r, a_dev, star, end);
			p = p - blocksize*(pair_length / 2);
			p += tid - (pair_tid*pair_length*blocksize);
			a_next[p] = r;
		}
	}
	else
	{
		int star = pair_tid*pair_length;
		int end = star + (pair_length / 2);
		star *= blocksize;
		end *= blocksize;
		end--;
		p = insert1(r, a_dev, star, end);
		p += tid - ((pair_tid*pair_length + (pair_length / 2))*blocksize);
		a_next[p] = r;
	}
}

void sort_int(int *a,int length) {;
	int *a_dev;
	int *a_map;
	cudaMalloc((void**)&a_dev, getblock(length) * blocksize * sizeof(int));
	cudaHostGetDevicePointer((void **)&a_map, (void *)a, 0);
	sort_int_shared<<<getblock(length),blocksize>>>(a_map, a_dev, length);
	
	cudaMemcpy(a, a_dev, length * sizeof(int), cudaMemcpyDeviceToHost);
	int *a_next;
	cudaMalloc((void**)&a_next, getblock(length) * blocksize * sizeof(int));

	int times = getlg2(getblock(length));

	for (int i = 0; i < times; i++) {
		short_int_global <<<getblock(length), blocksize >>>(a_dev, a_next, i);
		//cudaMemcpy(a, a_next, length * sizeof(int), cudaMemcpyDeviceToHost);
		//check(a, length);

		if (i == (times - 1)) {
			cudaMemcpy(a, a_next, length * sizeof(int), cudaMemcpyDeviceToHost);
			break;
		}
		int *c;
		c = a_dev;
		a_dev = a_next;
		a_next = c;
	}

	cudaFree(a_next);
	//cudaFree(a_dev);
	//cudaMemcpy(a,a_next,length*sizeof(int), cudaMemcpyDeviceToHost);
	cudaFree(a_next);
	//check(a, length);
}





int getlg2(int length) {
	int a = 0, b = 0;
	for (int i = 0; i < 32; i++) {
		if (((length >>i )&1) == 1) {
			//printf("i = %d\n", i);
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
		a[i] =  length - i;
	};

	return a;
}



int main() {
	int length = 134217728;
	int *a = genarray(length);
	/*for (int i = 0; i < length; i++) {
		printf("a[%d] = %d\n", i, a[i]);
	}*/

	cudaEvent_t start, stop;
	cudaEventCreate(&start);
	cudaEventCreate(&stop);
	// record start event on the default stream
	cudaEventRecord(start);

	sort_int(a,length);

	cudaEventRecord(stop);
	// wait until the stop event completes
	cudaEventSynchronize(stop);
	// calculate the elapsed time between two events
	float time;
	cudaEventElapsedTime(&time, start, stop);

	printf("time = %f\n",time);

	getchar();
}