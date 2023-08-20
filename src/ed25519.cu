

#include "pre_computed_values.cuh"
#include "field_element.cuh"
#include "group_element.cuh"
#include "ed25519.cuh"
#include "others.cuh"
#include "sha512.cuh"

#include <stdio.h>


__device__ void ed25519::cuda::generate_key_pair( void* __private_key, void* __public_key ) {

    sha512::cuda::Sha512_Context _ctx; sha512::cuda::Sha512_init( &_ctx );

    sha512::cuda::Sha512_hash( &_ctx, __private_key, 32 ); sha512::cuda::Sha512_free( &_ctx );

    unsigned char* _seed = _ctx.hash;

    // Clear the lowest 3 bits of the first octet
    _seed[ 0 ] &= 0xf8;

    // Clear the highest bit of the last octet
    _seed[ 31 ] &= 0x3f;

    // Set the second highest bit of the last octet
    _seed[ 31 ] |= 0x40;

    group_element_ec _base_point_ec; set_extended_coordinates( &_base_point_ec, base_point );
    field_element _scalar; memcpy( _scalar, _seed, 32 );

    group_element_ec _result; scalar_multiplication( &_result, _base_point_ec, _scalar );

    encode( __public_key, _result );

}

__device__ void ed25519::cuda::sign( void* __private_key, void* __message, uint64_t __message_size, void* __signature ) {

    sha512::cuda::Sha512_Context* _ctx; cudaMalloc( &_ctx, sizeof( sha512::cuda::Sha512_Context ) );
    group_element_ec* _base_point_ec; cudaMalloc( &_base_point_ec, sizeof( group_element_ec ) );

    field_element* _s, *_r, *_k, *_S; 
    cudaMalloc( &_s, sizeof( field_element ) ); zeralise( *_s );
    cudaMalloc( &_r, sizeof( field_element ) ); zeralise( *_r );
    cudaMalloc( &_k, sizeof( field_element ) ); zeralise( *_k );
    cudaMalloc( &_S, sizeof( field_element ) ); zeralise( *_S );

    unsigned char* _public_key_A; cudaMalloc( &_public_key_A, 32 );
    unsigned char* _prefix; cudaMalloc( &_prefix, 32 );
    unsigned char* _R; cudaMalloc( &_R, 32 );


    // Hash private key
    sha512::cuda::Sha512_init( _ctx ); sha512::cuda::Sha512_hash( _ctx, __private_key, 32 ); sha512::cuda::Sha512_free( _ctx );

    // Generate public key 
    set_extended_coordinates( _base_point_ec, base_point );
    memcpy( *_s, _ctx->hash, 32 ); ( ( unsigned char* ) *_s )[ 0 ] &= 0xf8; ( ( unsigned char* ) *_s )[ 31 ] &= 0x3f; ( ( unsigned char* ) *_s )[ 31 ] |= 0x40; 
    group_element_ec _pk_A_ec { { 0 }, { 0 }, { 0 }, { 0 } }; scalar_multiplication( &_pk_A_ec, *_base_point_ec, *_s ); encode( _public_key_A, _pk_A_ec );

    // printf( "Public key A: ");
    // for ( int _ = 0; _ < 32; _++ ) printf("%02x", _public_key_A[ _ ] ); printf("\n");

    // set prefix
    memcpy( _prefix, _ctx->hash + 32, 32 );

    // printf( "Prefix: ");
    // for ( int _ = 0; _ < 32; _++ ) printf("%02x", _prefix[ _ ] ); printf("\n");

    // printf( "s: " ); print( *_s );

    // Hash prefix || message
    sha512::cuda::Sha512_init( _ctx ); 
    sha512_multiple_args( _ctx, 32 + __message_size, 2, 32, _prefix, __message_size, __message ); sha512::cuda::Sha512_free( _ctx );

    // r
    memcpy( *_r, _ctx->hash, 64 );

    // printf( "r: " ); print( *_r );

    // Scalar multiplication r [ B ]
    set_extended_coordinates( _base_point_ec, base_point ); modular_l( *_r );
    group_element_ec _r_B { { 0 }, { 0 }, { 0 }, { 0 } }; scalar_multiplication( &_r_B, *_base_point_ec, *_r );

    // R
    encode( _R, _r_B );

    // printf( "R: ");
    // for ( int _ = 0; _ < 32; _++ ) printf("%02x", _R[ _ ] ); printf("\n");

    // Hash R || A || message
    sha512::cuda::Sha512_init( _ctx );
    sha512_multiple_args( _ctx, 32 + 32 + __message_size, 3, 32, _R, 32, _public_key_A, __message_size, __message ); sha512::cuda::Sha512_free( _ctx );

    // k
    memcpy( *_k, _ctx->hash, 64 );

    // Compute s
    modular_l( *_k ); multiplication_mod_l( *_S, *_k, *_s ); addition( *_S, *_r ); modular_l( *_S );  

    // printf( "k: " ); print( *_k );
    // printf( "S: " ); print( *_S );

    memcpy( __signature, _R, 32 ); memcpy( __signature + 32, _S, 32 );

    cudaFree( _ctx ); cudaFree( _base_point_ec );

    cudaFree( _s ); cudaFree( _r );
    cudaFree( _k ); cudaFree( _S );

    cudaFree( _public_key_A ); cudaFree( _prefix );
    cudaFree( _R ); 

}

__device__ bool ed25519::cuda::verify( void* __public_key, void* __signature, void* __message, uint64_t __message_size ) {

    group_element_ec _base_point_ec { { 0 }, { 0 }, { 0 }, { 0 } };
    sha512::cuda::Sha512_Context _ctx;

    set_extended_coordinates( &_base_point_ec, base_point );

    group_element_ec _R { { 0 }, { 0 }, { 0 }, { 0 } }, _A { { 0 }, { 0 }, { 0 }, { 0 } }, _sB { { 0 }, { 0 }, { 0 }, { 0 } }, _hA { { 0 }, { 0 }, { 0 }, { 0 } }, _R_hA { { 0 }, { 0 }, { 0 }, { 0 } };
    field_element _S { 0 }, _k { 0 };

    decode( &_R, __signature ); decode( &_A, __public_key );

    memcpy( _S, __signature + 32, 32 );

    if (
        is_zero( _R.X ) ||
        is_zero( _A.X ) ||
        greather_or_equal_to( _S, l )
    ) return 0;

    sha512::cuda::Sha512_init( &_ctx ); sha512_multiple_args( &_ctx, 32 + 32 + __message_size, 3, 32, __signature, 32, __public_key, __message_size, __message ); sha512::cuda::Sha512_free( &_ctx );

    memcpy( _k, _ctx.hash, 64 ); modular_l( _k );

    scalar_multiplication( &_sB, _base_point_ec, _S ); scalar_multiplication( &_hA, _A, _k );

    point_addition( &_R_hA, _R, _hA );

    return point_equal( _sB, _R_hA );

}


