insert.cu是根据以下的函数生成的







//__device__ __host__ int insert0(int a, int *array, int offset, int lg2) {
//	int shift;
//	while (lg2 > 0) {
//		lg2--;
//		shift = (1 << lg2);
//		if (a > array[offset + shift]) {
//			offset += shift;
//		}
//	}
//	return offset;
//}

void pi0(unsigned long long int lg2) {
	
	if(lg2<32)printf("__device__ __host__ int insert0_%d(int a, int *array, int offset) {\n", lg2);
	else printf("__device__ __host__ int insert0_%d(int a, int *array,unsigned long long int offset) {\n", lg2);
	unsigned long long int shift;
	while (lg2>0)
	{
		lg2--;
		unsigned long long int k = 1;
		shift = (k << lg2);
		printf("	offset += %llu *(a > array[offset + %llu]);\n",shift,shift);

	}
	printf("	offset++;\n");
	printf("	return offset;\n");
	printf("}\n\n\n");
}

void pi_0h(unsigned long long int lg2) {

	if (lg2 < 32)printf("__device__ __host__ int insert0_%d(int a, int *array, int offset);\n", lg2);
	else printf("__device__ __host__ int insert0_%d(int a, int *array,unsigned long long int offset); \n", lg2);
	printf("\n\n\n");
}

void pi_1h(unsigned long long int lg2) {
	if (lg2 < 32)printf("__device__ __host__ int insert1_%d(int a, int *array, int offset);\n", lg2);
	else printf("__device__ __host__ int insert1_%d(int a, int *array,unsigned long long int offset); \n", lg2);
	printf("\n\n\n");
}


void pi1(unsigned long long int lg2) {

	if (lg2<32)printf("__device__ __host__ int insert1_%d(int a, int *array, int offset) {\n", lg2);
	else printf("__device__ __host__ int insert1_%d(int a, int *array,unsigned long long int offset) {\n", lg2);
	unsigned long long int shift;
	while (lg2>0)
	{
		lg2--;
		unsigned long long int k = 1;
		shift = (k << lg2);
		printf("	offset += %llu *(a >= array[offset + %llu]);\n", shift, shift);

	}
	printf("	offset++;\n");
	printf("	return offset;\n");
	printf("}\n\n\n");
}

__device__ __host__ int insert0(int a, int *array, int offset, int lg2) {
	int shift;
	while (lg2 > 0) {
		lg2--;
		shift = (1 << lg2);
		offset += shift *(a > array[offset + shift]);
	}
	offset++;
	return offset;
}

__device__ __host__ int insert1(int a, int *array, int offset, int lg2) {
	int shift;
	while (lg2 > 0) {
		lg2--;
		shift = (1 << lg2);
		if (a >= array[offset + shift]) {
			offset += shift;
		}
	}
	offset++;
	return offset;
}

//__device__ __host__ int insert0_4(int a, int *array, int offset) {
//	offset += 8 * (a > array[offset + 8]);
//	offset += 4 * (a > array[offset + 4]);
//	offset += 2 * (a > array[offset + 2]);
//	offset += 1 * (a > array[offset + 1]);
//	offset++;
//	return offset;
//}
