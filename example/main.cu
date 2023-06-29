
/* INCLUDES */

// Own
#include "field_element_cuda.cuh" // struct Field_Element

// Nvcc
#include <cuda_runtime.h>
#include <iostream>
#include <stdio.h>

__global__ void test_field_element() {

    // Field Elements creation
    printf("Hello, World! From GPU\n");

}

int main() {

    // Tests about field element
    test_field_element<<< 1, 1 >>>();

    // Synchronize cuda threads
    cudaDeviceSynchronize();

}