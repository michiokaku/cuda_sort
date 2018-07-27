#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include "cuda.h"

#include "insert.cuh"

#include <stdio.h>


#define blocksize 128

int getblock(int length) {
	int block = length / blocksize;
	if ((length%blocksize) > 0)block++;
	return block;
}

__device__ void merge_block(int *a_s, int thread_tid) {
	int r1 = 0, r2 = 0;//r1,r2存储获取到的值
	int p1 = 0, p2 = 0;//p1,p2为插入的位置
	int merge_offset = 0;//合并组的偏移量
	int merge_tid = 0;//线程在合并组中对应的线程编号
	bool flag = (thread_tid < 256 / 2);
	thread_tid %= (256 / 2);//thread_tid大小不要大于(blocksize/2)

	for (int i = 1; i < 256; i *= 2) {
		//先计算merge_offset和merge_tid
		merge_offset = (thread_tid / i) * 4 * i;
		merge_tid = thread_tid%i;
		merge_tid += merge_offset;

		//获取r1,r2的值
		if (flag) {
			r1 = a_s[merge_tid];
			r2 = a_s[merge_tid + 1];
		}
		else {
			r1 = a_s[merge_tid+i*2];
			r2 = a_s[merge_tid + 1+i*2];
		}

		__syncthreads();//获取完后一定要同步


		//找到插入的位置
	
		if (flag) {
			p1 = insert0_1(r1, a_s, merge_tid + 2*i)-i;
			p2 = insert0_1(r2, a_s, merge_tid + 2*i)-i+1;
		}
		else
		{
			p1 = insert1_1(r1, a_s, merge_tid);
			p2 = insert1_1(r2, a_s, merge_tid)+1;
		}

		//根据p1,p2进行插入
		a_s[p1] = r1;
		a_s[p2] = r2;
	}

}

__device__ void merge_block_256(int *a_s, int thread_tid) {
	int r1 = 0, r2 = 0;//r1,r2存储获取到的值
	int p1 = 0, p2 = 0;//p1,p2为插入的位置
	int merge_offset = 0;//合并组的偏移量
	int merge_tid = 0;//线程在合并组中对应的线程编号
	bool flag = (thread_tid < 128);
	thread_tid %= 128;//thread_tid大小不要大于(blocksize/2)
					  //先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 1) * 4;
	merge_tid = (thread_tid % 1) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 2];
		r2 = a_s[merge_tid + 3];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_1(r1, a_s, merge_tid + 2) - 1;

		p2 = insert0_1(r1, a_s, merge_tid + 2) - 0;

	}
	else
	{
		p1 = insert1_1(r1, a_s, merge_tid);
		p2 = insert1_1(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

	//先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 2) * 8;
	merge_tid = (thread_tid % 2) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 4];
		r2 = a_s[merge_tid + 5];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_2(r1, a_s, merge_tid + 4) - 2;

		p2 = insert0_2(r1, a_s, merge_tid + 4) - 1;

	}
	else
	{
		p1 = insert1_2(r1, a_s, merge_tid);
		p2 = insert1_2(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

	//先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 4) * 16;
	merge_tid = (thread_tid % 4) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 8];
		r2 = a_s[merge_tid + 9];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_3(r1, a_s, merge_tid + 8) - 4;

		p2 = insert0_3(r1, a_s, merge_tid + 8) - 3;

	}
	else
	{
		p1 = insert1_3(r1, a_s, merge_tid);
		p2 = insert1_3(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

	//先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 8) * 32;
	merge_tid = (thread_tid % 8) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 16];
		r2 = a_s[merge_tid + 17];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_4(r1, a_s, merge_tid + 16) - 8;

		p2 = insert0_4(r1, a_s, merge_tid + 16) - 7;

	}
	else
	{
		p1 = insert1_4(r1, a_s, merge_tid);
		p2 = insert1_4(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

	//先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 16) * 64;
	merge_tid = (thread_tid % 16) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 32];
		r2 = a_s[merge_tid + 33];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_5(r1, a_s, merge_tid + 32) - 16;

		p2 = insert0_5(r1, a_s, merge_tid + 32) - 15;

	}
	else
	{
		p1 = insert1_5(r1, a_s, merge_tid);
		p2 = insert1_5(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

	//先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 32) * 128;
	merge_tid = (thread_tid % 32) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 64];
		r2 = a_s[merge_tid + 65];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_6(r1, a_s, merge_tid + 64) - 32;

		p2 = insert0_6(r1, a_s, merge_tid + 64) - 31;

	}
	else
	{
		p1 = insert1_6(r1, a_s, merge_tid);
		p2 = insert1_6(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

	//先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 64) * 256;
	merge_tid = (thread_tid % 64) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 128];
		r2 = a_s[merge_tid + 129];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_7(r1, a_s, merge_tid + 128) - 64;

		p2 = insert0_7(r1, a_s, merge_tid + 128) - 63;

	}
	else
	{
		p1 = insert1_7(r1, a_s, merge_tid);
		p2 = insert1_7(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

	//先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 128) * 512;
	merge_tid = (thread_tid % 128) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 256];
		r2 = a_s[merge_tid + 257];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_8(r1, a_s, merge_tid + 256) - 128;

		p2 = insert0_8(r1, a_s, merge_tid + 256) - 127;

	}
	else
	{
		p1 = insert1_8(r1, a_s, merge_tid);
		p2 = insert1_8(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

}

__device__ void merge_block_128(int *a_s, int thread_tid) {
	int r1 = 0, r2 = 0;//r1,r2存储获取到的值
	int p1 = 0, p2 = 0;//p1,p2为插入的位置
	int merge_offset = 0;//合并组的偏移量
	int merge_tid = 0;//线程在合并组中对应的线程编号
	bool flag = (thread_tid < 64);
	thread_tid %= 64;//thread_tid大小不要大于(blocksize/2)
					 //先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 1) * 4;
	merge_tid = (thread_tid % 1) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 2];
		r2 = a_s[merge_tid + 3];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_1(r1, a_s, merge_tid + 2) - 1;

		p2 = insert0_1(r1, a_s, merge_tid + 2) - 0;

	}
	else
	{
		p1 = insert1_1(r1, a_s, merge_tid);
		p2 = insert1_1(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

	//先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 2) * 8;
	merge_tid = (thread_tid % 2) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 4];
		r2 = a_s[merge_tid + 5];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_2(r1, a_s, merge_tid + 4) - 2;

		p2 = insert0_2(r1, a_s, merge_tid + 4) - 1;

	}
	else
	{
		p1 = insert1_2(r1, a_s, merge_tid);
		p2 = insert1_2(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

	//先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 4) * 16;
	merge_tid = (thread_tid % 4) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 8];
		r2 = a_s[merge_tid + 9];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_3(r1, a_s, merge_tid + 8) - 4;

		p2 = insert0_3(r1, a_s, merge_tid + 8) - 3;

	}
	else
	{
		p1 = insert1_3(r1, a_s, merge_tid);
		p2 = insert1_3(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

	//先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 8) * 32;
	merge_tid = (thread_tid % 8) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 16];
		r2 = a_s[merge_tid + 17];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_4(r1, a_s, merge_tid + 16) - 8;

		p2 = insert0_4(r1, a_s, merge_tid + 16) - 7;

	}
	else
	{
		p1 = insert1_4(r1, a_s, merge_tid);
		p2 = insert1_4(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

	//先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 16) * 64;
	merge_tid = (thread_tid % 16) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 32];
		r2 = a_s[merge_tid + 33];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_5(r1, a_s, merge_tid + 32) - 16;

		p2 = insert0_5(r1, a_s, merge_tid + 32) - 15;

	}
	else
	{
		p1 = insert1_5(r1, a_s, merge_tid);
		p2 = insert1_5(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

	//先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 32) * 128;
	merge_tid = (thread_tid % 32) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 64];
		r2 = a_s[merge_tid + 65];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_6(r1, a_s, merge_tid + 64) - 32;

		p2 = insert0_6(r1, a_s, merge_tid + 64) - 31;

	}
	else
	{
		p1 = insert1_6(r1, a_s, merge_tid);
		p2 = insert1_6(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

	//先计算merge_offset和merge_tid
	merge_offset = (thread_tid / 64) * 256;
	merge_tid = (thread_tid % 64) * 2;

	merge_tid += merge_offset;
	//获取r1,r2的值
	if (flag) {
		r1 = a_s[merge_tid];
		r2 = a_s[merge_tid + 1];
	}
	else {
		r1 = a_s[merge_tid + 128];
		r2 = a_s[merge_tid + 129];
	}
	__syncthreads();//获取完后一定要同步

					//找到插入的位置
	if (flag) {
		p1 = insert0_7(r1, a_s, merge_tid + 128) - 64;

		p2 = insert0_7(r1, a_s, merge_tid + 128) - 63;

	}
	else
	{
		p1 = insert1_7(r1, a_s, merge_tid);
		p2 = insert1_7(r2, a_s, merge_tid) + 1;
	}
	//根据p1,p2进行插入
	a_s[p1] = r1;
	a_s[p2] = r2;
	__syncthreads();



	////新的一轮

}



__global__ void sort_int_kernel_128(int *a_h, int *a_d, int length) {
	
	__shared__ int a_s[256];
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

	merge_block_128(a_s, threadIdx.x);
		

	__syncthreads();
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
	sort_int_kernel_128<<<getblock(length_dev/2),blocksize>>>(a_map, a_dev, length);
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

	int in = insert0_4(33, a, 0);
	printf("in = %d \n", in);
	//sort_int(a,lg2,length);
	getchar();
}