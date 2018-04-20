#pragma line 1 "C:/Users/db217620/Repositories/FPGAColorIdentifier/ColorComparator/powerFunction.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "C:/Users/db217620/Repositories/FPGAColorIdentifier/ColorComparator/powerFunction.cpp"
#pragma line 1 "C:/Users/db217620/Repositories/FPGAColorIdentifier/ColorComparator/powerFuntion.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
int power(int number, int exponent);
#pragma line 2 "C:/Users/db217620/Repositories/FPGAColorIdentifier/ColorComparator/powerFunction.cpp" 2
#pragma empty_line
int power(int number, int exponent){
 int i;
 int result = 0;
 Power_Loop: for(i = 0; i < exponent - 1; i++){
  result += number * number;
 }
 return result;
}
