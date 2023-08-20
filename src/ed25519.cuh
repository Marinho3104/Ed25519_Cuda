

#ifndef SRC_ED25519_CUH
#define SRC_ED25519_CUH

/** INCLUDES **/

#include <cstdint>


namespace ed25519::cuda {

    // Generates a key pair
    __device__ void generate_key_pair( void*, void* );

    // Signs a message 
    __device__ void sign( void*, void*, uint64_t, void* );

    // Verfies a signature 
    __device__ bool verify( void*, void*, void*, uint64_t );

}

#endif
