#include <iostream>
#include <stdio.h>
#include "SobelMatrixMultiplier.h"

	const int _horizontal_sobel_operator[ARRAY_SIZE][ARRAY_SIZE]=
	{
			{ 1,  2,  1},
			{ 0,  0,  0},
			{-1, -2, -1}
	};

	const int _vertical_sobel_operator[ARRAY_SIZE][ARRAY_SIZE] =
	{
			{ 1,  0, -1},
			{ 2,  0, -2},
			{ 1,  0, -1}
	};

int main(int argc, char** argv){
	printf("{\n");
	for(int i = 0; i < 3; i++){
		printf("{%d, %d, %d},\n", _vertical_sobel_operator[i][0], _vertical_sobel_operator[i][1], _vertical_sobel_operator[i][2]);
	}
	printf("}\n");
	printf("{\n");
		for(int i = 0; i < 3; i++){
			printf("{%d, %d, %d},\n", _horizontal_sobel_operator[i][0], _horizontal_sobel_operator[i][1], _horizontal_sobel_operator[i][2]);
		}
	printf("}\n");
	int data[ARRAY_SIZE][ARRAY_SIZE] =
	{
			{1, 7 ,1},
			{7, 0, 0},
			{1, 0, 0}
	};

	double sw_result = 0;
	double hw_result = 0;
	int vert_result = 0;
	int horiz_result = 0;
	for(int i = 0; i < ARRAY_SIZE; i++){
		for(int o = 0; o < ARRAY_SIZE; o++){
			vert_result += data[i][o] * _vertical_sobel_operator[i][o];
			horiz_result += data[i][o] * _horizontal_sobel_operator[i][o];
		}
	}
	sw_result = sqrt(pow(vert_result,2) + pow(horiz_result, 2));
#ifdef HW_COSIM
	hw_result = getConvolutionResult(data);
#endif
	printf("Sw_result: %d HW_result: %d\n", (int)sw_result, (int)hw_result);
	if((int)sw_result != (int)hw_result){
		printf("Error in calculation!\n");
	}
}
