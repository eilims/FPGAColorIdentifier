#ifndef __SOBELMATRIXMULTIPLIER_H__
#define __SOBELMATRIXMULTIPLIER_H__

#include <ap_int.h>
#include <stdint.h>
#include "fxp_sqrt.h"

#define HW_COSIM
#define ARRAY_SIZE 3
#define IN_NUMBER_LENGTH 32
#define IN_CHARACTERISTIC_BIT_LENGTH 24
#define OUT_NUMBER_LENGTH 32
#define OUT_CHARACTERISTIC_BIT_LENGTH 24

typedef ap_ufixed<IN_NUMBER_LENGTH, IN_CHARACTERISTIC_BIT_LENGTH> in_data_t;
typedef ap_ufixed<OUT_NUMBER_LENGTH, OUT_CHARACTERISTIC_BIT_LENGTH> out_data_t;

	//Returns the resulting directional pixel edge coefficient
	int getVerticalResult(int array[ARRAY_SIZE][ARRAY_SIZE]);
	int getHorizontalResult(int array[ARRAY_SIZE][ARRAY_SIZE]);

	//Combines the horizontal and vertical results by squaring both and taking the square root of the sum
	int combineOperatorResults(int verticalResult, int horizontalResult);

	//Only usable function by users
	int getConvolutionResult(int array[ARRAY_SIZE][ARRAY_SIZE]);


#endif
