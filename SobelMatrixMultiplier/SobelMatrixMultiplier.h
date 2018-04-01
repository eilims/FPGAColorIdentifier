#ifndef __SOBELMATRIXMULTIPLIER_H__
#define __SOBELMATRIXMULTIPLIER_H__

#include <cmath>
#include <unistd.h>

#define HW_COSIM

class SobelMatrixMultipler {

private:
	const uint8_t _vertical_sobel_operator[][] =
	{
			{ 1,  0, -1},
			{ 2,  0, -2},
			{ 1,  0, -1}
	};

	const uint8_t _horizontal_sobel_operator[][]=
	{
			{ 1,  2,  1},
			{ 0,  0,  0},
			{-1, -2, -1}
	};

	//Returns the resulting directional pixel edge coefficient
	int getVerticalResult(int** array);
	int getHorizontalResult(int** array);

	//Combines the horizontal and vertical results by squaring both and taking the square root of the sum
	uint16_t combineOperatorResults(int verticalResult, int horizontalResult);


public:
	//Only usable function by users
	uint16_t getConvolutionResult(int** array);

	//Getters
	void getHorizontalSobelOperator(uint8_t** array);
	void getVerticalSobelOperator(uint8_t** array);
};
