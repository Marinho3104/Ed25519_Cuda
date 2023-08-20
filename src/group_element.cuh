

#ifndef SRC_GROUP_ELEMENT_CUH 
#define SRC_GROUP_ELEMENT_CUH 

/** INCLUDES **/

#include <cstdint>

namespace ed25519::cuda {

    // Field Element
    typedef uint32_t field_element[ 17 ];

    // Normal coordinates
    typedef struct {

        field_element x;
        field_element y;

    } group_element_nc;

    // Extended coordinates
    typedef struct {

        field_element X;
        field_element Y;
        field_element Z;
        field_element T;

    } group_element_ec;


    // Given normal coordinates it converts it into extended coordinates
    __device__ void set_extended_coordinates( group_element_ec*, group_element_nc );

    // Given extended coordinates it converts it into normal coordinates
    __device__ void set_normal_coordinates( group_element_nc*, group_element_ec );

    // Sets the neutral point
    __device__ void set_neutral_point( group_element_ec* );


    // Performs a point addition
    __device__ void point_addition( group_element_ec*, group_element_ec, group_element_ec );

    // Performs a scalar multiplication
    __device__ void scalar_multiplication( group_element_ec*, group_element_ec, field_element );

    // Checks if 2 poin are equal
    __device__ bool point_equal( group_element_ec, group_element_ec );

    // Encodes a point given the extended coordinates
    __device__ void encode( void*, group_element_ec );

    // Decodes a point
    __device__ void decode( group_element_ec*, void* );

    // x coordinate recover
    __device__ void recover_x_coordinate( void*, field_element, bool );

}

#endif
