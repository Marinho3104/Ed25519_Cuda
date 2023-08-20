

#ifndef SRC_OTHERS_CUH
#define SRC_oTHERS_CUH


#include "sha512.cuh"

#include <cstdint>

namespace ed25519::cuda {

    // Generates sha512 hash 
    __device__ void sha512_multiple_args( sha512::cuda::Sha512_Context*, uint32_t, uint32_t, ... );

}


#endif