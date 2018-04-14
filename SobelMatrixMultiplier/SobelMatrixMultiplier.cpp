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

//DEPRACATED USE getConvolutionResult
//Calculates the edge coefficient for the vertical edge
//Uses the Sobel Operator vertical version to see any vertical changes
int getVerticalResult(int array[ARRAY_SIZE][ARRAY_SIZE]) {
	int summation = 0;
	Row_Vert: for (int row = 0; row < ARRAY_SIZE; row++) {
		Col_Vert: for (int col = 0; col < ARRAY_SIZE; col++) {
			summation += array[row][col] * _vertical_sobel_operator[row][col];
		}
	}
	return summation;
}

//DEPRACATED USE getConvolutionResult
//Calculates the edge coefficient for the horizontal edge
//Uses the Sobel Operator horizontal version to see any horizontal changes
int getHorizontalResult(int array[ARRAY_SIZE][ARRAY_SIZE]) {
	int summation = 0;
	Row_Horiz: for (int row = 0; row < ARRAY_SIZE; row++) {
		Col_Horiz: for (int col = 0; col < ARRAY_SIZE; col++) {
			summation += array[row][col] * _horizontal_sobel_operator[row][col];
		}
	}
	return summation;
}

int power(int number, int exponent){
	int i;
	int result = 0;
	Power_Loop: for(i = 0; i < exponent - 1; i++){
		result += number * number;
	}
	return result;
}

//Calculates the true edge coefficient by combining the Sobel Operator vertical and horizontal coefficients
//Uses Pythagorean Theorem to find the desired result
//Uses a square root. Ask Mirzaei for assistance here
int combineOperatorResults(int verticalResult, int horizontalResult) {
	in_data_t verticalPower = power(verticalResult, 2);
	in_data_t horizontalPower = power(horizontalResult, 2);
	in_data_t input = verticalPower + horizontalPower;
	out_data_t result;
	fxp_sqrt(result, input);
	return result.to_int();
}

//DEPRACATED USE getConvolutionResult
//Calculates and returns the true pixel edge coefficient
//Only public function that does calculations
//int getConvolutionResult2(int array[ARRAY_SIZE][ARRAY_SIZE]){
//	//split into single additions
//	return (int)combineOperatorResults(getVerticalResult(array), getHorizontalResult(array));
//}

//Calculates and returns the true pixel edge coefficient
//Only function that does calculations user should access
int getConvolutionResult(int array[ARRAY_SIZE][ARRAY_SIZE]){
	int verticalResult = 0;
	int horizontalResult = 0;
	//Parsing through array and calculating values
	//Calculates the edge coefficient for the both vertical and horizontal edges
	//Uses the Sobel Operator horizontal version to see any vertical or horizontal changes
	Row_Conv: for(int i = 0; i < ARRAY_SIZE; i++){
		Col_Conv: for(int o = 0; o < ARRAY_SIZE; o++){
			//To reduce memory access save array data to variable
			int data = array[i][o];
			//Accumalate coefficients
			verticalResult += data * _vertical_sobel_operator[i][o];
			horizontalResult += data * _horizontal_sobel_operator[i][o];
		}
	}
	return combineOperatorResults(verticalResult, horizontalResult);
}
