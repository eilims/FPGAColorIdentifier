#ifndef __DATA_TYPES_H__
#define __DATA_TYPES_H__

#include <ap_int.h>

#define IN_NUMBER_LENGTH 32
#define IN_CHARACTERISTIC_BIT_LENGTH 24
#define OUT_NUMBER_LENGTH 32
#define OUT_CHARACTERISTIC_BIT_LENGTH 24

typedef ap_ufixed<IN_NUMBER_LENGTH, IN_CHARACTERISTIC_BIT_LENGTH> in_data_t;
typedef ap_ufixed<OUT_NUMBER_LENGTH, OUT_CHARACTERISTIC_BIT_LENGTH> out_data_t;

#endif
