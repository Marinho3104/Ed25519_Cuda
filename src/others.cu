

#include "others.cuh"
#include <stdarg.h>


__device__ void ed25519::cuda::sha512_multiple_args( sha512::cuda::Sha512_Context* __ctx, uint32_t __max_size, uint32_t __count, ... ) {

    va_list _args; va_start( _args, __count );

    void* _message; cudaMalloc( &_message, __max_size );
    uint32_t _current_arg_size; void* _current_arg;

    while ( __count -- ) {

        _current_arg_size = va_arg( _args, uint32_t );
        _current_arg = va_arg( _args, void* );

        memcpy( _message, _current_arg, _current_arg_size );

        _message = _message + _current_arg_size; 

    }

    _message = _message - __max_size; 

    // for ( uint64_t _ = 0; _ < __max_size; _ ++ ) {

    //     printf( "%02x", _message + _ );

    // } printf( "\n" );

    sha512::cuda::Sha512_hash( __ctx, _message, __max_size );

}
