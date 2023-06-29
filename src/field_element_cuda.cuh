/*  Represents the field element and its basic arithmetric 
*   
*   Holds a total of 64 bytes or 512 bits 
*   
*   
*/

#ifndef SRC_FIELD_ELEMENT_CUDA_CUH
#define SRC_FIELD_ELEMENT_CUDA_CUH

/*******DEFINITIONS*******/
// Holds the number of bits of a field element
#define SRC_FIELD_ELEMENT_CUDA_FIELD_ELEMENT_BITS_LENGTH 512 
// Holds half of the number of bits of a field element ( Not used )
#define SRC_FIELD_ELEMENT_CUDA_FIELD_ELEMENT_BITS_LENGTH_HALF \
    ( SRC_FIELD_ELEMENT_CUDA_FIELD_ELEMENT_BITS_LENGTH / 2 )


/* Includes */

// Nvcc 
#include <cstdint> // uint64_t

namespace ed25519::cuda {

    // Struct of field element 512 bits
    // Represents data in little ( meaning that the lowest bit is the most significant bit )
    struct Field_Element {

        // Field Element data
        uint64_t 
            data[ SRC_FIELD_ELEMENT_CUDA_FIELD_ELEMENT_BITS_LENGTH ]; 

        

    };

}

#endif