

#ifndef SRC_FIELD_ELEMENT_CUH
#define SRC_FIELD_ELEMENT_CUH

/** INCLUDES **/

#include <cstdint>


namespace ed25519::cuda {

    // Field Element
    typedef uint32_t field_element[ 17 ];

    /** OTHERS **/

    __device__ void copy( field_element, field_element );

    __device__ void zeralise( field_element ); __device__ void negative( field_element );
    
    // Montgomery computations

    // Converts a number into montgomery form or from montgomery form to normal
    __device__ void montgomery_convert_in( field_element ); __device__ void montgomery_convert_out( field_element ); 

    /** OPERATIONS **/

    __device__ void addition( field_element, field_element, field_element ); __device__ void subtraction( field_element, field_element, field_element );
    __device__ void addition( field_element, field_element ); __device__ void subtraction( field_element, field_element );

    __device__ void addition_mod( field_element, field_element, field_element ); __device__ void subtraction_mod( field_element, field_element, field_element );
    __device__ void addition_mod( field_element, field_element ); __device__ void subtraction_mod( field_element, field_element );

    __device__ void multiplication( field_element, field_element, field_element ); __device__ void multiplication( field_element, field_element );
    __device__ void pow_mod( field_element, field_element, field_element ); __device__ void pow_mod( field_element, field_element );

    __device__ void modular( field_element, field_element ); __device__ void modular( field_element );
    __device__ void modular_l( field_element, field_element ); __device__ void modular_l( field_element );

    __device__ void multiplication_mod( field_element, field_element, field_element ); __device__ void multiplication_mod_l( field_element, field_element, field_element ); 

    __device__ void inverse( field_element, field_element ); __device__ void inverse( field_element );

    __device__ void left_shift( field_element, field_element, uint16_t ); __device__ void right_shift( field_element, field_element, uint16_t ); 
    __device__ void left_shift( field_element, uint16_t ); __device__ void right_shift( field_element, uint16_t ); 
    
    /** COMP **/

    __device__ bool greather_than( field_element, field_element ); __device__ bool less_than( field_element, field_element ); 

    __device__ bool greather_or_equal_to( field_element, field_element ); __device__ bool less_or_equal_to( field_element, field_element ); 

    __device__ bool equal_to( field_element, field_element ); __device__ bool not_equal_to( field_element, field_element );

    __device__ bool is_zero( field_element ); __device__ bool is_not_zero( field_element ); 

    /** DEBUGGING ONLY **/

    __device__ void print( field_element ); __device__ void print_integers( field_element ); __device__ void set_hex( field_element, char* );

}

#endif