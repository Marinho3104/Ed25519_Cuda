

#ifndef SRC_PRE_COMPUTED_VALUES_CUH
#define SRC_PRE_COMPUTED_VALUES_CUH

#include "group_element.cuh"

#include <cstdint>

namespace ed25519::cuda {

    // Field Element
    typedef uint32_t field_element[ 17 ];

    /** ED25519 **/

    // Prime value
    extern __device__ field_element prime;

    // d value
    extern __device__ field_element d;

    // l value
    extern __device__ field_element l;

    // Base point
    extern __device__ group_element_nc base_point;


    /** OTHERS **/

    // Eulers exponential for inverse ϕ( prime ) - 1
    extern __device__ field_element prime_euler_exponencial;

    /** BARRET **/

    // shift
    extern __device__ uint16_t shift_count;

    // Factor
    extern __device__ field_element factor;

}

#endif