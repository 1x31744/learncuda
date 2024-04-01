#include<stdio.h>
#include<stdlib.h>

__global__ void print_from_gpu(void) {
    printf("hello friends, from thread [%d, %d] \ From device \n", threadIdx.x,blockIdx.x);
}

int main(void) {
    printf("hello friends this is the host!\n");
    print_from_gpu<<<1,1>>>();
    cudaDeviceSynchronize();
    return 0;
}