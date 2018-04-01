#include "SobelMatrixMultiplier.h"

//Calculates the edge coefficient for the vertical edge
//Uses the Sobel Operator vertical version to see any vertical changes
int SobelMatrixMultipler::getVerticalResult(int** array) {
	int summation;
	Row: for (int row = 0; row < 3; row++) {
		Col: for (int col = 0; col < 3; col++) {
			summation += array[row][col] * this->_vertical_sobel_operator[row][col];
		}
	}
	return summation;
}

//Calculates the edge coefficient for the horizontal edge
//Uses the Sobel Operator horizontal version to see any horizontal changes
int SobelMatrixMultipler::getHorizontalResult(int** array) {
	int summation;
	Row: for (int row = 0; row < 3; row++) {
		Col: for (int col = 0; col < 3; col++) {
			summation += array[row][col] * this->_horizontal_sobel_operator[row][col];
		}
	}
	return summation;
}

//Calculates the true edge coefficient by combining the Sobel Operator vertical and horizontal coefficients
//Uses Pythagorean Theorem to find the desired result
//Uses a square root. Ask Mirzaei for assistance here
uint16_t SobelMatrixMultipler::combineOperatorResults(int verticalResult, int horizontalResult) {

}

//Calculates and returns the true pixel edge coefficient
//Only public function that does calculations
uint16_t SobelMatrixMultipler::getConvolutionResult(int** array){
	return combineOperatorResults(getVerticalResult(array), getHorizontalResult(array));
}

//Getters

void SobelMatrixMultipler::getHorizontalSobelOperator(uint8_t** array){
	array = _horizontal_sobel_operator;
}

void SobelMatrixMultipler::getVerticalSobelOperator(uint8_t** array){
	array = _vertical_sobel_operator;
}
