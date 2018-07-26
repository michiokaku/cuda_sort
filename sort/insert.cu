#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <stdio.h>

__device__ __host__ unsigned int insert0_0(int a, int *array, int offset) {
	offset--;       offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_0(int a, int *array, int offset) {
	offset--;       offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_1(int a, int *array, int offset) {
	offset--;       offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_1(int a, int *array, int offset) {
	offset--;       offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_2(int a, int *array, int offset) {
	offset--;       offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_2(int a, int *array, int offset) {
	offset--;       offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_3(int a, int *array, int offset) {
	offset--;       offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_3(int a, int *array, int offset) {
	offset--;       offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_4(int a, int *array, int offset) {
	offset--;       offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_4(int a, int *array, int offset) {
	offset--;       offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_5(int a, int *array, int offset) {
	offset--;       offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_5(int a, int *array, int offset) {
	offset--;       offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_6(int a, int *array, int offset) {
	offset--;       offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_6(int a, int *array, int offset) {
	offset--;       offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_7(int a, int *array, int offset) {
	offset--;       offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_7(int a, int *array, int offset) {
	offset--;       offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_8(int a, int *array, int offset) {
	offset--;       offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_8(int a, int *array, int offset) {
	offset--;       offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_9(int a, int *array, int offset) {
	offset--;       offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_9(int a, int *array, int offset) {
	offset--;       offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_10(int a, int *array, int offset) {
	offset--;       offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_10(int a, int *array, int offset) {
	offset--;       offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_11(int a, int *array, int offset) {
	offset--;       offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_11(int a, int *array, int offset) {
	offset--;       offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_12(int a, int *array, int offset) {
	offset--;       offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_12(int a, int *array, int offset) {
	offset--;       offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_13(int a, int *array, int offset) {
	offset--;       offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_13(int a, int *array, int offset) {
	offset--;       offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_14(int a, int *array, int offset) {
	offset--;       offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_14(int a, int *array, int offset) {
	offset--;       offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_15(int a, int *array, int offset) {
	offset--;       offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_15(int a, int *array, int offset) {
	offset--;       offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_16(int a, int *array, int offset) {
	offset--;       offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_16(int a, int *array, int offset) {
	offset--;       offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_17(int a, int *array, int offset) {
	offset--;       offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_17(int a, int *array, int offset) {
	offset--;       offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_18(int a, int *array, int offset) {
	offset--;       offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_18(int a, int *array, int offset) {
	offset--;       offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_19(int a, int *array, int offset) {
	offset--;       offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_19(int a, int *array, int offset) {
	offset--;       offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_20(int a, int *array, int offset) {
	offset--;       offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_20(int a, int *array, int offset) {
	offset--;       offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_21(int a, int *array, int offset) {
	offset--;       offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_21(int a, int *array, int offset) {
	offset--;       offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_22(int a, int *array, int offset) {
	offset--;       offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_22(int a, int *array, int offset) {
	offset--;       offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_23(int a, int *array, int offset) {
	offset--;       offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_23(int a, int *array, int offset) {
	offset--;       offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_24(int a, int *array, int offset) {
	offset--;       offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_24(int a, int *array, int offset) {
	offset--;       offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_25(int a, int *array, int offset) {
	offset--;       offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_25(int a, int *array, int offset) {
	offset--;       offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_26(int a, int *array, int offset) {
	offset--;       offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_26(int a, int *array, int offset) {
	offset--;       offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_27(int a, int *array, int offset) {
	offset--;       offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_27(int a, int *array, int offset) {
	offset--;       offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_28(int a, int *array, int offset) {
	offset--;       offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_28(int a, int *array, int offset) {
	offset--;       offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_29(int a, int *array, int offset) {
	offset--;       offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_29(int a, int *array, int offset) {
	offset--;       offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_30(int a, int *array, int offset) {
	offset--;       offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_30(int a, int *array, int offset) {
	offset--;       offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_31(int a, int *array, int offset) {
	offset--;       offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_31(int a, int *array, int offset) {
	offset--;       offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_32(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_32(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_33(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_33(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_34(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_34(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_35(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_35(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_36(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_36(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_37(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_37(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_38(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_38(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_39(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_39(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_40(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_40(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_41(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_41(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_42(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_42(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_43(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_43(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_44(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_44(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_45(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_45(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_46(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_46(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_47(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_47(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_48(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_48(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_49(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_49(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_50(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_50(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_51(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 1125899906842624 * (a > array[offset + 1125899906842624]);
	offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_51(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 1125899906842624 * (a >= array[offset + 1125899906842624]);
	offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_52(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 2251799813685248 * (a > array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a > array[offset + 1125899906842624]);
	offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_52(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 2251799813685248 * (a >= array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a >= array[offset + 1125899906842624]);
	offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_53(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 4503599627370496 * (a > array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a > array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a > array[offset + 1125899906842624]);
	offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_53(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 4503599627370496 * (a >= array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a >= array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a >= array[offset + 1125899906842624]);
	offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_54(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 9007199254740992 * (a > array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a > array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a > array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a > array[offset + 1125899906842624]);
	offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_54(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 9007199254740992 * (a >= array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a >= array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a >= array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a >= array[offset + 1125899906842624]);
	offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_55(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 18014398509481984 * (a > array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a > array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a > array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a > array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a > array[offset + 1125899906842624]);
	offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_55(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 18014398509481984 * (a >= array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a >= array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a >= array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a >= array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a >= array[offset + 1125899906842624]);
	offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_56(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 36028797018963968 * (a > array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a > array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a > array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a > array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a > array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a > array[offset + 1125899906842624]);
	offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_56(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 36028797018963968 * (a >= array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a >= array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a >= array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a >= array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a >= array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a >= array[offset + 1125899906842624]);
	offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_57(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 72057594037927936 * (a > array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a > array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a > array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a > array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a > array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a > array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a > array[offset + 1125899906842624]);
	offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_57(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 72057594037927936 * (a >= array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a >= array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a >= array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a >= array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a >= array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a >= array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a >= array[offset + 1125899906842624]);
	offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_58(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 144115188075855872 * (a > array[offset + 144115188075855872]);
	offset += 72057594037927936 * (a > array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a > array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a > array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a > array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a > array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a > array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a > array[offset + 1125899906842624]);
	offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_58(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 144115188075855872 * (a >= array[offset + 144115188075855872]);
	offset += 72057594037927936 * (a >= array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a >= array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a >= array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a >= array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a >= array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a >= array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a >= array[offset + 1125899906842624]);
	offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_59(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 288230376151711744 * (a > array[offset + 288230376151711744]);
	offset += 144115188075855872 * (a > array[offset + 144115188075855872]);
	offset += 72057594037927936 * (a > array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a > array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a > array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a > array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a > array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a > array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a > array[offset + 1125899906842624]);
	offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_59(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 288230376151711744 * (a >= array[offset + 288230376151711744]);
	offset += 144115188075855872 * (a >= array[offset + 144115188075855872]);
	offset += 72057594037927936 * (a >= array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a >= array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a >= array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a >= array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a >= array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a >= array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a >= array[offset + 1125899906842624]);
	offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_60(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 576460752303423488 * (a > array[offset + 576460752303423488]);
	offset += 288230376151711744 * (a > array[offset + 288230376151711744]);
	offset += 144115188075855872 * (a > array[offset + 144115188075855872]);
	offset += 72057594037927936 * (a > array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a > array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a > array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a > array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a > array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a > array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a > array[offset + 1125899906842624]);
	offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_60(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 576460752303423488 * (a >= array[offset + 576460752303423488]);
	offset += 288230376151711744 * (a >= array[offset + 288230376151711744]);
	offset += 144115188075855872 * (a >= array[offset + 144115188075855872]);
	offset += 72057594037927936 * (a >= array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a >= array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a >= array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a >= array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a >= array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a >= array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a >= array[offset + 1125899906842624]);
	offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_61(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 1152921504606846976 * (a > array[offset + 1152921504606846976]);
	offset += 576460752303423488 * (a > array[offset + 576460752303423488]);
	offset += 288230376151711744 * (a > array[offset + 288230376151711744]);
	offset += 144115188075855872 * (a > array[offset + 144115188075855872]);
	offset += 72057594037927936 * (a > array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a > array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a > array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a > array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a > array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a > array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a > array[offset + 1125899906842624]);
	offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_61(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 1152921504606846976 * (a >= array[offset + 1152921504606846976]);
	offset += 576460752303423488 * (a >= array[offset + 576460752303423488]);
	offset += 288230376151711744 * (a >= array[offset + 288230376151711744]);
	offset += 144115188075855872 * (a >= array[offset + 144115188075855872]);
	offset += 72057594037927936 * (a >= array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a >= array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a >= array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a >= array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a >= array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a >= array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a >= array[offset + 1125899906842624]);
	offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_62(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 2305843009213693952 * (a > array[offset + 2305843009213693952]);
	offset += 1152921504606846976 * (a > array[offset + 1152921504606846976]);
	offset += 576460752303423488 * (a > array[offset + 576460752303423488]);
	offset += 288230376151711744 * (a > array[offset + 288230376151711744]);
	offset += 144115188075855872 * (a > array[offset + 144115188075855872]);
	offset += 72057594037927936 * (a > array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a > array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a > array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a > array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a > array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a > array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a > array[offset + 1125899906842624]);
	offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_62(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 2305843009213693952 * (a >= array[offset + 2305843009213693952]);
	offset += 1152921504606846976 * (a >= array[offset + 1152921504606846976]);
	offset += 576460752303423488 * (a >= array[offset + 576460752303423488]);
	offset += 288230376151711744 * (a >= array[offset + 288230376151711744]);
	offset += 144115188075855872 * (a >= array[offset + 144115188075855872]);
	offset += 72057594037927936 * (a >= array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a >= array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a >= array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a >= array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a >= array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a >= array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a >= array[offset + 1125899906842624]);
	offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert0_63(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 4611686018427387904 * (a > array[offset + 4611686018427387904]);
	offset += 2305843009213693952 * (a > array[offset + 2305843009213693952]);
	offset += 1152921504606846976 * (a > array[offset + 1152921504606846976]);
	offset += 576460752303423488 * (a > array[offset + 576460752303423488]);
	offset += 288230376151711744 * (a > array[offset + 288230376151711744]);
	offset += 144115188075855872 * (a > array[offset + 144115188075855872]);
	offset += 72057594037927936 * (a > array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a > array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a > array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a > array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a > array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a > array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a > array[offset + 1125899906842624]);
	offset += 562949953421312 * (a > array[offset + 562949953421312]);
	offset += 281474976710656 * (a > array[offset + 281474976710656]);
	offset += 140737488355328 * (a > array[offset + 140737488355328]);
	offset += 70368744177664 * (a > array[offset + 70368744177664]);
	offset += 35184372088832 * (a > array[offset + 35184372088832]);
	offset += 17592186044416 * (a > array[offset + 17592186044416]);
	offset += 8796093022208 * (a > array[offset + 8796093022208]);
	offset += 4398046511104 * (a > array[offset + 4398046511104]);
	offset += 2199023255552 * (a > array[offset + 2199023255552]);
	offset += 1099511627776 * (a > array[offset + 1099511627776]);
	offset += 549755813888 * (a > array[offset + 549755813888]);
	offset += 274877906944 * (a > array[offset + 274877906944]);
	offset += 137438953472 * (a > array[offset + 137438953472]);
	offset += 68719476736 * (a > array[offset + 68719476736]);
	offset += 34359738368 * (a > array[offset + 34359738368]);
	offset += 17179869184 * (a > array[offset + 17179869184]);
	offset += 8589934592 * (a > array[offset + 8589934592]);
	offset += 4294967296 * (a > array[offset + 4294967296]);
	offset += 2147483648 * (a > array[offset + 2147483648]);
	offset += 1073741824 * (a > array[offset + 1073741824]);
	offset += 536870912 * (a > array[offset + 536870912]);
	offset += 268435456 * (a > array[offset + 268435456]);
	offset += 134217728 * (a > array[offset + 134217728]);
	offset += 67108864 * (a > array[offset + 67108864]);
	offset += 33554432 * (a > array[offset + 33554432]);
	offset += 16777216 * (a > array[offset + 16777216]);
	offset += 8388608 * (a > array[offset + 8388608]);
	offset += 4194304 * (a > array[offset + 4194304]);
	offset += 2097152 * (a > array[offset + 2097152]);
	offset += 1048576 * (a > array[offset + 1048576]);
	offset += 524288 * (a > array[offset + 524288]);
	offset += 262144 * (a > array[offset + 262144]);
	offset += 131072 * (a > array[offset + 131072]);
	offset += 65536 * (a > array[offset + 65536]);
	offset += 32768 * (a > array[offset + 32768]);
	offset += 16384 * (a > array[offset + 16384]);
	offset += 8192 * (a > array[offset + 8192]);
	offset += 4096 * (a > array[offset + 4096]);
	offset += 2048 * (a > array[offset + 2048]);
	offset += 1024 * (a > array[offset + 1024]);
	offset += 512 * (a > array[offset + 512]);
	offset += 256 * (a > array[offset + 256]);
	offset += 128 * (a > array[offset + 128]);
	offset += 64 * (a > array[offset + 64]);
	offset += 32 * (a > array[offset + 32]);
	offset += 16 * (a > array[offset + 16]);
	offset += 8 * (a > array[offset + 8]);
	offset += 4 * (a > array[offset + 4]);
	offset += 2 * (a > array[offset + 2]);
	offset += 1 * (a > array[offset + 1]);
	offset++;
	return offset;
}


__device__ __host__ unsigned int insert1_63(int a, int *array, unsigned long long int offset) {
	offset--;       offset += 4611686018427387904 * (a >= array[offset + 4611686018427387904]);
	offset += 2305843009213693952 * (a >= array[offset + 2305843009213693952]);
	offset += 1152921504606846976 * (a >= array[offset + 1152921504606846976]);
	offset += 576460752303423488 * (a >= array[offset + 576460752303423488]);
	offset += 288230376151711744 * (a >= array[offset + 288230376151711744]);
	offset += 144115188075855872 * (a >= array[offset + 144115188075855872]);
	offset += 72057594037927936 * (a >= array[offset + 72057594037927936]);
	offset += 36028797018963968 * (a >= array[offset + 36028797018963968]);
	offset += 18014398509481984 * (a >= array[offset + 18014398509481984]);
	offset += 9007199254740992 * (a >= array[offset + 9007199254740992]);
	offset += 4503599627370496 * (a >= array[offset + 4503599627370496]);
	offset += 2251799813685248 * (a >= array[offset + 2251799813685248]);
	offset += 1125899906842624 * (a >= array[offset + 1125899906842624]);
	offset += 562949953421312 * (a >= array[offset + 562949953421312]);
	offset += 281474976710656 * (a >= array[offset + 281474976710656]);
	offset += 140737488355328 * (a >= array[offset + 140737488355328]);
	offset += 70368744177664 * (a >= array[offset + 70368744177664]);
	offset += 35184372088832 * (a >= array[offset + 35184372088832]);
	offset += 17592186044416 * (a >= array[offset + 17592186044416]);
	offset += 8796093022208 * (a >= array[offset + 8796093022208]);
	offset += 4398046511104 * (a >= array[offset + 4398046511104]);
	offset += 2199023255552 * (a >= array[offset + 2199023255552]);
	offset += 1099511627776 * (a >= array[offset + 1099511627776]);
	offset += 549755813888 * (a >= array[offset + 549755813888]);
	offset += 274877906944 * (a >= array[offset + 274877906944]);
	offset += 137438953472 * (a >= array[offset + 137438953472]);
	offset += 68719476736 * (a >= array[offset + 68719476736]);
	offset += 34359738368 * (a >= array[offset + 34359738368]);
	offset += 17179869184 * (a >= array[offset + 17179869184]);
	offset += 8589934592 * (a >= array[offset + 8589934592]);
	offset += 4294967296 * (a >= array[offset + 4294967296]);
	offset += 2147483648 * (a >= array[offset + 2147483648]);
	offset += 1073741824 * (a >= array[offset + 1073741824]);
	offset += 536870912 * (a >= array[offset + 536870912]);
	offset += 268435456 * (a >= array[offset + 268435456]);
	offset += 134217728 * (a >= array[offset + 134217728]);
	offset += 67108864 * (a >= array[offset + 67108864]);
	offset += 33554432 * (a >= array[offset + 33554432]);
	offset += 16777216 * (a >= array[offset + 16777216]);
	offset += 8388608 * (a >= array[offset + 8388608]);
	offset += 4194304 * (a >= array[offset + 4194304]);
	offset += 2097152 * (a >= array[offset + 2097152]);
	offset += 1048576 * (a >= array[offset + 1048576]);
	offset += 524288 * (a >= array[offset + 524288]);
	offset += 262144 * (a >= array[offset + 262144]);
	offset += 131072 * (a >= array[offset + 131072]);
	offset += 65536 * (a >= array[offset + 65536]);
	offset += 32768 * (a >= array[offset + 32768]);
	offset += 16384 * (a >= array[offset + 16384]);
	offset += 8192 * (a >= array[offset + 8192]);
	offset += 4096 * (a >= array[offset + 4096]);
	offset += 2048 * (a >= array[offset + 2048]);
	offset += 1024 * (a >= array[offset + 1024]);
	offset += 512 * (a >= array[offset + 512]);
	offset += 256 * (a >= array[offset + 256]);
	offset += 128 * (a >= array[offset + 128]);
	offset += 64 * (a >= array[offset + 64]);
	offset += 32 * (a >= array[offset + 32]);
	offset += 16 * (a >= array[offset + 16]);
	offset += 8 * (a >= array[offset + 8]);
	offset += 4 * (a >= array[offset + 4]);
	offset += 2 * (a >= array[offset + 2]);
	offset += 1 * (a >= array[offset + 1]);
	offset++;
	return offset;
}


