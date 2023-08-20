
/* INCLUDES */

#include "pre_computed_values.cuh" 
#include "field_element.cuh"
#include "ed25519.cuh"
#include "sha512.cuh"

// Nvcc
#include <cuda_runtime.h>
#include <iostream>
#include <stdio.h>

__global__ void test_operations() {

    unsigned char _private_key[ 32 ] { 0, 1, 2, 3, 4, 5 };
    unsigned char _public_key[ 32 ];

    printf( "Private key: \n");
    for ( int _ = 0; _ < 32; _++ ) printf("%02x", _private_key[ _ ] ); printf("\n");

    ed25519::cuda::generate_key_pair( _private_key, _public_key );

    printf( "Public key: \n");
    for ( int _ = 0; _ < 32; _++ ) printf("%02x", _public_key[ _ ] ); printf("\n");

    printf("-------------------------\n");

    unsigned char _text[] = "afghkdfbfbfbrgbertbtbbegnwvlwrvnelrvnwrvjrv5ougbneuioneuog3ungnu5uh33g389h8935g3v3j59vn23vn93un93n935n34nvun93n93nvu3nu93nu9v3nnv93vnuv3nuv3nuvnu3vun3g3rgjrjir32jr23838rv83rg8903v3rng0r3n8gn380rgnr3gn0r3g0jn3rgn03rn80g3v38n0v30n8v305n8g8jng3nv8n38nj0v308vb083v8n3vn083n80v30n8v30n8v3n08vn038n08afghkdfbfbfbrgbertbtbbegnwvlwrvnelrvnwrvjrv5ougbneuioneuog3ungnu5uh33g389h8935g3v3j59vn23vn93un93n935n34nvun93n93nvu3nu93nu9v3nnv93vnuv3nuv3nuvnu3vun3g3rgjrjir32jr23838rv83rg8903v3rng0r3n8gn380rgnr3gn0r3g0jn3rgn03rn80g3v38n0v30n8v305n8g8jng3nv8n38nj0v308vb083v8n3vn083n80v30n8v30n8v3n08vn038n08afghkdfbfbfbrgbertbtbbegnwvlwrvnelrvnwrvjrv5ougbneuioneuog3ungnu5uh33g389h8935g3v3j59vn23vn93un93n935n34nvun93n93nvu3nu93nu9v3nnv93vnuv3nuv3nuvnu3vun3g3rgjrjir32jr23838rv83rg8903v3rng0r3n8gn380rgnr3gn0r3g0jn3rgn03rn80g3v38n0v30n8v305n8g8jng3nv8n38nj0v308vb083v8n3vn083n80v30n8v30n8v3n08vn038n08";

    unsigned char _signaure[ 64 ];

    ed25519::cuda::sign( _private_key, _text, 882, _signaure );

    printf( "Signature: " );
    for ( int _ = 0; _ < 64; _++ ) printf("%02x", _signaure[ _ ] ); printf("\n");

    printf( "Verification: %d\n", ed25519::cuda::verify( _public_key, _signaure, _text, 882 ) );

}

int main() {

    // Run
    test_operations <<< 1, 1 >>>();

    cudaDeviceSynchronize();

}