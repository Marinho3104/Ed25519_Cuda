

/** INCLUDES **/

#include "pre_computed_values.cuh"
#include "field_element.cuh"

#include <stdio.h>




__device__ void ed25519::cuda::copy( field_element __r, field_element __f ) {

    uint32_t _f0 = __f[ 0 ];
    uint32_t _f1 = __f[ 1 ];
    uint32_t _f2 = __f[ 2 ];
    uint32_t _f3 = __f[ 3 ];
    uint32_t _f4 = __f[ 4 ];
    uint32_t _f5 = __f[ 5 ];
    uint32_t _f6 = __f[ 6 ];
    uint32_t _f7 = __f[ 7 ];
    uint32_t _f8 = __f[ 8 ];
    uint32_t _f9 = __f[ 9 ];
    uint32_t _f10 = __f[ 10 ];
    uint32_t _f11 = __f[ 11 ];
    uint32_t _f12 = __f[ 12 ];
    uint32_t _f13 = __f[ 13 ];
    uint32_t _f14 = __f[ 14 ];
    uint32_t _f15 = __f[ 15 ];
    uint32_t _f16 = __f[ 16 ];

    __r[ 0 ] = _f0;
    __r[ 1 ] = _f1;
    __r[ 2 ] = _f2;
    __r[ 3 ] = _f3;
    __r[ 4 ] = _f4;
    __r[ 5 ] = _f5;
    __r[ 6 ] = _f6;
    __r[ 7 ] = _f7;
    __r[ 8 ] = _f8;
    __r[ 9 ] = _f9;
    __r[ 10 ] = _f10;
    __r[ 11 ] = _f11;
    __r[ 12 ] = _f12;
    __r[ 13 ] = _f13;
    __r[ 14 ] = _f14;
    __r[ 15 ] = _f15;
    __r[ 16 ] = _f16;

}

__device__ void ed25519::cuda::zeralise( field_element __r ) {

    __r[ 0 ] = 0;
    __r[ 1 ] = 0;
    __r[ 2 ] = 0;
    __r[ 3 ] = 0;
    __r[ 4 ] = 0;
    __r[ 5 ] = 0;
    __r[ 6 ] = 0;
    __r[ 7 ] = 0;
    __r[ 8 ] = 0;
    __r[ 9 ] = 0;
    __r[ 10 ] = 0;
    __r[ 11 ] = 0;
    __r[ 12 ] = 0;
    __r[ 13 ] = 0;
    __r[ 14 ] = 0;
    __r[ 15 ] = 0;
    __r[ 16 ] = 0;

}

__device__ void ed25519::cuda::negative( field_element __f ) { subtraction( __f, prime, __f ); }


__device__ void ed25519::cuda::addition( field_element __r, field_element __f, field_element __s ) {

    uint64_t _f0 = __f[ 0 ];
    uint64_t _f1 = __f[ 1 ];
    uint64_t _f2 = __f[ 2 ];
    uint64_t _f3 = __f[ 3 ];
    uint64_t _f4 = __f[ 4 ];
    uint64_t _f5 = __f[ 5 ];
    uint64_t _f6 = __f[ 6 ];
    uint64_t _f7 = __f[ 7 ];
    uint64_t _f8 = __f[ 8 ];
    uint64_t _f9 = __f[ 9 ];
    uint64_t _f10 = __f[ 10 ];
    uint64_t _f11 = __f[ 11 ];
    uint64_t _f12 = __f[ 12 ];
    uint64_t _f13 = __f[ 13 ];
    uint64_t _f14 = __f[ 14 ];
    uint64_t _f15 = __f[ 15 ];
    uint64_t _f16 = __f[ 16 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];
    uint32_t _s16 = __s[ 16 ];

    uint64_t _r0 = _f0 + _s0;
    uint64_t _r1 = _f1 + _s1 + ( _r0 >> 32 ); 
    uint64_t _r2 = _f2 + _s2 + ( _r1 >> 32 ); 
    uint64_t _r3 = _f3 + _s3 + ( _r2 >> 32 ); 
    uint64_t _r4 = _f4 + _s4 + ( _r3 >> 32 ); 
    uint64_t _r5 = _f5 + _s5 + ( _r4 >> 32 ); 
    uint64_t _r6 = _f6 + _s6 + ( _r5 >> 32 );
    uint64_t _r7 = _f7 + _s7 + ( _r6 >> 32 ); 
    uint64_t _r8 = _f8 + _s8 + ( _r7 >> 32 );
    uint64_t _r9 = _f9 + _s9 + ( _r8 >> 32 );
    uint64_t _r10 = _f10 + _s10 + ( _r9 >> 32 );
    uint64_t _r11 = _f11 + _s11 + ( _r10 >> 32 );
    uint64_t _r12 = _f12 + _s12 + ( _r11 >> 32 );
    uint64_t _r13 = _f13 + _s13 + ( _r12 >> 32 );
    uint64_t _r14 = _f14 + _s14 + ( _r13 >> 32 );
    uint64_t _r15 = _f15 + _s15 + ( _r14 >> 32 );
    uint64_t _r16 = _f16 + _s16 + ( _r15 >> 32 );

    __r[ 0 ] = _r0;
    __r[ 1 ] = _r1;
    __r[ 2 ] = _r2;
    __r[ 3 ] = _r3;
    __r[ 4 ] = _r4;
    __r[ 5 ] = _r5;
    __r[ 6 ] = _r6;
    __r[ 7 ] = _r7;
    __r[ 8 ] = _r8;
    __r[ 9 ] = _r9;
    __r[ 10 ] = _r10;
    __r[ 11 ] = _r11;
    __r[ 12 ] = _r12;
    __r[ 13 ] = _r13;
    __r[ 14 ] = _r14;
    __r[ 15 ] = _r15;
    __r[ 16 ] = _r16;

} 

__device__ void ed25519::cuda::subtraction( field_element __r, field_element __f, field_element __s ) {

    uint64_t _f0 = __f[ 0 ];
    uint64_t _f1 = __f[ 1 ];
    uint64_t _f2 = __f[ 2 ];
    uint64_t _f3 = __f[ 3 ];
    uint64_t _f4 = __f[ 4 ];
    uint64_t _f5 = __f[ 5 ];
    uint64_t _f6 = __f[ 6 ];
    uint64_t _f7 = __f[ 7 ];
    uint64_t _f8 = __f[ 8 ];
    uint64_t _f9 = __f[ 9 ];
    uint64_t _f10 = __f[ 10 ];
    uint64_t _f11 = __f[ 11 ];
    uint64_t _f12 = __f[ 12 ];
    uint64_t _f13 = __f[ 13 ];
    uint64_t _f14 = __f[ 14 ];
    uint64_t _f15 = __f[ 15 ];
    uint64_t _f16 = __f[ 16 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];
    uint32_t _s16 = __s[ 16 ];

    uint64_t _r0 = _f0 - _s0;
    uint64_t _r1 = _f1 - _s1 - ( _r0 >> 63 );
    uint64_t _r2 = _f2 - _s2 - ( _r1 >> 63 );
    uint64_t _r3 = _f3 - _s3 - ( _r2 >> 63 );
    uint64_t _r4 = _f4 - _s4 - ( _r3 >> 63 );
    uint64_t _r5 = _f5 - _s5 - ( _r4 >> 63 );
    uint64_t _r6 = _f6 - _s6 - ( _r5 >> 63 );
    uint64_t _r7 = _f7 - _s7 - ( _r6 >> 63 );
    uint64_t _r8 = _f8 - _s8 - ( _r7 >> 63 );
    uint64_t _r9 = _f9 - _s9 - ( _r8 >> 63 );
    uint64_t _r10 = _f10 - _s10 - ( _r9 >> 63 );
    uint64_t _r11 = _f11 - _s11 - ( _r10 >> 63 );
    uint64_t _r12 = _f12 - _s12 - ( _r11 >> 63 );
    uint64_t _r13 = _f13 - _s13 - ( _r12 >> 63 );
    uint64_t _r14 = _f14 - _s14 - ( _r13 >> 63 );
    uint64_t _r15 = _f15 - _s15 - ( _r14 >> 63 );
    uint64_t _r16 = _f16 - _s16 - ( _r15 >> 63 );

    __r[ 0 ] = _r0;
    __r[ 1 ] = _r1;
    __r[ 2 ] = _r2;
    __r[ 3 ] = _r3;
    __r[ 4 ] = _r4;
    __r[ 5 ] = _r5;
    __r[ 6 ] = _r6;
    __r[ 7 ] = _r7;
    __r[ 8 ] = _r8;
    __r[ 9 ] = _r9;
    __r[ 10 ] = _r10;
    __r[ 11 ] = _r11;
    __r[ 12 ] = _r12;
    __r[ 13 ] = _r13;
    __r[ 14 ] = _r14;
    __r[ 15 ] = _r15;
    __r[ 16 ] = _r16;

}

__device__ void ed25519::cuda::addition( field_element __f, field_element __s ) {

    uint64_t _f0 = __f[ 0 ];
    uint64_t _f1 = __f[ 1 ];
    uint64_t _f2 = __f[ 2 ];
    uint64_t _f3 = __f[ 3 ];
    uint64_t _f4 = __f[ 4 ];
    uint64_t _f5 = __f[ 5 ];
    uint64_t _f6 = __f[ 6 ];
    uint64_t _f7 = __f[ 7 ];
    uint64_t _f8 = __f[ 8 ];
    uint64_t _f9 = __f[ 9 ];
    uint64_t _f10 = __f[ 10 ];
    uint64_t _f11 = __f[ 11 ];
    uint64_t _f12 = __f[ 12 ];
    uint64_t _f13 = __f[ 13 ];
    uint64_t _f14 = __f[ 14 ];
    uint64_t _f15 = __f[ 15 ];
    uint64_t _f16 = __f[ 16 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];
    uint32_t _s16 = __s[ 16 ];

    uint64_t _r0 = _f0 + _s0;
    uint64_t _r1 = _f1 + _s1 + ( _r0 >> 32 ); 
    uint64_t _r2 = _f2 + _s2 + ( _r1 >> 32 ); 
    uint64_t _r3 = _f3 + _s3 + ( _r2 >> 32 ); 
    uint64_t _r4 = _f4 + _s4 + ( _r3 >> 32 ); 
    uint64_t _r5 = _f5 + _s5 + ( _r4 >> 32 ); 
    uint64_t _r6 = _f6 + _s6 + ( _r5 >> 32 );
    uint64_t _r7 = _f7 + _s7 + ( _r6 >> 32 ); 
    uint64_t _r8 = _f8 + _s8 + ( _r7 >> 32 );
    uint64_t _r9 = _f9 + _s9 + ( _r8 >> 32 );
    uint64_t _r10 = _f10 + _s10 + ( _r9 >> 32 );
    uint64_t _r11 = _f11 + _s11 + ( _r10 >> 32 );
    uint64_t _r12 = _f12 + _s12 + ( _r11 >> 32 );
    uint64_t _r13 = _f13 + _s13 + ( _r12 >> 32 );
    uint64_t _r14 = _f14 + _s14 + ( _r13 >> 32 );
    uint64_t _r15 = _f15 + _s15 + ( _r14 >> 32 );
    uint64_t _r16 = _f16 + _s16 + ( _r15 >> 32 );

    __f[ 0 ] = _r0;
    __f[ 1 ] = _r1;
    __f[ 2 ] = _r2;
    __f[ 3 ] = _r3;
    __f[ 4 ] = _r4;
    __f[ 5 ] = _r5;
    __f[ 6 ] = _r6;
    __f[ 7 ] = _r7;
    __f[ 8 ] = _r8;
    __f[ 9 ] = _r9;
    __f[ 10 ] = _r10;
    __f[ 11 ] = _r11;
    __f[ 12 ] = _r12;
    __f[ 13 ] = _r13;
    __f[ 14 ] = _r14;
    __f[ 15 ] = _r15;
    __f[ 16 ] = _r16;

} 

__device__ void ed25519::cuda::subtraction( field_element __f, field_element __s ) {

    uint64_t _f0 = __f[ 0 ];
    uint64_t _f1 = __f[ 1 ];
    uint64_t _f2 = __f[ 2 ];
    uint64_t _f3 = __f[ 3 ];
    uint64_t _f4 = __f[ 4 ];
    uint64_t _f5 = __f[ 5 ];
    uint64_t _f6 = __f[ 6 ];
    uint64_t _f7 = __f[ 7 ];
    uint64_t _f8 = __f[ 8 ];
    uint64_t _f9 = __f[ 9 ];
    uint64_t _f10 = __f[ 10 ];
    uint64_t _f11 = __f[ 11 ];
    uint64_t _f12 = __f[ 12 ];
    uint64_t _f13 = __f[ 13 ];
    uint64_t _f14 = __f[ 14 ];
    uint64_t _f15 = __f[ 15 ];
    uint64_t _f16 = __f[ 16 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];
    uint32_t _s16 = __s[ 16 ];

    uint64_t _r0 = _f0 - _s0;
    uint64_t _r1 = _f1 - _s1 - ( _r0 >> 63 );
    uint64_t _r2 = _f2 - _s2 - ( _r1 >> 63 );
    uint64_t _r3 = _f3 - _s3 - ( _r2 >> 63 );
    uint64_t _r4 = _f4 - _s4 - ( _r3 >> 63 );
    uint64_t _r5 = _f5 - _s5 - ( _r4 >> 63 );
    uint64_t _r6 = _f6 - _s6 - ( _r5 >> 63 );
    uint64_t _r7 = _f7 - _s7 - ( _r6 >> 63 );
    uint64_t _r8 = _f8 - _s8 - ( _r7 >> 63 );
    uint64_t _r9 = _f9 - _s9 - ( _r8 >> 63 );
    uint64_t _r10 = _f10 - _s10 - ( _r9 >> 63 );
    uint64_t _r11 = _f11 - _s11 - ( _r10 >> 63 );
    uint64_t _r12 = _f12 - _s12 - ( _r11 >> 63 );
    uint64_t _r13 = _f13 - _s13 - ( _r12 >> 63 );
    uint64_t _r14 = _f14 - _s14 - ( _r13 >> 63 );
    uint64_t _r15 = _f15 - _s15 - ( _r14 >> 63 );
    uint64_t _r16 = _f16 - _s16 - ( _r15 >> 63 );
    
    __f[ 0 ] = _r0;
    __f[ 1 ] = _r1;
    __f[ 2 ] = _r2;
    __f[ 3 ] = _r3;
    __f[ 4 ] = _r4;
    __f[ 5 ] = _r5;
    __f[ 6 ] = _r6;
    __f[ 7 ] = _r7;
    __f[ 8 ] = _r8;
    __f[ 9 ] = _r9;
    __f[ 10 ] = _r10;
    __f[ 11 ] = _r11;
    __f[ 12 ] = _r12;
    __f[ 13 ] = _r13;
    __f[ 14 ] = _r14;
    __f[ 15 ] = _r15;
    __f[ 16 ] = _r16;

}

__device__ void ed25519::cuda::addition_mod( field_element __r, field_element __f, field_element __s ) {

    uint64_t _f0 = __f[ 0 ];
    uint64_t _f1 = __f[ 1 ];
    uint64_t _f2 = __f[ 2 ];
    uint64_t _f3 = __f[ 3 ];
    uint64_t _f4 = __f[ 4 ];
    uint64_t _f5 = __f[ 5 ];
    uint64_t _f6 = __f[ 6 ];
    uint64_t _f7 = __f[ 7 ];
    uint64_t _f8 = __f[ 8 ];
    uint64_t _f9 = __f[ 9 ];
    uint64_t _f10 = __f[ 10 ];
    uint64_t _f11 = __f[ 11 ];
    uint64_t _f12 = __f[ 12 ];
    uint64_t _f13 = __f[ 13 ];
    uint64_t _f14 = __f[ 14 ];
    uint64_t _f15 = __f[ 15 ];
    uint64_t _f16 = __f[ 16 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];
    uint32_t _s16 = __s[ 16 ];

    uint64_t _r0 = _f0 + _s0;
    uint64_t _r1 = _f1 + _s1 + ( _r0 >> 32 ); 
    uint64_t _r2 = _f2 + _s2 + ( _r1 >> 32 ); 
    uint64_t _r3 = _f3 + _s3 + ( _r2 >> 32 ); 
    uint64_t _r4 = _f4 + _s4 + ( _r3 >> 32 ); 
    uint64_t _r5 = _f5 + _s5 + ( _r4 >> 32 ); 
    uint64_t _r6 = _f6 + _s6 + ( _r5 >> 32 );
    uint64_t _r7 = _f7 + _s7 + ( _r6 >> 32 ); 
    uint64_t _r8 = _f8 + _s8 + ( _r7 >> 32 );
    uint64_t _r9 = _f9 + _s9 + ( _r8 >> 32 );
    uint64_t _r10 = _f10 + _s10 + ( _r9 >> 32 );
    uint64_t _r11 = _f11 + _s11 + ( _r10 >> 32 );
    uint64_t _r12 = _f12 + _s12 + ( _r11 >> 32 );
    uint64_t _r13 = _f13 + _s13 + ( _r12 >> 32 );
    uint64_t _r14 = _f14 + _s14 + ( _r13 >> 32 );
    uint64_t _r15 = _f15 + _s15 + ( _r14 >> 32 );
    uint64_t _r16 = _f16 + _s16 + ( _r15 >> 32 );

    __r[ 0 ] = _r0;
    __r[ 1 ] = _r1;
    __r[ 2 ] = _r2;
    __r[ 3 ] = _r3;
    __r[ 4 ] = _r4;
    __r[ 5 ] = _r5;
    __r[ 6 ] = _r6;
    __r[ 7 ] = _r7;
    __r[ 8 ] = _r8;
    __r[ 9 ] = _r9;
    __r[ 10 ] = _r10;
    __r[ 11 ] = _r11;
    __r[ 12 ] = _r12;
    __r[ 13 ] = _r13;
    __r[ 14 ] = _r14;
    __r[ 15 ] = _r15;
    __r[ 16 ] = _r16;

    if ( greather_or_equal_to( __r, prime ) ) subtraction( __r, prime );

} 

__device__ void ed25519::cuda::subtraction_mod( field_element __r, field_element __f, field_element __s ) {

    uint64_t _f0 = __f[ 0 ];
    uint64_t _f1 = __f[ 1 ];
    uint64_t _f2 = __f[ 2 ];
    uint64_t _f3 = __f[ 3 ];
    uint64_t _f4 = __f[ 4 ];
    uint64_t _f5 = __f[ 5 ];
    uint64_t _f6 = __f[ 6 ];
    uint64_t _f7 = __f[ 7 ];
    uint64_t _f8 = __f[ 8 ];
    uint64_t _f9 = __f[ 9 ];
    uint64_t _f10 = __f[ 10 ];
    uint64_t _f11 = __f[ 11 ];
    uint64_t _f12 = __f[ 12 ];
    uint64_t _f13 = __f[ 13 ];
    uint64_t _f14 = __f[ 14 ];
    uint64_t _f15 = __f[ 15 ];
    uint64_t _f16 = __f[ 16 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];
    uint32_t _s16 = __s[ 16 ];

    uint64_t _r0 = _f0 - _s0;
    uint64_t _r1 = _f1 - _s1 - ( _r0 >> 63 );
    uint64_t _r2 = _f2 - _s2 - ( _r1 >> 63 );
    uint64_t _r3 = _f3 - _s3 - ( _r2 >> 63 );
    uint64_t _r4 = _f4 - _s4 - ( _r3 >> 63 );
    uint64_t _r5 = _f5 - _s5 - ( _r4 >> 63 );
    uint64_t _r6 = _f6 - _s6 - ( _r5 >> 63 );
    uint64_t _r7 = _f7 - _s7 - ( _r6 >> 63 );
    uint64_t _r8 = _f8 - _s8 - ( _r7 >> 63 );
    uint64_t _r9 = _f9 - _s9 - ( _r8 >> 63 );
    uint64_t _r10 = _f10 - _s10 - ( _r9 >> 63 );
    uint64_t _r11 = _f11 - _s11 - ( _r10 >> 63 );
    uint64_t _r12 = _f12 - _s12 - ( _r11 >> 63 );
    uint64_t _r13 = _f13 - _s13 - ( _r12 >> 63 );
    uint64_t _r14 = _f14 - _s14 - ( _r13 >> 63 );
    uint64_t _r15 = _f15 - _s15 - ( _r14 >> 63 );
    uint64_t _r16 = _f16 - _s16 - ( _r15 >> 63 );

    __r[ 0 ] = _r0;
    __r[ 1 ] = _r1;
    __r[ 2 ] = _r2;
    __r[ 3 ] = _r3;
    __r[ 4 ] = _r4;
    __r[ 5 ] = _r5;
    __r[ 6 ] = _r6;
    __r[ 7 ] = _r7;
    __r[ 8 ] = _r8;
    __r[ 9 ] = _r9;
    __r[ 10 ] = _r10;
    __r[ 11 ] = _r11;
    __r[ 12 ] = _r12;
    __r[ 13 ] = _r13;
    __r[ 14 ] = _r14;
    __r[ 15 ] = _r15;
    __r[ 16 ] = _r16;

    if ( greather_or_equal_to( __r, prime ) ) addition( __r, prime );

}

__device__ void ed25519::cuda::addition_mod( field_element __f, field_element __s ) {

    uint64_t _f0 = __f[ 0 ];
    uint64_t _f1 = __f[ 1 ];
    uint64_t _f2 = __f[ 2 ];
    uint64_t _f3 = __f[ 3 ];
    uint64_t _f4 = __f[ 4 ];
    uint64_t _f5 = __f[ 5 ];
    uint64_t _f6 = __f[ 6 ];
    uint64_t _f7 = __f[ 7 ];
    uint64_t _f8 = __f[ 8 ];
    uint64_t _f9 = __f[ 9 ];
    uint64_t _f10 = __f[ 10 ];
    uint64_t _f11 = __f[ 11 ];
    uint64_t _f12 = __f[ 12 ];
    uint64_t _f13 = __f[ 13 ];
    uint64_t _f14 = __f[ 14 ];
    uint64_t _f15 = __f[ 15 ];
    uint64_t _f16 = __f[ 16 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];
    uint32_t _s16 = __s[ 16 ];

    uint64_t _r0 = _f0 + _s0;
    uint64_t _r1 = _f1 + _s1 + ( _r0 >> 32 ); 
    uint64_t _r2 = _f2 + _s2 + ( _r1 >> 32 ); 
    uint64_t _r3 = _f3 + _s3 + ( _r2 >> 32 ); 
    uint64_t _r4 = _f4 + _s4 + ( _r3 >> 32 ); 
    uint64_t _r5 = _f5 + _s5 + ( _r4 >> 32 ); 
    uint64_t _r6 = _f6 + _s6 + ( _r5 >> 32 );
    uint64_t _r7 = _f7 + _s7 + ( _r6 >> 32 ); 
    uint64_t _r8 = _f8 + _s8 + ( _r7 >> 32 );
    uint64_t _r9 = _f9 + _s9 + ( _r8 >> 32 );
    uint64_t _r10 = _f10 + _s10 + ( _r9 >> 32 );
    uint64_t _r11 = _f11 + _s11 + ( _r10 >> 32 );
    uint64_t _r12 = _f12 + _s12 + ( _r11 >> 32 );
    uint64_t _r13 = _f13 + _s13 + ( _r12 >> 32 );
    uint64_t _r14 = _f14 + _s14 + ( _r13 >> 32 );
    uint64_t _r15 = _f15 + _s15 + ( _r14 >> 32 );
    uint64_t _r16 = _f16 + _s16 + ( _r15 >> 32 );

    __f[ 0 ] = _r0;
    __f[ 1 ] = _r1;
    __f[ 2 ] = _r2;
    __f[ 3 ] = _r3;
    __f[ 4 ] = _r4;
    __f[ 5 ] = _r5;
    __f[ 6 ] = _r6;
    __f[ 7 ] = _r7;
    __f[ 8 ] = _r8;
    __f[ 9 ] = _r9;
    __f[ 10 ] = _r10;
    __f[ 11 ] = _r11;
    __f[ 12 ] = _r12;
    __f[ 13 ] = _r13;
    __f[ 14 ] = _r14;
    __f[ 15 ] = _r15;
    __f[ 16 ] = _r16;

    if ( greather_or_equal_to( __f, prime ) ) subtraction( __f, prime );

} 

__device__ void ed25519::cuda::subtraction_mod( field_element __f, field_element __s ) {

    uint64_t _f0 = __f[ 0 ];
    uint64_t _f1 = __f[ 1 ];
    uint64_t _f2 = __f[ 2 ];
    uint64_t _f3 = __f[ 3 ];
    uint64_t _f4 = __f[ 4 ];
    uint64_t _f5 = __f[ 5 ];
    uint64_t _f6 = __f[ 6 ];
    uint64_t _f7 = __f[ 7 ];
    uint64_t _f8 = __f[ 8 ];
    uint64_t _f9 = __f[ 9 ];
    uint64_t _f10 = __f[ 10 ];
    uint64_t _f11 = __f[ 11 ];
    uint64_t _f12 = __f[ 12 ];
    uint64_t _f13 = __f[ 13 ];
    uint64_t _f14 = __f[ 14 ];
    uint64_t _f15 = __f[ 15 ];
    uint64_t _f16 = __f[ 16 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];
    uint32_t _s16 = __s[ 16 ];

    uint64_t _r0 = _f0 - _s0;
    uint64_t _r1 = _f1 - _s1 - ( _r0 >> 63 );
    uint64_t _r2 = _f2 - _s2 - ( _r1 >> 63 );
    uint64_t _r3 = _f3 - _s3 - ( _r2 >> 63 );
    uint64_t _r4 = _f4 - _s4 - ( _r3 >> 63 );
    uint64_t _r5 = _f5 - _s5 - ( _r4 >> 63 );
    uint64_t _r6 = _f6 - _s6 - ( _r5 >> 63 );
    uint64_t _r7 = _f7 - _s7 - ( _r6 >> 63 );
    uint64_t _r8 = _f8 - _s8 - ( _r7 >> 63 );
    uint64_t _r9 = _f9 - _s9 - ( _r8 >> 63 );
    uint64_t _r10 = _f10 - _s10 - ( _r9 >> 63 );
    uint64_t _r11 = _f11 - _s11 - ( _r10 >> 63 );
    uint64_t _r12 = _f12 - _s12 - ( _r11 >> 63 );
    uint64_t _r13 = _f13 - _s13 - ( _r12 >> 63 );
    uint64_t _r14 = _f14 - _s14 - ( _r13 >> 63 );
    uint64_t _r15 = _f15 - _s15 - ( _r14 >> 63 );
    uint64_t _r16 = _f16 - _s16 - ( _r15 >> 63 );
    
    __f[ 0 ] = _r0;
    __f[ 1 ] = _r1;
    __f[ 2 ] = _r2;
    __f[ 3 ] = _r3;
    __f[ 4 ] = _r4;
    __f[ 5 ] = _r5;
    __f[ 6 ] = _r6;
    __f[ 7 ] = _r7;
    __f[ 8 ] = _r8;
    __f[ 9 ] = _r9;
    __f[ 10 ] = _r10;
    __f[ 11 ] = _r11;
    __f[ 12 ] = _r12;
    __f[ 13 ] = _r13;
    __f[ 14 ] = _r14;
    __f[ 15 ] = _r15;
    __f[ 16 ] = _r16;

    if ( greather_or_equal_to( __f, prime ) ) addition( __f, prime );

}

__device__ void ed25519::cuda::multiplication( field_element __r, field_element __f, field_element __s ) {

    __uint128_t _f0 = __f[ 0 ];
    __uint128_t _f1 = __f[ 1 ];
    __uint128_t _f2 = __f[ 2 ];
    __uint128_t _f3 = __f[ 3 ];
    __uint128_t _f4 = __f[ 4 ];
    __uint128_t _f5 = __f[ 5 ];
    __uint128_t _f6 = __f[ 6 ];
    __uint128_t _f7 = __f[ 7 ];
    __uint128_t _f8 = __f[ 8 ];
    __uint128_t _f9 = __f[ 9 ];
    __uint128_t _f10 = __f[ 10 ];
    __uint128_t _f11 = __f[ 11 ];
    __uint128_t _f12 = __f[ 12 ];
    __uint128_t _f13 = __f[ 13 ];
    __uint128_t _f14 = __f[ 14 ];
    __uint128_t _f15 = __f[ 15 ];
    __uint128_t _f16 = __f[ 16 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];
    uint32_t _s16 = __s[ 16 ];

    __uint128_t _s0_f0 = _s0 * _f0;
    __uint128_t _s0_f1 = _s0 * _f1;
    __uint128_t _s0_f2 = _s0 * _f2;
    __uint128_t _s0_f3 = _s0 * _f3;
    __uint128_t _s0_f4 = _s0 * _f4;
    __uint128_t _s0_f5 = _s0 * _f5;
    __uint128_t _s0_f6 = _s0 * _f6;
    __uint128_t _s0_f7 = _s0 * _f7;
    __uint128_t _s0_f8 = _s0 * _f8;
    __uint128_t _s0_f9 = _s0 * _f9;
    __uint128_t _s0_f10 = _s0 * _f10;
    __uint128_t _s0_f11 = _s0 * _f11;
    __uint128_t _s0_f12 = _s0 * _f12;
    __uint128_t _s0_f13 = _s0 * _f13;
    __uint128_t _s0_f14 = _s0 * _f14;
    __uint128_t _s0_f15 = _s0 * _f15;
    __uint128_t _s0_f16 = _s0 * _f16;

    __uint128_t _s1_f0 = _s1 * _f0;
    __uint128_t _s1_f1 = _s1 * _f1;
    __uint128_t _s1_f2 = _s1 * _f2;
    __uint128_t _s1_f3 = _s1 * _f3;
    __uint128_t _s1_f4 = _s1 * _f4;
    __uint128_t _s1_f5 = _s1 * _f5;
    __uint128_t _s1_f6 = _s1 * _f6;
    __uint128_t _s1_f7 = _s1 * _f7;
    __uint128_t _s1_f8 = _s1 * _f8;
    __uint128_t _s1_f9 = _s1 * _f9;
    __uint128_t _s1_f10 = _s1 * _f10;
    __uint128_t _s1_f11 = _s1 * _f11;
    __uint128_t _s1_f12 = _s1 * _f12;
    __uint128_t _s1_f13 = _s1 * _f13;
    __uint128_t _s1_f14 = _s1 * _f14;
    __uint128_t _s1_f15 = _s1 * _f15;
    
    __uint128_t _s2_f0 = _s2 * _f0;
    __uint128_t _s2_f1 = _s2 * _f1;
    __uint128_t _s2_f2 = _s2 * _f2;
    __uint128_t _s2_f3 = _s2 * _f3;
    __uint128_t _s2_f4 = _s2 * _f4;
    __uint128_t _s2_f5 = _s2 * _f5;
    __uint128_t _s2_f6 = _s2 * _f6;
    __uint128_t _s2_f7 = _s2 * _f7;
    __uint128_t _s2_f8 = _s2 * _f8;
    __uint128_t _s2_f9 = _s2 * _f9;
    __uint128_t _s2_f10 = _s2 * _f10;
    __uint128_t _s2_f11 = _s2 * _f11;
    __uint128_t _s2_f12 = _s2 * _f12;
    __uint128_t _s2_f13 = _s2 * _f13;
    __uint128_t _s2_f14 = _s2 * _f14;

    __uint128_t _s3_f0 = _s3 * _f0;
    __uint128_t _s3_f1 = _s3 * _f1;
    __uint128_t _s3_f2 = _s3 * _f2;
    __uint128_t _s3_f3 = _s3 * _f3;
    __uint128_t _s3_f4 = _s3 * _f4;
    __uint128_t _s3_f5 = _s3 * _f5;
    __uint128_t _s3_f6 = _s3 * _f6;
    __uint128_t _s3_f7 = _s3 * _f7;
    __uint128_t _s3_f8 = _s3 * _f8;
    __uint128_t _s3_f9 = _s3 * _f9;
    __uint128_t _s3_f10 = _s3 * _f10;
    __uint128_t _s3_f11 = _s3 * _f11;
    __uint128_t _s3_f12 = _s3 * _f12;
    __uint128_t _s3_f13 = _s3 * _f13;

    __uint128_t _s4_f0 = _s4 * _f0;
    __uint128_t _s4_f1 = _s4 * _f1;
    __uint128_t _s4_f2 = _s4 * _f2;
    __uint128_t _s4_f3 = _s4 * _f3;
    __uint128_t _s4_f4 = _s4 * _f4;
    __uint128_t _s4_f5 = _s4 * _f5;
    __uint128_t _s4_f6 = _s4 * _f6;
    __uint128_t _s4_f7 = _s4 * _f7;
    __uint128_t _s4_f8 = _s4 * _f8;
    __uint128_t _s4_f9 = _s4 * _f9;
    __uint128_t _s4_f10 = _s4 * _f10;
    __uint128_t _s4_f11 = _s4 * _f11;
    __uint128_t _s4_f12 = _s4 * _f12;

    __uint128_t _s5_f0 = _s5 * _f0;
    __uint128_t _s5_f1 = _s5 * _f1;
    __uint128_t _s5_f2 = _s5 * _f2;
    __uint128_t _s5_f3 = _s5 * _f3;
    __uint128_t _s5_f4 = _s5 * _f4;
    __uint128_t _s5_f5 = _s5 * _f5;
    __uint128_t _s5_f6 = _s5 * _f6;
    __uint128_t _s5_f7 = _s5 * _f7;
    __uint128_t _s5_f8 = _s5 * _f8;
    __uint128_t _s5_f9 = _s5 * _f9;
    __uint128_t _s5_f10 = _s5 * _f10;
    __uint128_t _s5_f11 = _s5 * _f11;

    __uint128_t _s6_f0 = _s6 * _f0;
    __uint128_t _s6_f1 = _s6 * _f1;
    __uint128_t _s6_f2 = _s6 * _f2;
    __uint128_t _s6_f3 = _s6 * _f3;
    __uint128_t _s6_f4 = _s6 * _f4;
    __uint128_t _s6_f5 = _s6 * _f5;
    __uint128_t _s6_f6 = _s6 * _f6;
    __uint128_t _s6_f7 = _s6 * _f7;
    __uint128_t _s6_f8 = _s6 * _f8;
    __uint128_t _s6_f9 = _s6 * _f9;
    __uint128_t _s6_f10 = _s6 * _f10;

    __uint128_t _s7_f0 = _s7 * _f0;
    __uint128_t _s7_f1 = _s7 * _f1;
    __uint128_t _s7_f2 = _s7 * _f2;
    __uint128_t _s7_f3 = _s7 * _f3;
    __uint128_t _s7_f4 = _s7 * _f4;
    __uint128_t _s7_f5 = _s7 * _f5;
    __uint128_t _s7_f6 = _s7 * _f6;
    __uint128_t _s7_f7 = _s7 * _f7;
    __uint128_t _s7_f8 = _s7 * _f8;
    __uint128_t _s7_f9 = _s7 * _f9;

    __uint128_t _s8_f0 = _s8 * _f0;
    __uint128_t _s8_f1 = _s8 * _f1;
    __uint128_t _s8_f2 = _s8 * _f2;
    __uint128_t _s8_f3 = _s8 * _f3;
    __uint128_t _s8_f4 = _s8 * _f4;
    __uint128_t _s8_f5 = _s8 * _f5;
    __uint128_t _s8_f6 = _s8 * _f6;
    __uint128_t _s8_f7 = _s8 * _f7;
    __uint128_t _s8_f8 = _s8 * _f8;

    __uint128_t _s9_f0 = _s9 * _f0;
    __uint128_t _s9_f1 = _s9 * _f1;
    __uint128_t _s9_f2 = _s9 * _f2;
    __uint128_t _s9_f3 = _s9 * _f3;
    __uint128_t _s9_f4 = _s9 * _f4;
    __uint128_t _s9_f5 = _s9 * _f5;
    __uint128_t _s9_f6 = _s9 * _f6;
    __uint128_t _s9_f7 = _s9 * _f7;

    __uint128_t _s10_f0 = _s10 * _f0;
    __uint128_t _s10_f1 = _s10 * _f1;
    __uint128_t _s10_f2 = _s10 * _f2;
    __uint128_t _s10_f3 = _s10 * _f3;
    __uint128_t _s10_f4 = _s10 * _f4;
    __uint128_t _s10_f5 = _s10 * _f5;
    __uint128_t _s10_f6 = _s10 * _f6;

    __uint128_t _s11_f0 = _s11 * _f0;
    __uint128_t _s11_f1 = _s11 * _f1;
    __uint128_t _s11_f2 = _s11 * _f2;
    __uint128_t _s11_f3 = _s11 * _f3;
    __uint128_t _s11_f4 = _s11 * _f4;
    __uint128_t _s11_f5 = _s11 * _f5;
    
    __uint128_t _s12_f0 = _s12 * _f0;
    __uint128_t _s12_f1 = _s12 * _f1;
    __uint128_t _s12_f2 = _s12 * _f2;
    __uint128_t _s12_f3 = _s12 * _f3;
    __uint128_t _s12_f4 = _s12 * _f4;
    
    __uint128_t _s13_f0 = _s13 * _f0;
    __uint128_t _s13_f1 = _s13 * _f1;
    __uint128_t _s13_f2 = _s13 * _f2;
    __uint128_t _s13_f3 = _s13 * _f3;
    
    __uint128_t _s14_f0 = _s14 * _f0;
    __uint128_t _s14_f1 = _s14 * _f1;
    __uint128_t _s14_f2 = _s14 * _f2;
    
    __uint128_t _s15_f0 = _s15 * _f0;
    __uint128_t _s15_f1 = _s15 * _f1;

    __uint128_t _s16_f0 = _s16 * _f0;

    __uint128_t _r1 = _s0_f1 + _s1_f0 + ( _s0_f0 >> 32 );
    __uint128_t _r2 = _s0_f2 + _s1_f1 + _s2_f0 + ( _r1 >> 32 );
    __uint128_t _r3 = _s0_f3 + _s1_f2 + _s2_f1 + _s3_f0 + ( _r2 >> 32 );
    __uint128_t _r4 = _s0_f4 + _s1_f3 + _s2_f2 + _s3_f1 + _s4_f0 + ( _r3 >> 32 );
    __uint128_t _r5 = _s0_f5 + _s1_f4 + _s2_f3 + _s3_f2 + _s4_f1 + _s5_f0 + ( _r4 >> 32 );
    __uint128_t _r6 = _s0_f6 + _s1_f5 + _s2_f4 + _s3_f3 + _s4_f2 + _s5_f1 + _s6_f0 + ( _r5 >> 32 );
    __uint128_t _r7 = _s0_f7 + _s1_f6 + _s2_f5 + _s3_f4 + _s4_f3 + _s5_f2 + _s6_f1 + _s7_f0 + ( _r6 >> 32 );
    __uint128_t _r8 = _s0_f8 + _s1_f7 + _s2_f6 + _s3_f5 + _s4_f4 + _s5_f3 + _s6_f2 + _s7_f1 + _s8_f0 + ( _r7 >> 32 );
    __uint128_t _r9 = _s0_f9 + _s1_f8 + _s2_f7 + _s3_f6 + _s4_f5 + _s5_f4 + _s6_f3 + _s7_f2 + _s8_f1 + _s9_f0 + ( _r8 >> 32 );
    __uint128_t _r10 = _s0_f10 + _s1_f9 + _s2_f8 + _s3_f7 + _s4_f6 + _s5_f5 + _s6_f4 + _s7_f3 + _s8_f2 + _s9_f1 + _s10_f0 + ( _r9 >> 32 );
    __uint128_t _r11 = _s0_f11 + _s1_f10 + _s2_f9 + _s3_f8 + _s4_f7 + _s5_f6 + _s6_f5 + _s7_f4 + _s8_f3 + _s9_f2 + _s10_f1 + _s11_f0 + ( _r10 >> 32 );
    __uint128_t _r12 = _s0_f12 + _s1_f11 + _s2_f10 + _s3_f9 + _s4_f8 + _s5_f7 + _s6_f6 + _s7_f5 + _s8_f4 + _s9_f3 + _s10_f2 + _s11_f1 + _s12_f0 + ( _r11 >> 32 );
    __uint128_t _r13 = _s0_f13 + _s1_f12 + _s2_f11 + _s3_f10 + _s4_f9 + _s5_f8 + _s6_f7 + _s7_f6 + _s8_f5 + _s9_f4 + _s10_f3 + _s11_f2 + _s12_f1 + _s13_f0 + ( _r12 >> 32 );
    __uint128_t _r14 = _s0_f14 + _s1_f13 + _s2_f12 + _s3_f11 + _s4_f10 + _s5_f9 + _s6_f8 + _s7_f7 + _s8_f6 + _s9_f5 + _s10_f4 + _s11_f3 + _s12_f2 + _s13_f1 + _s14_f0 + ( _r13 >> 32 );
    __uint128_t _r15 = _s0_f15 + _s1_f14 + _s2_f13 + _s3_f12 + _s4_f11 + _s5_f10 + _s6_f9 + _s7_f8 + _s8_f7 + _s9_f6 + _s10_f5 + _s11_f4 + _s12_f3 + _s13_f2 + _s14_f1 + _s15_f0 + ( _r14 >> 32 );
    __uint128_t _r16 = _s0_f16 + _s1_f15 + _s2_f14 + _s3_f13 + _s4_f12 + _s5_f11 + _s6_f10 + _s7_f9 + _s8_f8 + _s9_f7 + _s10_f6 + _s11_f5 + _s12_f4 + _s13_f3 + _s14_f2 + _s15_f1 + _s16_f0 + ( _r15 >> 32 );

    __r[ 0 ] = _s0_f0;
    __r[ 1 ] = _r1;
    __r[ 2 ] = _r2;
    __r[ 3 ] = _r3;
    __r[ 4 ] = _r4;
    __r[ 5 ] = _r5;
    __r[ 6 ] = _r6;
    __r[ 7 ] = _r7;
    __r[ 8 ] = _r8;
    __r[ 9 ] = _r9;
    __r[ 10 ] = _r10;
    __r[ 11 ] = _r11;
    __r[ 12 ] = _r12;
    __r[ 13 ] = _r13;
    __r[ 14 ] = _r14;
    __r[ 15 ] = _r15;
    __r[ 16 ] = _r16;

}

__device__ void ed25519::cuda::multiplication( field_element __f, field_element __s ) {

    __uint128_t _f0 = __f[ 0 ];
    __uint128_t _f1 = __f[ 1 ];
    __uint128_t _f2 = __f[ 2 ];
    __uint128_t _f3 = __f[ 3 ];
    __uint128_t _f4 = __f[ 4 ];
    __uint128_t _f5 = __f[ 5 ];
    __uint128_t _f6 = __f[ 6 ];
    __uint128_t _f7 = __f[ 7 ];
    __uint128_t _f8 = __f[ 8 ];
    __uint128_t _f9 = __f[ 9 ];
    __uint128_t _f10 = __f[ 10 ];
    __uint128_t _f11 = __f[ 11 ];
    __uint128_t _f12 = __f[ 12 ];
    __uint128_t _f13 = __f[ 13 ];
    __uint128_t _f14 = __f[ 14 ];
    __uint128_t _f15 = __f[ 15 ];
    __uint128_t _f16 = __f[ 16 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];
    uint32_t _s16 = __s[ 16 ];

    __uint128_t _s0_f0 = _s0 * _f0;
    __uint128_t _s0_f1 = _s0 * _f1;
    __uint128_t _s0_f2 = _s0 * _f2;
    __uint128_t _s0_f3 = _s0 * _f3;
    __uint128_t _s0_f4 = _s0 * _f4;
    __uint128_t _s0_f5 = _s0 * _f5;
    __uint128_t _s0_f6 = _s0 * _f6;
    __uint128_t _s0_f7 = _s0 * _f7;
    __uint128_t _s0_f8 = _s0 * _f8;
    __uint128_t _s0_f9 = _s0 * _f9;
    __uint128_t _s0_f10 = _s0 * _f10;
    __uint128_t _s0_f11 = _s0 * _f11;
    __uint128_t _s0_f12 = _s0 * _f12;
    __uint128_t _s0_f13 = _s0 * _f13;
    __uint128_t _s0_f14 = _s0 * _f14;
    __uint128_t _s0_f15 = _s0 * _f15;
    __uint128_t _s0_f16 = _s0 * _f16;

    __uint128_t _s1_f0 = _s1 * _f0;
    __uint128_t _s1_f1 = _s1 * _f1;
    __uint128_t _s1_f2 = _s1 * _f2;
    __uint128_t _s1_f3 = _s1 * _f3;
    __uint128_t _s1_f4 = _s1 * _f4;
    __uint128_t _s1_f5 = _s1 * _f5;
    __uint128_t _s1_f6 = _s1 * _f6;
    __uint128_t _s1_f7 = _s1 * _f7;
    __uint128_t _s1_f8 = _s1 * _f8;
    __uint128_t _s1_f9 = _s1 * _f9;
    __uint128_t _s1_f10 = _s1 * _f10;
    __uint128_t _s1_f11 = _s1 * _f11;
    __uint128_t _s1_f12 = _s1 * _f12;
    __uint128_t _s1_f13 = _s1 * _f13;
    __uint128_t _s1_f14 = _s1 * _f14;
    __uint128_t _s1_f15 = _s1 * _f15;
    
    __uint128_t _s2_f0 = _s2 * _f0;
    __uint128_t _s2_f1 = _s2 * _f1;
    __uint128_t _s2_f2 = _s2 * _f2;
    __uint128_t _s2_f3 = _s2 * _f3;
    __uint128_t _s2_f4 = _s2 * _f4;
    __uint128_t _s2_f5 = _s2 * _f5;
    __uint128_t _s2_f6 = _s2 * _f6;
    __uint128_t _s2_f7 = _s2 * _f7;
    __uint128_t _s2_f8 = _s2 * _f8;
    __uint128_t _s2_f9 = _s2 * _f9;
    __uint128_t _s2_f10 = _s2 * _f10;
    __uint128_t _s2_f11 = _s2 * _f11;
    __uint128_t _s2_f12 = _s2 * _f12;
    __uint128_t _s2_f13 = _s2 * _f13;
    __uint128_t _s2_f14 = _s2 * _f14;

    __uint128_t _s3_f0 = _s3 * _f0;
    __uint128_t _s3_f1 = _s3 * _f1;
    __uint128_t _s3_f2 = _s3 * _f2;
    __uint128_t _s3_f3 = _s3 * _f3;
    __uint128_t _s3_f4 = _s3 * _f4;
    __uint128_t _s3_f5 = _s3 * _f5;
    __uint128_t _s3_f6 = _s3 * _f6;
    __uint128_t _s3_f7 = _s3 * _f7;
    __uint128_t _s3_f8 = _s3 * _f8;
    __uint128_t _s3_f9 = _s3 * _f9;
    __uint128_t _s3_f10 = _s3 * _f10;
    __uint128_t _s3_f11 = _s3 * _f11;
    __uint128_t _s3_f12 = _s3 * _f12;
    __uint128_t _s3_f13 = _s3 * _f13;

    __uint128_t _s4_f0 = _s4 * _f0;
    __uint128_t _s4_f1 = _s4 * _f1;
    __uint128_t _s4_f2 = _s4 * _f2;
    __uint128_t _s4_f3 = _s4 * _f3;
    __uint128_t _s4_f4 = _s4 * _f4;
    __uint128_t _s4_f5 = _s4 * _f5;
    __uint128_t _s4_f6 = _s4 * _f6;
    __uint128_t _s4_f7 = _s4 * _f7;
    __uint128_t _s4_f8 = _s4 * _f8;
    __uint128_t _s4_f9 = _s4 * _f9;
    __uint128_t _s4_f10 = _s4 * _f10;
    __uint128_t _s4_f11 = _s4 * _f11;
    __uint128_t _s4_f12 = _s4 * _f12;

    __uint128_t _s5_f0 = _s5 * _f0;
    __uint128_t _s5_f1 = _s5 * _f1;
    __uint128_t _s5_f2 = _s5 * _f2;
    __uint128_t _s5_f3 = _s5 * _f3;
    __uint128_t _s5_f4 = _s5 * _f4;
    __uint128_t _s5_f5 = _s5 * _f5;
    __uint128_t _s5_f6 = _s5 * _f6;
    __uint128_t _s5_f7 = _s5 * _f7;
    __uint128_t _s5_f8 = _s5 * _f8;
    __uint128_t _s5_f9 = _s5 * _f9;
    __uint128_t _s5_f10 = _s5 * _f10;
    __uint128_t _s5_f11 = _s5 * _f11;

    __uint128_t _s6_f0 = _s6 * _f0;
    __uint128_t _s6_f1 = _s6 * _f1;
    __uint128_t _s6_f2 = _s6 * _f2;
    __uint128_t _s6_f3 = _s6 * _f3;
    __uint128_t _s6_f4 = _s6 * _f4;
    __uint128_t _s6_f5 = _s6 * _f5;
    __uint128_t _s6_f6 = _s6 * _f6;
    __uint128_t _s6_f7 = _s6 * _f7;
    __uint128_t _s6_f8 = _s6 * _f8;
    __uint128_t _s6_f9 = _s6 * _f9;
    __uint128_t _s6_f10 = _s6 * _f10;

    __uint128_t _s7_f0 = _s7 * _f0;
    __uint128_t _s7_f1 = _s7 * _f1;
    __uint128_t _s7_f2 = _s7 * _f2;
    __uint128_t _s7_f3 = _s7 * _f3;
    __uint128_t _s7_f4 = _s7 * _f4;
    __uint128_t _s7_f5 = _s7 * _f5;
    __uint128_t _s7_f6 = _s7 * _f6;
    __uint128_t _s7_f7 = _s7 * _f7;
    __uint128_t _s7_f8 = _s7 * _f8;
    __uint128_t _s7_f9 = _s7 * _f9;

    __uint128_t _s8_f0 = _s8 * _f0;
    __uint128_t _s8_f1 = _s8 * _f1;
    __uint128_t _s8_f2 = _s8 * _f2;
    __uint128_t _s8_f3 = _s8 * _f3;
    __uint128_t _s8_f4 = _s8 * _f4;
    __uint128_t _s8_f5 = _s8 * _f5;
    __uint128_t _s8_f6 = _s8 * _f6;
    __uint128_t _s8_f7 = _s8 * _f7;
    __uint128_t _s8_f8 = _s8 * _f8;

    __uint128_t _s9_f0 = _s9 * _f0;
    __uint128_t _s9_f1 = _s9 * _f1;
    __uint128_t _s9_f2 = _s9 * _f2;
    __uint128_t _s9_f3 = _s9 * _f3;
    __uint128_t _s9_f4 = _s9 * _f4;
    __uint128_t _s9_f5 = _s9 * _f5;
    __uint128_t _s9_f6 = _s9 * _f6;
    __uint128_t _s9_f7 = _s9 * _f7;

    __uint128_t _s10_f0 = _s10 * _f0;
    __uint128_t _s10_f1 = _s10 * _f1;
    __uint128_t _s10_f2 = _s10 * _f2;
    __uint128_t _s10_f3 = _s10 * _f3;
    __uint128_t _s10_f4 = _s10 * _f4;
    __uint128_t _s10_f5 = _s10 * _f5;
    __uint128_t _s10_f6 = _s10 * _f6;

    __uint128_t _s11_f0 = _s11 * _f0;
    __uint128_t _s11_f1 = _s11 * _f1;
    __uint128_t _s11_f2 = _s11 * _f2;
    __uint128_t _s11_f3 = _s11 * _f3;
    __uint128_t _s11_f4 = _s11 * _f4;
    __uint128_t _s11_f5 = _s11 * _f5;
    
    __uint128_t _s12_f0 = _s12 * _f0;
    __uint128_t _s12_f1 = _s12 * _f1;
    __uint128_t _s12_f2 = _s12 * _f2;
    __uint128_t _s12_f3 = _s12 * _f3;
    __uint128_t _s12_f4 = _s12 * _f4;
    
    __uint128_t _s13_f0 = _s13 * _f0;
    __uint128_t _s13_f1 = _s13 * _f1;
    __uint128_t _s13_f2 = _s13 * _f2;
    __uint128_t _s13_f3 = _s13 * _f3;
    
    __uint128_t _s14_f0 = _s14 * _f0;
    __uint128_t _s14_f1 = _s14 * _f1;
    __uint128_t _s14_f2 = _s14 * _f2;
    
    __uint128_t _s15_f0 = _s15 * _f0;
    __uint128_t _s15_f1 = _s15 * _f1;

    __uint128_t _s16_f0 = _s16 * _f0;

    __uint128_t _r1 = _s0_f1 + _s1_f0 + ( _s0_f0 >> 32 );
    __uint128_t _r2 = _s0_f2 + _s1_f1 + _s2_f0 + ( _r1 >> 32 );
    __uint128_t _r3 = _s0_f3 + _s1_f2 + _s2_f1 + _s3_f0 + ( _r2 >> 32 );
    __uint128_t _r4 = _s0_f4 + _s1_f3 + _s2_f2 + _s3_f1 + _s4_f0 + ( _r3 >> 32 );
    __uint128_t _r5 = _s0_f5 + _s1_f4 + _s2_f3 + _s3_f2 + _s4_f1 + _s5_f0 + ( _r4 >> 32 );
    __uint128_t _r6 = _s0_f6 + _s1_f5 + _s2_f4 + _s3_f3 + _s4_f2 + _s5_f1 + _s6_f0 + ( _r5 >> 32 );
    __uint128_t _r7 = _s0_f7 + _s1_f6 + _s2_f5 + _s3_f4 + _s4_f3 + _s5_f2 + _s6_f1 + _s7_f0 + ( _r6 >> 32 );
    __uint128_t _r8 = _s0_f8 + _s1_f7 + _s2_f6 + _s3_f5 + _s4_f4 + _s5_f3 + _s6_f2 + _s7_f1 + _s8_f0 + ( _r7 >> 32 );
    __uint128_t _r9 = _s0_f9 + _s1_f8 + _s2_f7 + _s3_f6 + _s4_f5 + _s5_f4 + _s6_f3 + _s7_f2 + _s8_f1 + _s9_f0 + ( _r8 >> 32 );
    __uint128_t _r10 = _s0_f10 + _s1_f9 + _s2_f8 + _s3_f7 + _s4_f6 + _s5_f5 + _s6_f4 + _s7_f3 + _s8_f2 + _s9_f1 + _s10_f0 + ( _r9 >> 32 );
    __uint128_t _r11 = _s0_f11 + _s1_f10 + _s2_f9 + _s3_f8 + _s4_f7 + _s5_f6 + _s6_f5 + _s7_f4 + _s8_f3 + _s9_f2 + _s10_f1 + _s11_f0 + ( _r10 >> 32 );
    __uint128_t _r12 = _s0_f12 + _s1_f11 + _s2_f10 + _s3_f9 + _s4_f8 + _s5_f7 + _s6_f6 + _s7_f5 + _s8_f4 + _s9_f3 + _s10_f2 + _s11_f1 + _s12_f0 + ( _r11 >> 32 );
    __uint128_t _r13 = _s0_f13 + _s1_f12 + _s2_f11 + _s3_f10 + _s4_f9 + _s5_f8 + _s6_f7 + _s7_f6 + _s8_f5 + _s9_f4 + _s10_f3 + _s11_f2 + _s12_f1 + _s13_f0 + ( _r12 >> 32 );
    __uint128_t _r14 = _s0_f14 + _s1_f13 + _s2_f12 + _s3_f11 + _s4_f10 + _s5_f9 + _s6_f8 + _s7_f7 + _s8_f6 + _s9_f5 + _s10_f4 + _s11_f3 + _s12_f2 + _s13_f1 + _s14_f0 + ( _r13 >> 32 );
    __uint128_t _r15 = _s0_f15 + _s1_f14 + _s2_f13 + _s3_f12 + _s4_f11 + _s5_f10 + _s6_f9 + _s7_f8 + _s8_f7 + _s9_f6 + _s10_f5 + _s11_f4 + _s12_f3 + _s13_f2 + _s14_f1 + _s15_f0 + ( _r14 >> 32 );
    __uint128_t _r16 = _s0_f16 + _s1_f15 + _s2_f14 + _s3_f13 + _s4_f12 + _s5_f11 + _s6_f10 + _s7_f9 + _s8_f8 + _s9_f7 + _s10_f6 + _s11_f5 + _s12_f4 + _s13_f3 + _s14_f2 + _s15_f1 + _s16_f0 + ( _r15 >> 32 );

    __f[ 0 ] = _s0_f0;
    __f[ 1 ] = _r1;
    __f[ 2 ] = _r2;
    __f[ 3 ] = _r3;
    __f[ 4 ] = _r4;
    __f[ 5 ] = _r5;
    __f[ 6 ] = _r6;
    __f[ 7 ] = _r7;
    __f[ 8 ] = _r8;
    __f[ 9 ] = _r9;
    __f[ 10 ] = _r10;
    __f[ 11 ] = _r11;
    __f[ 12 ] = _r12;
    __f[ 13 ] = _r13;
    __f[ 14 ] = _r14;
    __f[ 15 ] = _r15;
    __f[ 16 ] = _r16;

}

__device__ void ed25519::cuda::pow_mod( field_element __r, field_element __f, field_element __s ) {

    field_element _b; copy( _b, __f );
    field_element _e; copy( _e, __s );

    __r[ 0 ] = 1; modular( _b );

    while( is_not_zero( _e ) ) {

        if ( _e[ 0 ] & 0x01 ) multiplication_mod( __r, __r, _b );

        multiplication_mod( _b, _b, _b );

        right_shift( _e, 1 );

    }

}

__device__ void ed25519::cuda::pow_mod( field_element __f, field_element __s ) {

    field_element _b; copy( _b, __f );
    field_element _e; copy( _e, __s );

    zeralise( __f );

    __f[ 0 ] = 1; modular( _b );

    while( is_not_zero( _e ) ) {

        if ( _e[ 0 ] & 0x01 ) multiplication_mod( __f, __f, _b );

        multiplication_mod( _b, _b, _b );

        right_shift( _e, 1 );

    }


}

__device__ void ed25519::cuda::modular( field_element __r, field_element __f ) {

    field_element _q; right_shift( _q, __f, 255 );

    field_element _t; multiplication( _t, _q, prime );

    subtraction( __r, __f, _t );

    if ( greather_or_equal_to( __r, prime ) ) subtraction( __r, prime );

}

__device__ void ed25519::cuda::modular( field_element __f ) {

    field_element _q; right_shift( _q, __f, 255 ); 

    field_element _t; multiplication( _t, _q, prime ); 

    subtraction( __f, _t ); 

    while ( greather_or_equal_to( __f, prime ) ) subtraction( __f, prime );

}

__device__ void ed25519::cuda::modular_l( field_element __r, field_element __f ) {

    auto _highest_bit = 
        []( field_element __f ) {

            field_element _cpy; copy( _cpy, __f );

            uint16_t _bit_index = 544; 

            while( ! ( _cpy[ 16 ] & 2147483648 ) ) { left_shift( _cpy, 1 ); _bit_index --; }

            return _bit_index;

        };

    copy( __r, __f );

    uint16_t _diff; field_element _temp;

    while( greather_or_equal_to( __r, l ) ) {

        _diff = 
            _highest_bit( __r ) - _highest_bit( l );

        left_shift( _temp, l, _diff );

        while( greather_than( _temp, __r ) ) { _diff --; left_shift( _temp, l, _diff ); }

        subtraction( __r, _temp );

    }
}

__device__ void ed25519::cuda::modular_l( field_element __f ) {

    auto _highest_bit = 
        []( field_element __f ) {

            field_element _cpy; copy( _cpy, __f );

            uint16_t _bit_index = 544; 

            while( ! ( _cpy[ 16 ] & 2147483648 ) ) { left_shift( _cpy, 1 ); _bit_index --; }

            return _bit_index;

        };

    uint16_t _diff; field_element _temp;

    while( greather_or_equal_to( __f, l ) ) {

        _diff = 
            _highest_bit( __f ) - _highest_bit( l );

        left_shift( _temp, l, _diff );

        while( greather_than( _temp, __f ) ) { _diff --; left_shift( _temp, l, _diff ); }

        subtraction( __f, _temp );

    }

}

__device__ void ed25519::cuda::multiplication_mod( field_element __r, field_element __f, field_element __s ) {

    multiplication( __r, __f, __s ); modular( __r );

}

__device__ void ed25519::cuda::multiplication_mod_l( field_element __r, field_element __f, field_element __s ) {

    multiplication( __r, __f, __s ); modular_l( __r );

} 

__device__ void ed25519::cuda::inverse( field_element __r, field_element __f ) { pow_mod( __r, __f, prime_euler_exponencial ); }

__device__ void ed25519::cuda::inverse( field_element __f ) { pow_mod( __f, prime_euler_exponencial ); }



__device__ void ed25519::cuda::left_shift( field_element __r, field_element __f, uint16_t __a ) { // <<

    uint32_t _f0 = __f[ 0 ];
    uint32_t _f1 = __f[ 1 ];
    uint32_t _f2 = __f[ 2 ];
    uint32_t _f3 = __f[ 3 ];
    uint32_t _f4 = __f[ 4 ];
    uint32_t _f5 = __f[ 5 ];
    uint32_t _f6 = __f[ 6 ];
    uint32_t _f7 = __f[ 7 ];
    uint32_t _f8 = __f[ 8 ];
    uint32_t _f9 = __f[ 9 ];
    uint32_t _f10 = __f[ 10 ];
    uint32_t _f11 = __f[ 11 ];
    uint32_t _f12 = __f[ 12 ];
    uint32_t _f13 = __f[ 13 ];
    uint32_t _f14 = __f[ 14 ];
    uint32_t _f15 = __f[ 15 ];
    uint32_t _f16 = __f[ 16 ];


    bool _carry, _carry2;

    while( __a -- ) {

        _carry = _f0 >> 31;
        _f0 = _f0 << 1;

        _carry2 = _f1 >> 31;
        _f1 = _f1 << 1 | _carry;

        _carry = _f2 >> 31;
        _f2 = _f2 << 1 | _carry2;

        _carry2 = _f3 >> 31;
        _f3 = _f3 << 1 | _carry;

        _carry = _f4 >> 31;
        _f4 = _f4 << 1 | _carry2;

        _carry2 = _f5 >> 31;
        _f5 = _f5 << 1 | _carry;

        _carry = _f6 >> 31;
        _f6 = _f6 << 1 | _carry2;

        _carry2 = _f7 >> 31;
        _f7 = _f7 << 1 | _carry;

        _carry = _f8 >> 31;
        _f8 = _f8 << 1 | _carry2;

        _carry2 = _f9 >> 31;
        _f9 = _f9 << 1 | _carry;

        _carry = _f10 >> 31;
        _f10 = _f10 << 1 | _carry2;

        _carry2 = _f11 >> 31;
        _f11 = _f11 << 1 | _carry;

        _carry = _f12 >> 31;
        _f12 = _f12 << 1 | _carry2;

        _carry2 = _f13 >> 31;
        _f13 = _f13 << 1 | _carry;

        _carry = _f14 >> 31;
        _f14 = _f14 << 1 | _carry2;

        _carry2 = _f15 >> 31;
        _f15 = _f15 << 1 | _carry;

        _f16 = _f16 << 1 | _carry2;

    }

    __r[ 0 ] = _f0;
    __r[ 1 ] = _f1;
    __r[ 2 ] = _f2;
    __r[ 3 ] = _f3;
    __r[ 4 ] = _f4;
    __r[ 5 ] = _f5;
    __r[ 6 ] = _f6;
    __r[ 7 ] = _f7;
    __r[ 8 ] = _f8;
    __r[ 9 ] = _f9;
    __r[ 10 ] = _f10;
    __r[ 11 ] = _f11;
    __r[ 12 ] = _f12;
    __r[ 13 ] = _f13;
    __r[ 14 ] = _f14;
    __r[ 15 ] = _f15;
    __r[ 16 ] = _f16;
    
}

__device__ void ed25519::cuda::right_shift( field_element __r, field_element __f, uint16_t __a ) { // >>

    uint32_t _f0 = __f[ 0 ];
    uint32_t _f1 = __f[ 1 ];
    uint32_t _f2 = __f[ 2 ];
    uint32_t _f3 = __f[ 3 ];
    uint32_t _f4 = __f[ 4 ];
    uint32_t _f5 = __f[ 5 ];
    uint32_t _f6 = __f[ 6 ];
    uint32_t _f7 = __f[ 7 ];
    uint32_t _f8 = __f[ 8 ];
    uint32_t _f9 = __f[ 9 ];
    uint32_t _f10 = __f[ 10 ];
    uint32_t _f11 = __f[ 11 ];
    uint32_t _f12 = __f[ 12 ];
    uint32_t _f13 = __f[ 13 ];
    uint32_t _f14 = __f[ 14 ];
    uint32_t _f15 = __f[ 15 ];
    uint32_t _f16 = __f[ 16 ];

    bool _carry, _carry2;

    while( __a -- ) {

        _carry = _f16 & 1;
        _f16 = _f16 >> 1;

        _carry2 = _f15 & 1;
        _f15 = _f15 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f14 & 1;
        _f14 = _f14 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f13 & 1;
        _f13 = _f13 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f12 & 1;
        _f12 = _f12 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f11 & 1;
        _f11 = _f11 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f10 & 1;
        _f10 = _f10 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f9 & 1;
        _f9 = _f9 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f8 & 1;
        _f8 = _f8 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f7 & 1;
        _f7 = _f7 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f6 & 1;
        _f6 = _f6 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f5 & 1;
        _f5 = _f5 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f4 & 1;
        _f4 = _f4 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f3 & 1;
        _f3 = _f3 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f2 & 1;
        _f2 = _f2 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f1 & 1;
        _f1 = _f1 >> 1 | ( uint32_t ) _carry << 31;

        _f0 = _f0 >> 1 | ( uint32_t ) _carry2 << 31;

    }
   
    __r[ 0 ] = _f0;
    __r[ 1 ] = _f1;
    __r[ 2 ] = _f2;
    __r[ 3 ] = _f3;
    __r[ 4 ] = _f4;
    __r[ 5 ] = _f5;
    __r[ 6 ] = _f6;
    __r[ 7 ] = _f7;
    __r[ 8 ] = _f8;
    __r[ 9 ] = _f9;
    __r[ 10 ] = _f10;
    __r[ 11 ] = _f11;
    __r[ 12 ] = _f12;
    __r[ 13 ] = _f13;
    __r[ 14 ] = _f14;
    __r[ 15 ] = _f15;
    __r[ 16 ] = _f16;

}

__device__ void ed25519::cuda::left_shift( field_element __f, uint16_t __a ) { // <<

    uint32_t _f0 = __f[ 0 ];
    uint32_t _f1 = __f[ 1 ];
    uint32_t _f2 = __f[ 2 ];
    uint32_t _f3 = __f[ 3 ];
    uint32_t _f4 = __f[ 4 ];
    uint32_t _f5 = __f[ 5 ];
    uint32_t _f6 = __f[ 6 ];
    uint32_t _f7 = __f[ 7 ];
    uint32_t _f8 = __f[ 8 ];
    uint32_t _f9 = __f[ 9 ];
    uint32_t _f10 = __f[ 10 ];
    uint32_t _f11 = __f[ 11 ];
    uint32_t _f12 = __f[ 12 ];
    uint32_t _f13 = __f[ 13 ];
    uint32_t _f14 = __f[ 14 ];
    uint32_t _f15 = __f[ 15 ];
    uint32_t _f16 = __f[ 16 ];

    bool _carry, _carry2;

    while( __a -- ) {

        _carry = _f0 >> 31;
        _f0 = _f0 << 1;

        _carry2 = _f1 >> 31;
        _f1 = _f1 << 1 | _carry;

        _carry = _f2 >> 31;
        _f2 = _f2 << 1 | _carry2;

        _carry2 = _f3 >> 31;
        _f3 = _f3 << 1 | _carry;

        _carry = _f4 >> 31;
        _f4 = _f4 << 1 | _carry2;

        _carry2 = _f5 >> 31;
        _f5 = _f5 << 1 | _carry;

        _carry = _f6 >> 31;
        _f6 = _f6 << 1 | _carry2;

        _carry2 = _f7 >> 31;
        _f7 = _f7 << 1 | _carry;

        _carry = _f8 >> 31;
        _f8 = _f8 << 1 | _carry2;

        _carry2 = _f9 >> 31;
        _f9 = _f9 << 1 | _carry;

        _carry = _f10 >> 31;
        _f10 = _f10 << 1 | _carry2;

        _carry2 = _f11 >> 31;
        _f11 = _f11 << 1 | _carry;

        _carry = _f12 >> 31;
        _f12 = _f12 << 1 | _carry2;

        _carry2 = _f13 >> 31;
        _f13 = _f13 << 1 | _carry;

        _carry = _f14 >> 31;
        _f14 = _f14 << 1 | _carry2;

        _carry2 = _f15 >> 31;
        _f15 = _f15 << 1 | _carry;

        _f16 = _f16 << 1 | _carry2;

    }
    
    __f[ 0 ] = _f0;
    __f[ 1 ] = _f1;
    __f[ 2 ] = _f2;
    __f[ 3 ] = _f3;
    __f[ 4 ] = _f4;
    __f[ 5 ] = _f5;
    __f[ 6 ] = _f6;
    __f[ 7 ] = _f7;
    __f[ 8 ] = _f8;
    __f[ 9 ] = _f9;
    __f[ 10 ] = _f10;
    __f[ 11 ] = _f11;
    __f[ 12 ] = _f12;
    __f[ 13 ] = _f13;
    __f[ 14 ] = _f14;
    __f[ 15 ] = _f15;
    __f[ 16 ] = _f16;
    
}

__device__ void ed25519::cuda::right_shift( field_element __f, uint16_t __a ) { // >>

    uint32_t _f0 = __f[ 0 ];
    uint32_t _f1 = __f[ 1 ];
    uint32_t _f2 = __f[ 2 ];
    uint32_t _f3 = __f[ 3 ];
    uint32_t _f4 = __f[ 4 ];
    uint32_t _f5 = __f[ 5 ];
    uint32_t _f6 = __f[ 6 ];
    uint32_t _f7 = __f[ 7 ];
    uint32_t _f8 = __f[ 8 ];
    uint32_t _f9 = __f[ 9 ];
    uint32_t _f10 = __f[ 10 ];
    uint32_t _f11 = __f[ 11 ];
    uint32_t _f12 = __f[ 12 ];
    uint32_t _f13 = __f[ 13 ];
    uint32_t _f14 = __f[ 14 ];
    uint32_t _f15 = __f[ 15 ];
    uint32_t _f16 = __f[ 16 ];

    bool _carry, _carry2;

    while( __a -- ) {

        _carry = _f16 & 1;
        _f16 = _f16 >> 1;

        _carry2 = _f15 & 1;
        _f15 = _f15 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f14 & 1;
        _f14 = _f14 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f13 & 1;
        _f13 = _f13 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f12 & 1;
        _f12 = _f12 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f11 & 1;
        _f11 = _f11 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f10 & 1;
        _f10 = _f10 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f9 & 1;
        _f9 = _f9 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f8 & 1;
        _f8 = _f8 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f7 & 1;
        _f7 = _f7 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f6 & 1;
        _f6 = _f6 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f5 & 1;
        _f5 = _f5 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f4 & 1;
        _f4 = _f4 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f3 & 1;
        _f3 = _f3 >> 1 | ( uint32_t ) _carry << 31;

        _carry = _f2 & 1;
        _f2 = _f2 >> 1 | ( uint32_t ) _carry2 << 31;

        _carry2 = _f1 & 1;
        _f1 = _f1 >> 1 | ( uint32_t ) _carry << 31;

        _f0 = _f0 >> 1 | ( uint32_t ) _carry2 << 31;

    }
    
    __f[ 0 ] = _f0;
    __f[ 1 ] = _f1;
    __f[ 2 ] = _f2;
    __f[ 3 ] = _f3;
    __f[ 4 ] = _f4;
    __f[ 5 ] = _f5;
    __f[ 6 ] = _f6;
    __f[ 7 ] = _f7;
    __f[ 8 ] = _f8;
    __f[ 9 ] = _f9;
    __f[ 10 ] = _f10;
    __f[ 11 ] = _f11;
    __f[ 12 ] = _f12;
    __f[ 13 ] = _f13;
    __f[ 14 ] = _f14;
    __f[ 15 ] = _f15;
    __f[ 16 ] = _f16;
    
}



__device__ bool ed25519::cuda::greather_than( field_element __f, field_element __s ) {

    uint32_t _f0 = __f[ 0 ];
    uint32_t _f1 = __f[ 1 ];
    uint32_t _f2 = __f[ 2 ];
    uint32_t _f3 = __f[ 3 ];
    uint32_t _f4 = __f[ 4 ];
    uint32_t _f5 = __f[ 5 ];
    uint32_t _f6 = __f[ 6 ];
    uint32_t _f7 = __f[ 7 ];
    uint32_t _f8 = __f[ 8 ];
    uint32_t _f9 = __f[ 9 ];
    uint32_t _f10 = __f[ 10 ];
    uint32_t _f11 = __f[ 11 ];
    uint32_t _f12 = __f[ 12 ];
    uint32_t _f13 = __f[ 13 ];
    uint32_t _f14 = __f[ 14 ];
    uint32_t _f15 = __f[ 15 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];


    if ( _f15 > _s15 ) return 1;
    if ( _f15 < _s15 ) return 0;

    if ( _f14 > _s14 ) return 1;
    if ( _f14 < _s14 ) return 0;

    if ( _f13 > _s13 ) return 1;
    if ( _f13 < _s13 ) return 0;

    if ( _f12 > _s12 ) return 1;
    if ( _f12 < _s12 ) return 0;

    if ( _f11 > _s11 ) return 1;
    if ( _f11 < _s11 ) return 0;

    if ( _f10 > _s10 ) return 1;
    if ( _f10 < _s10 ) return 0;

    if ( _f9 > _s9 ) return 1;
    if ( _f9 < _s9 ) return 0;

    if ( _f8 > _s8 ) return 1;
    if ( _f8 < _s8 ) return 0;

    if ( _f7 > _s7 ) return 1;
    if ( _f7 < _s7 ) return 0;

    if ( _f6 > _s6 ) return 1;
    if ( _f6 < _s6 ) return 0;

    if ( _f5 > _s5 ) return 1;
    if ( _f5 < _s5 ) return 0;

    if ( _f4 > _s4 ) return 1;
    if ( _f4 < _s4 ) return 0;

    if ( _f3 > _s3 ) return 1;
    if ( _f3 < _s3 ) return 0;

    if ( _f2 > _s2 ) return 1;
    if ( _f2 < _s2 ) return 0;

    if ( _f1 > _s1 ) return 1;
    if ( _f1 < _s1 ) return 0;

    if ( _f0 > _s0 ) return 1;
    if ( _f0 < _s0 ) return 0;

    return 0;

}

__device__ bool ed25519::cuda::less_than( field_element __f, field_element __s ) {

    uint32_t _f0 = __f[ 0 ];
    uint32_t _f1 = __f[ 1 ];
    uint32_t _f2 = __f[ 2 ];
    uint32_t _f3 = __f[ 3 ];
    uint32_t _f4 = __f[ 4 ];
    uint32_t _f5 = __f[ 5 ];
    uint32_t _f6 = __f[ 6 ];
    uint32_t _f7 = __f[ 7 ];
    uint32_t _f8 = __f[ 8 ];
    uint32_t _f9 = __f[ 9 ];
    uint32_t _f10 = __f[ 10 ];
    uint32_t _f11 = __f[ 11 ];
    uint32_t _f12 = __f[ 12 ];
    uint32_t _f13 = __f[ 13 ];
    uint32_t _f14 = __f[ 14 ];
    uint32_t _f15 = __f[ 15 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];


    if ( _f15 > _s15 ) return 0;
    if ( _f15 < _s15 ) return 1;

    if ( _f14 > _s14 ) return 0;
    if ( _f14 < _s14 ) return 1;

    if ( _f13 > _s13 ) return 0;
    if ( _f13 < _s13 ) return 1;

    if ( _f12 > _s12 ) return 0;
    if ( _f12 < _s12 ) return 1;

    if ( _f11 > _s11 ) return 0;
    if ( _f11 < _s11 ) return 1;

    if ( _f10 > _s10 ) return 0;
    if ( _f10 < _s10 ) return 1;

    if ( _f9 > _s9 ) return 0;
    if ( _f9 < _s9 ) return 1;

    if ( _f8 > _s8 ) return 0;
    if ( _f8 < _s8 ) return 1;

    if ( _f7 > _s7 ) return 0;
    if ( _f7 < _s7 ) return 1;

    if ( _f6 > _s6 ) return 0;
    if ( _f6 < _s6 ) return 1;

    if ( _f5 > _s5 ) return 0;
    if ( _f5 < _s5 ) return 1;

    if ( _f4 > _s4 ) return 0;
    if ( _f4 < _s4 ) return 1;

    if ( _f3 > _s3 ) return 0;
    if ( _f3 < _s3 ) return 1;

    if ( _f2 > _s2 ) return 0;
    if ( _f2 < _s2 ) return 1;

    if ( _f1 > _s1 ) return 0;
    if ( _f1 < _s1 ) return 1;

    if ( _f0 > _s0 ) return 0;
    if ( _f0 < _s0 ) return 1;

    return 0;

}

__device__ bool ed25519::cuda::greather_or_equal_to( field_element __f, field_element __s ) {

    uint32_t _f0 = __f[ 0 ];
    uint32_t _f1 = __f[ 1 ];
    uint32_t _f2 = __f[ 2 ];
    uint32_t _f3 = __f[ 3 ];
    uint32_t _f4 = __f[ 4 ];
    uint32_t _f5 = __f[ 5 ];
    uint32_t _f6 = __f[ 6 ];
    uint32_t _f7 = __f[ 7 ];
    uint32_t _f8 = __f[ 8 ];
    uint32_t _f9 = __f[ 9 ];
    uint32_t _f10 = __f[ 10 ];
    uint32_t _f11 = __f[ 11 ];
    uint32_t _f12 = __f[ 12 ];
    uint32_t _f13 = __f[ 13 ];
    uint32_t _f14 = __f[ 14 ];
    uint32_t _f15 = __f[ 15 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];


    if ( _f15 > _s15 ) return 1;
    if ( _f15 < _s15 ) return 0;

    if ( _f14 > _s14 ) return 1;
    if ( _f14 < _s14 ) return 0;

    if ( _f13 > _s13 ) return 1;
    if ( _f13 < _s13 ) return 0;

    if ( _f12 > _s12 ) return 1;
    if ( _f12 < _s12 ) return 0;

    if ( _f11 > _s11 ) return 1;
    if ( _f11 < _s11 ) return 0;

    if ( _f10 > _s10 ) return 1;
    if ( _f10 < _s10 ) return 0;

    if ( _f9 > _s9 ) return 1;
    if ( _f9 < _s9 ) return 0;

    if ( _f8 > _s8 ) return 1;
    if ( _f8 < _s8 ) return 0;

    if ( _f7 > _s7 ) return 1;
    if ( _f7 < _s7 ) return 0;

    if ( _f6 > _s6 ) return 1;
    if ( _f6 < _s6 ) return 0;

    if ( _f5 > _s5 ) return 1;
    if ( _f5 < _s5 ) return 0;

    if ( _f4 > _s4 ) return 1;
    if ( _f4 < _s4 ) return 0;

    if ( _f3 > _s3 ) return 1;
    if ( _f3 < _s3 ) return 0;

    if ( _f2 > _s2 ) return 1;
    if ( _f2 < _s2 ) return 0;

    if ( _f1 > _s1 ) return 1;
    if ( _f1 < _s1 ) return 0;

    if ( _f0 > _s0 ) return 1;
    if ( _f0 < _s0 ) return 0;

    return 1;

}

__device__ bool ed25519::cuda::less_or_equal_to( field_element __f, field_element __s ) {

    uint32_t _f0 = __f[ 0 ];
    uint32_t _f1 = __f[ 1 ];
    uint32_t _f2 = __f[ 2 ];
    uint32_t _f3 = __f[ 3 ];
    uint32_t _f4 = __f[ 4 ];
    uint32_t _f5 = __f[ 5 ];
    uint32_t _f6 = __f[ 6 ];
    uint32_t _f7 = __f[ 7 ];
    uint32_t _f8 = __f[ 8 ];
    uint32_t _f9 = __f[ 9 ];
    uint32_t _f10 = __f[ 10 ];
    uint32_t _f11 = __f[ 11 ];
    uint32_t _f12 = __f[ 12 ];
    uint32_t _f13 = __f[ 13 ];
    uint32_t _f14 = __f[ 14 ];
    uint32_t _f15 = __f[ 15 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];


    if ( _f15 > _s15 ) return 0;
    if ( _f15 < _s15 ) return 1;

    if ( _f14 > _s14 ) return 0;
    if ( _f14 < _s14 ) return 1;

    if ( _f13 > _s13 ) return 0;
    if ( _f13 < _s13 ) return 1;

    if ( _f12 > _s12 ) return 0;
    if ( _f12 < _s12 ) return 1;

    if ( _f11 > _s11 ) return 0;
    if ( _f11 < _s11 ) return 1;

    if ( _f10 > _s10 ) return 0;
    if ( _f10 < _s10 ) return 1;

    if ( _f9 > _s9 ) return 0;
    if ( _f9 < _s9 ) return 1;

    if ( _f8 > _s8 ) return 0;
    if ( _f8 < _s8 ) return 1;

    if ( _f7 > _s7 ) return 0;
    if ( _f7 < _s7 ) return 1;

    if ( _f6 > _s6 ) return 0;
    if ( _f6 < _s6 ) return 1;

    if ( _f5 > _s5 ) return 0;
    if ( _f5 < _s5 ) return 1;

    if ( _f4 > _s4 ) return 0;
    if ( _f4 < _s4 ) return 1;

    if ( _f3 > _s3 ) return 0;
    if ( _f3 < _s3 ) return 1;

    if ( _f2 > _s2 ) return 0;
    if ( _f2 < _s2 ) return 1;

    if ( _f1 > _s1 ) return 0;
    if ( _f1 < _s1 ) return 1;

    if ( _f0 > _s0 ) return 0;
    if ( _f0 < _s0 ) return 1;

    return 1;

}

__device__ bool ed25519::cuda::equal_to( field_element __f, field_element __s ) {

    uint32_t _f0 = __f[ 0 ];
    uint32_t _f1 = __f[ 1 ];
    uint32_t _f2 = __f[ 2 ];
    uint32_t _f3 = __f[ 3 ];
    uint32_t _f4 = __f[ 4 ];
    uint32_t _f5 = __f[ 5 ];
    uint32_t _f6 = __f[ 6 ];
    uint32_t _f7 = __f[ 7 ];
    uint32_t _f8 = __f[ 8 ];
    uint32_t _f9 = __f[ 9 ];
    uint32_t _f10 = __f[ 10 ];
    uint32_t _f11 = __f[ 11 ];
    uint32_t _f12 = __f[ 12 ];
    uint32_t _f13 = __f[ 13 ];
    uint32_t _f14 = __f[ 14 ];
    uint32_t _f15 = __f[ 15 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];


    if ( _f15 != _s15 ) return 0;

    if ( _f14 != _s14 ) return 0;

    if ( _f13 != _s13 ) return 0;

    if ( _f12 != _s12 ) return 0;

    if ( _f11 != _s11 ) return 0;

    if ( _f10 != _s10 ) return 0;

    if ( _f9 != _s9 ) return 0;

    if ( _f8 != _s8 ) return 0;

    if ( _f7 != _s7 ) return 0;

    if ( _f6 != _s6 ) return 0;

    if ( _f5 != _s5 ) return 0;

    if ( _f4 != _s4 ) return 0;

    if ( _f3 != _s3 ) return 0;

    if ( _f2 != _s2 ) return 0;

    if ( _f1 != _s1 ) return 0;

    if ( _f0 != _s0 ) return 0;

    return 1;

}

__device__ bool ed25519::cuda::not_equal_to( field_element __f, field_element __s ) {

    uint32_t _f0 = __f[ 0 ];
    uint32_t _f1 = __f[ 1 ];
    uint32_t _f2 = __f[ 2 ];
    uint32_t _f3 = __f[ 3 ];
    uint32_t _f4 = __f[ 4 ];
    uint32_t _f5 = __f[ 5 ];
    uint32_t _f6 = __f[ 6 ];
    uint32_t _f7 = __f[ 7 ];
    uint32_t _f8 = __f[ 8 ];
    uint32_t _f9 = __f[ 9 ];
    uint32_t _f10 = __f[ 10 ];
    uint32_t _f11 = __f[ 11 ];
    uint32_t _f12 = __f[ 12 ];
    uint32_t _f13 = __f[ 13 ];
    uint32_t _f14 = __f[ 14 ];
    uint32_t _f15 = __f[ 15 ];

    uint32_t _s0 = __s[ 0 ];
    uint32_t _s1 = __s[ 1 ];
    uint32_t _s2 = __s[ 2 ];
    uint32_t _s3 = __s[ 3 ];
    uint32_t _s4 = __s[ 4 ];
    uint32_t _s5 = __s[ 5 ];
    uint32_t _s6 = __s[ 6 ];
    uint32_t _s7 = __s[ 7 ];
    uint32_t _s8 = __s[ 8 ];
    uint32_t _s9 = __s[ 9 ];
    uint32_t _s10 = __s[ 10 ];
    uint32_t _s11 = __s[ 11 ];
    uint32_t _s12 = __s[ 12 ];
    uint32_t _s13 = __s[ 13 ];
    uint32_t _s14 = __s[ 14 ];
    uint32_t _s15 = __s[ 15 ];


    if ( _f15 != _s15 ) return 1;

    if ( _f14 != _s14 ) return 1;

    if ( _f13 != _s13 ) return 1;

    if ( _f12 != _s12 ) return 1;

    if ( _f11 != _s11 ) return 1;

    if ( _f10 != _s10 ) return 1;

    if ( _f9 != _s9 ) return 1;

    if ( _f8 != _s8 ) return 1;

    if ( _f7 != _s7 ) return 1;

    if ( _f6 != _s6 ) return 1;

    if ( _f5 != _s5 ) return 1;

    if ( _f4 != _s4 ) return 1;

    if ( _f3 != _s3 ) return 1;

    if ( _f2 != _s2 ) return 1;

    if ( _f1 != _s1 ) return 1;

    if ( _f0 != _s0 ) return 1;

    return 0;

}

__device__ bool ed25519::cuda::is_zero( field_element __f ) {

    uint32_t _f0 = __f[ 0 ];
    uint32_t _f1 = __f[ 1 ];
    uint32_t _f2 = __f[ 2 ];
    uint32_t _f3 = __f[ 3 ];
    uint32_t _f4 = __f[ 4 ];
    uint32_t _f5 = __f[ 5 ];
    uint32_t _f6 = __f[ 6 ];
    uint32_t _f7 = __f[ 7 ];
    uint32_t _f8 = __f[ 8 ];
    uint32_t _f9 = __f[ 9 ];
    uint32_t _f10 = __f[ 10 ];
    uint32_t _f11 = __f[ 11 ];
    uint32_t _f12 = __f[ 12 ];
    uint32_t _f13 = __f[ 13 ];
    uint32_t _f14 = __f[ 14 ];
    uint32_t _f15 = __f[ 15 ];

    if ( _f0 ) return 0;
    if ( _f1 ) return 0;
    if ( _f2 ) return 0;
    if ( _f3 ) return 0;
    if ( _f4 ) return 0;
    if ( _f5 ) return 0;
    if ( _f6 ) return 0;
    if ( _f7 ) return 0;
    if ( _f8 ) return 0;
    if ( _f9 ) return 0;
    if ( _f10 ) return 0;
    if ( _f11 ) return 0;
    if ( _f12 ) return 0;
    if ( _f13 ) return 0;
    if ( _f14 ) return 0;
    if ( _f15 ) return 0;

    return 1;

}

__device__ bool ed25519::cuda::is_not_zero( field_element __f ) {

    uint32_t _f0 = __f[ 0 ];
    uint32_t _f1 = __f[ 1 ];
    uint32_t _f2 = __f[ 2 ];
    uint32_t _f3 = __f[ 3 ];
    uint32_t _f4 = __f[ 4 ];
    uint32_t _f5 = __f[ 5 ];
    uint32_t _f6 = __f[ 6 ];
    uint32_t _f7 = __f[ 7 ];
    uint32_t _f8 = __f[ 8 ];
    uint32_t _f9 = __f[ 9 ];
    uint32_t _f10 = __f[ 10 ];
    uint32_t _f11 = __f[ 11 ];
    uint32_t _f12 = __f[ 12 ];
    uint32_t _f13 = __f[ 13 ];
    uint32_t _f14 = __f[ 14 ];
    uint32_t _f15 = __f[ 15 ];

    if ( _f0 ) return 1;
    if ( _f1 ) return 1;
    if ( _f2 ) return 1;
    if ( _f3 ) return 1;
    if ( _f4 ) return 1;
    if ( _f5 ) return 1;
    if ( _f6 ) return 1;
    if ( _f7 ) return 1;
    if ( _f8 ) return 1;
    if ( _f9 ) return 1;
    if ( _f10 ) return 1;
    if ( _f11 ) return 1;
    if ( _f12 ) return 1;
    if ( _f13 ) return 1;
    if ( _f14 ) return 1;
    if ( _f15 ) return 1;

    return 0;

}



__device__ void ed25519::cuda::print( field_element __data ) {

    printf( "%08x", __data[ 16 ] );
    printf( "%08x", __data[ 15 ] );
    printf( "%08x", __data[ 14 ] );
    printf( "%08x", __data[ 13 ] );
    printf( "%08x", __data[ 12 ] );
    printf( "%08x", __data[ 11 ] );
    printf( "%08x", __data[ 10 ] );
    printf( "%08x", __data[ 9 ] );
    printf( "%08x", __data[ 8 ] );
    printf( "%08x", __data[ 7 ] );
    printf( "%08x", __data[ 6 ] );
    printf( "%08x", __data[ 5 ] );
    printf( "%08x", __data[ 4 ] );
    printf( "%08x", __data[ 3 ] );
    printf( "%08x", __data[ 2 ] );
    printf( "%08x", __data[ 1 ] );
    printf( "%08x\n", __data[ 0 ] );

}

__device__ void ed25519::cuda::print_integers( field_element __data ) {

    printf( "%d, ", __data[ 0 ] );
    printf( "%d, ", __data[ 1 ] );
    printf( "%d, ", __data[ 2 ] );
    printf( "%d, ", __data[ 3 ] );
    printf( "%d, ", __data[ 4 ] );
    printf( "%d, ", __data[ 5 ] );
    printf( "%d, ", __data[ 6 ] );
    printf( "%d, ", __data[ 7 ] );
    printf( "%d, ", __data[ 9 ] );
    printf( "%d, ", __data[ 10 ] );
    printf( "%d, ", __data[ 11 ] );
    printf( "%d, ", __data[ 12 ] );
    printf( "%d, ", __data[ 13 ] );
    printf( "%d, ", __data[ 14 ] );
    printf( "%d\n", __data[ 15 ] );
    printf( "%d\n", __data[ 16 ] );

}

__device__ void ed25519::cuda::set_hex( field_element __f, char* __hex_data ) {

    // Function to get the actual value of the hexadecimal char
    auto _hexadecimal_value =
        []( char __hex ) {

            switch ( __hex )
            {
                case '0': return 0; break;
                case '1': return 1; break;
                case '2': return 2; break;
                case '3': return 3; break;
                case '4': return 4; break;
                case '5': return 5; break;
                case '6': return 6; break;
                case '7': return 7; break;
                case '8': return 8; break;
                case '9': return 9; break;
                case 'A': case 'a': return 10; break;
                case 'B': case 'b': return 11; break;
                case 'C': case 'c': return 12; break;
                case 'D': case 'd': return 13; break;
                case 'E': case 'e': return 14; break;
                case 'F': case 'f': return 15; break;
                default: break;
            }

            return -1;

        };

    // Loops throught each caracther and sets the value into the data then shifts it by 4 ( number of bits used by single character )
    while( *__hex_data ) {

        if ( *__hex_data == ' ' ) { __hex_data ++; continue; }

        // Shift 4 bits
        left_shift( __f, 4 );

        // Sets the value into data
        __f[ 0 ] |=
            _hexadecimal_value( *__hex_data );

        __hex_data ++;

    }


}

