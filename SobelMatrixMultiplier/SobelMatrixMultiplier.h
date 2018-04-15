#ifndef __SOBELMATRIXMULTIPLIER_H__
#define __SOBELMATRIXMULTIPLIER_H__

#include <stdint.h>
#include <ap_int.h>
#include "fxp_sqrt.h"
#include "dataTypes.h"
#include "powerFuntion.h"

#define HW_COSIM
#define ARRAY_SIZE 3

	//Returns the resulting directional pixel edge coefficient
	int getVerticalResult(int array[ARRAY_SIZE][ARRAY_SIZE]);
	int getHorizontalResult(int array[ARRAY_SIZE][ARRAY_SIZE]);

	//Combines the horizontal and vertical results by squaring both and taking the square root of the sum
	int combineOperatorResults(int verticalResult, int horizontalResult);

	//Only usable function by users
	int getConvolutionResult(int array[ARRAY_SIZE][ARRAY_SIZE]);


#endif
