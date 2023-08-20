

#include "pre_computed_values.cuh"
#include "field_element.cuh"
#include "group_element.cuh"

#include <stdio.h>



__device__ void ed25519::cuda::set_extended_coordinates( group_element_ec* __ec, group_element_nc __nc ) {

    uint32_t __nc_x0 = __nc.x[ 0 ];
    uint32_t __nc_x1 = __nc.x[ 1 ];
    uint32_t __nc_x2 = __nc.x[ 2 ];
    uint32_t __nc_x3 = __nc.x[ 3 ];
    uint32_t __nc_x4 = __nc.x[ 4 ];
    uint32_t __nc_x5 = __nc.x[ 5 ];
    uint32_t __nc_x6 = __nc.x[ 6 ];
    uint32_t __nc_x7 = __nc.x[ 7 ];
    uint32_t __nc_x8 = __nc.x[ 8 ];
    uint32_t __nc_x9 = __nc.x[ 9 ];
    uint32_t __nc_x10 = __nc.x[ 10 ];
    uint32_t __nc_x11 = __nc.x[ 11 ];
    uint32_t __nc_x12 = __nc.x[ 12 ];
    uint32_t __nc_x13 = __nc.x[ 13 ];
    uint32_t __nc_x14 = __nc.x[ 14 ];
    uint32_t __nc_x15 = __nc.x[ 15 ];

    uint32_t __nc_y0 = __nc.y[ 0 ];
    uint32_t __nc_y1 = __nc.y[ 1 ];
    uint32_t __nc_y2 = __nc.y[ 2 ];
    uint32_t __nc_y3 = __nc.y[ 3 ];
    uint32_t __nc_y4 = __nc.y[ 4 ];
    uint32_t __nc_y5 = __nc.y[ 5 ];
    uint32_t __nc_y6 = __nc.y[ 6 ];
    uint32_t __nc_y7 = __nc.y[ 7 ];
    uint32_t __nc_y8 = __nc.y[ 8 ];
    uint32_t __nc_y9 = __nc.y[ 9 ];
    uint32_t __nc_y10 = __nc.y[ 10 ];
    uint32_t __nc_y11 = __nc.y[ 11 ];
    uint32_t __nc_y12 = __nc.y[ 12 ];
    uint32_t __nc_y13 = __nc.y[ 13 ];
    uint32_t __nc_y14 = __nc.y[ 14 ];
    uint32_t __nc_y15 = __nc.y[ 15 ];


    __ec->X[ 0 ] = __nc_x0;
    __ec->X[ 1 ] = __nc_x1;
    __ec->X[ 2 ] = __nc_x2;
    __ec->X[ 3 ] = __nc_x3;
    __ec->X[ 4 ] = __nc_x4;
    __ec->X[ 5 ] = __nc_x5;
    __ec->X[ 6 ] = __nc_x6;
    __ec->X[ 7 ] = __nc_x7;
    __ec->X[ 8 ] = __nc_x8;
    __ec->X[ 9 ] = __nc_x9;
    __ec->X[ 10 ] = __nc_x10;
    __ec->X[ 11 ] = __nc_x11;
    __ec->X[ 12 ] = __nc_x12;
    __ec->X[ 13 ] = __nc_x13;
    __ec->X[ 14 ] = __nc_x14;
    __ec->X[ 15 ] = __nc_x15;

    __ec->Y[ 0 ] = __nc_y0;
    __ec->Y[ 1 ] = __nc_y1;
    __ec->Y[ 2 ] = __nc_y2;
    __ec->Y[ 3 ] = __nc_y3;
    __ec->Y[ 4 ] = __nc_y4;
    __ec->Y[ 5 ] = __nc_y5;
    __ec->Y[ 6 ] = __nc_y6;
    __ec->Y[ 7 ] = __nc_y7;
    __ec->Y[ 8 ] = __nc_y8;
    __ec->Y[ 9 ] = __nc_y9;
    __ec->Y[ 10 ] = __nc_y10;
    __ec->Y[ 11 ] = __nc_y11;
    __ec->Y[ 12 ] = __nc_y12;
    __ec->Y[ 13 ] = __nc_y13;
    __ec->Y[ 14 ] = __nc_y14;
    __ec->Y[ 15 ] = __nc_y15;

    __ec->Z[ 0 ] = 1;
    __ec->Z[ 1 ] = 0;
    __ec->Z[ 2 ] = 0;
    __ec->Z[ 3 ] = 0;
    __ec->Z[ 4 ] = 0;
    __ec->Z[ 5 ] = 0;
    __ec->Z[ 6 ] = 0;
    __ec->Z[ 7 ] = 0;
    __ec->Z[ 8 ] = 0;
    __ec->Z[ 9 ] = 0;
    __ec->Z[ 10 ] = 0;
    __ec->Z[ 11 ] = 0;
    __ec->Z[ 12 ] = 0;
    __ec->Z[ 13 ] = 0;
    __ec->Z[ 14 ] = 0;
    __ec->Z[ 15 ] = 0;

    multiplication_mod( __ec->T, __ec->X, __ec->Y );

}

__device__ void ed25519::cuda::set_normal_coordinates( group_element_nc* __nc, group_element_ec __ec ) {

    field_element _Z_inverse { 0 }; inverse( _Z_inverse, __ec.Z );

    multiplication_mod( __nc->x, __ec.X, _Z_inverse );
    multiplication_mod( __nc->y, __ec.Y, _Z_inverse );

}

__device__ void ed25519::cuda::set_neutral_point( group_element_ec* __ec ) { __ec->Y[ 0 ] = 1; __ec->Z[ 0 ] = 1; }



__device__ void ed25519::cuda::point_addition( group_element_ec* __r, group_element_ec __f, group_element_ec __s ) {

    field_element _two { 2 };

    field_element _f_y_minus_a; subtraction_mod( _f_y_minus_a, __f.Y, __f.X );
    field_element _s_y_minus_a; subtraction_mod( _s_y_minus_a, __s.Y, __s.X );

    field_element _f_y_add_a; addition_mod( _f_y_add_a, __f.Y, __f.X );
    field_element _s_y_add_a; addition_mod( _s_y_add_a, __s.Y, __s.X );

    field_element _A; multiplication_mod( _A, _f_y_minus_a, _s_y_minus_a ); 
    field_element _B; multiplication_mod( _B, _f_y_add_a, _s_y_add_a ); 

    field_element _C; multiplication_mod( _C, __f.T, _two ); multiplication_mod( _C, _C, d ); multiplication_mod( _C, _C, __s.T ); 

    field_element _D; multiplication_mod( _D, __f.Z, _two ); multiplication_mod( _D, _D, __s.Z ); 

    field_element _E; subtraction_mod( _E, _B, _A ); 
    field_element _F; subtraction_mod( _F, _D, _C ); 
    field_element _G; addition_mod( _G, _D, _C ); 
    field_element _H; addition_mod( _H, _B, _A ); 

    multiplication_mod( __r->X, _E, _F ); 
    multiplication_mod( __r->Y, _G, _H ); 
    multiplication_mod( __r->Z, _F, _G ); 
    multiplication_mod( __r->T, _E, _H ); 

}

__device__ void ed25519::cuda::scalar_multiplication( group_element_ec* __r, group_element_ec __point, field_element __scalar ) {

    field_element _scalar_copy; copy( _scalar_copy, __scalar ); 

    set_neutral_point( __r );

    while( is_not_zero( _scalar_copy ) ) {

        if( _scalar_copy[ 0 ] & 0x01 ) point_addition( __r, *__r, __point );

        point_addition( &__point, __point, __point );

        right_shift( _scalar_copy, 1 );

    }

}

__device__ bool ed25519::cuda::point_equal( group_element_ec __f, group_element_ec __s ) {

    field_element __f_x_s_z, __s_x_f_z, _check; 

    multiplication_mod( __f_x_s_z, __f.X, __s.Z ); multiplication_mod( __s_x_f_z, __s.X, __f.Z );

    subtraction( _check, __f_x_s_z, __s_x_f_z );

    if ( is_not_zero( _check ) ) return 0;

    field_element __f_y_s_z, __s_y_f_z; 

    multiplication_mod( __f_y_s_z, __f.X, __s.Z ); multiplication_mod( __s_y_f_z, __s.X, __f.Z );

    subtraction( _check, __f_y_s_z, __s_y_f_z );

    if ( is_not_zero( _check ) ) return 0;

    return 1;

}



__device__ void ed25519::cuda::encode( void* __encode, group_element_ec __ec ) {

    group_element_nc _nc; set_normal_coordinates( &_nc, __ec );

    memcpy( __encode, _nc.y, 32 ); ( ( uint32_t* ) __encode )[ 7 ] |= _nc.x[ 0 ] << 31;

}

__device__ void ed25519::cuda::decode( group_element_ec* __ec, void* __encoded_point ) {

    zeralise( __ec->X ); zeralise( __ec->Y ); zeralise( __ec->Z ); zeralise( __ec->T );

    memcpy( __ec->Y, __encoded_point, 32 );

    bool _sign = __ec->Y[ 7 ] >> 31; 

    __ec->Y[ 7 ] <<= 1; __ec->Y[ 7 ] >>= 1;

    if ( greather_or_equal_to( __ec->Y, prime ) ) return;

    recover_x_coordinate( __ec->X, __ec->Y, _sign );

    zeralise( __ec->T ); zeralise( __ec->Z );

    __ec->Z[ 0 ] = 1; multiplication_mod( __ec->T, __ec->X, __ec->Y );

}

__device__ void ed25519::cuda::recover_x_coordinate( void* __x, field_element __y, bool __sign ) {

    zeralise( ( uint32_t* ) __x );

    field_element _one { 1 }, _two { 2 }, _three { 3 }, _five { 5 }, _seven { 7 };
    field_element _y_pow_2; multiplication_mod( _y_pow_2, __y, __y );

    field_element _v { 0 }, _u { 0 };

    subtraction( _u, _y_pow_2, _one );

    multiplication_mod( _v, d, _y_pow_2 ); addition( _v, _one );

    field_element _v_pow3 { 0 }; pow_mod( _v_pow3, _v, _three );

    field_element _x { 0 }; 

    pow_mod( _x, _v, _seven ); multiplication_mod( _x, _x, _u ); 

    field_element _exp; subtraction( _exp, prime, _five ); right_shift( _exp, 3 );

    pow_mod( _x, _exp );

    multiplication_mod( _x, _x, _v_pow3 );

    multiplication_mod( _x, _x, _u );

    field_element _check; multiplication_mod( _check, _x, _x ); multiplication_mod( _check, _check, _v );

    if ( equal_to( _check, _u ) );

    else {

        negative( _u );

        if ( not_equal_to( _check, _u ) ) return;

        field_element _exp; subtraction( _exp, prime, _one ); right_shift( _exp, 2 ); 
        
        field_element _two_pow { 0 }; pow_mod( _two_pow, _two, _exp );

        multiplication_mod( _x, _x, _two_pow ); 

    }

    if ( is_zero( _x ) && __sign ) return;

    if ( __sign != ( _x[ 0 ] & 1 ) ) subtraction( _x, prime, _x );

    memcpy( __x, _x, 32 );

}


