#include "powerFuntion.h"

int power(int number, int exponent){
	int i;
	int result = 0;
	Power_Loop: for(i = 0; i < exponent - 1; i++){
		result += number * number;
	}
	return result;
}
