# 1 "C:/Users/db217620/Repositories/FPGAColorIdentifier/ColorComparator/powerFunction.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/db217620/Repositories/FPGAColorIdentifier/ColorComparator/powerFunction.cpp"
# 1 "C:/Users/db217620/Repositories/FPGAColorIdentifier/ColorComparator/powerFuntion.h" 1



int power(int number, int exponent);
# 2 "C:/Users/db217620/Repositories/FPGAColorIdentifier/ColorComparator/powerFunction.cpp" 2

int power(int number, int exponent){
 int i;
 int result = 0;
 Power_Loop: for(i = 0; i < exponent - 1; i++){
  result += number * number;
 }
 return result;
}
