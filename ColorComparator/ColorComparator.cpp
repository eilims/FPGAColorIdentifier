#include "ColorComparator.h"

//Red, green, blue, Magenta, yellow. cyan
const int _color_array[] = {0x00FF0000, 0x0000FF00, 0x000000FF, 0x00FF00FF, 0x00FFFF00, 0x0000FFFF};

//Returns the distance between the two pixel colors that are passed in as parameters
int getColorDistance(int pixel, int color){
	//Shifting over all values form the passed in pixels
	int pixelRed = (pixel & 0x00FF0000) >> 16;
	int pixelGreen = (pixel & 0x0000FF00) >> 8;
	int pixelBlue = (pixel & 0x000000FF);
	int colorRed = (color & 0x00FF0000) >> 16;
	int colorGreen = (color & 0x0000FF00) >> 8;
	int colorBlue = (color & 0x000000FF);
	//Multipliers are added as weighting for more powerful numbers such as red
	in_data_t pixelRedPower = 2 * power(pixelRed - colorRed, 2);
	in_data_t pixelGreenPower = 4 * power(pixelGreen - colorGreen, 2);
	in_data_t pixelBluePower = 3 * power(pixelBlue - colorBlue, 2);
	in_data_t powerSummation = pixelRedPower + pixelGreenPower + pixelBluePower;
	out_data_t result;
	fxp_sqrt(result, powerSummation);
	return result.to_int();
}

int getPixelClassification(int pixel){
	int i;
	int minimumDistanceIndex = 0;
	int minimumDistance = INT_MAX;
	PIXEL_COLOR_LOOP: for(i = 0; i < COLR_ARRAY_SIZE; i++){
		int distance = getColorDistance(pixel, _color_array[i]);
		if(distance < minimumDistance){
			minimumDistance = distance;
			minimumDistanceIndex = i;
		}
	}
	return minimumDistanceIndex;
}
