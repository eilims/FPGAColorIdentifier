#include "ColorComparator.h"

//Red, green, blue, Magenta, yellow. cyan
const int _color_array[] = { 0x00FF0000, 0x0000FF00, 0x000000FF, 0x00FF00FF,
		0x00FFFF00, 0x0000FFFF };
const ap_uint<24> _color_array_stream[] = { 0xFF0000, 0x0000FF, 0x00FF00,
		0xFFFF00, 0xFF00FF, 0x00FFFF };
const int _color_array_distance[] = { 0x00FF0000, 0x0000FF00, 0x000000FF,
		0x00FF00FF, 0x00FFFF00, 0x0000FFFF };

//Returns the distance between the two pixel colors that are passed in as parameters
int getColorDistance(int pixel, int color) {
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

int getColorDistance_Stream(ap_uint<24> pixel, ap_uint<24> color) {
	//Shifting over all values form the passed in pixels
	ap_uint<8> pixelRed = (pixel & 0xFF0000) >> 16;
	ap_uint<8> pixelGreen = (pixel & 0x0000FF);
	ap_uint<8> pixelBlue = (pixel & 0x00FF00) >> 8;
	ap_uint<8> colorRed = (color & 0xFF0000) >> 16;
	ap_uint<8> colorGreen = (color & 0x0000FF);
	ap_uint<8> colorBlue = (color & 0x00FF00) >> 8;
	//Multipliers are added as weighting for more powerful numbers such as red
	in_data_t pixelRedPower = 2 * power(pixelRed - colorRed, 2);
	in_data_t pixelGreenPower = 4 * power(pixelGreen - colorGreen, 2);
	in_data_t pixelBluePower = 3 * power(pixelBlue - colorBlue, 2);
	in_data_t powerSummation = pixelRedPower + pixelGreenPower + pixelBluePower;
	out_data_t result;
	fxp_sqrt(result, powerSummation);
	return result.to_int();
}

//Classifies pixels as one of six colors in _color_array
int getPixelClassification(int in_pixel) {
	int i;
	int minimumDistanceIndex = 0;
	int minimumDistance = INT_MAX;
	PIXEL_COLOR_LOOP: for (i = 0; i < COLOR_ARRAY_SIZE; i++) {
		int distance = getColorDistance(in_pixel, _color_array[i]);
		if (distance < minimumDistance) {
			minimumDistance = distance;
			minimumDistanceIndex = i;
		}
	}
	return minimumDistanceIndex;
}

void getPixelClassification_Stream(ap_uint<24> in_pixel,
		ap_uint<24>* out_pixel) {
	int i;
	int minimumDistanceIndex = 0;
	int minimumDistance = INT_MAX;
	PIXEL_COLOR_LOOP: for (i = 0; i < COLOR_ARRAY_SIZE; i++) {
		int distance = getColorDistance_Stream(in_pixel,
				_color_array_stream[i]);
		if (distance < minimumDistance) {
			minimumDistance = distance;
			minimumDistanceIndex = i;
		}
	}
	switch (minimumDistanceIndex) {
	case 0:
		*out_pixel = _color_array_stream[minimumDistanceIndex];
		break;
	case 1:
		*out_pixel = _color_array_stream[minimumDistanceIndex];
		break;
	case 2:
		*out_pixel = _color_array_stream[minimumDistanceIndex];
		break;
	case 3:
		*out_pixel = _color_array_stream[minimumDistanceIndex];
		break;
	case 4:
		*out_pixel = _color_array_stream[minimumDistanceIndex];
		break;
	case 5:
		*out_pixel = _color_array_stream[minimumDistanceIndex];
		break;
	default:
		*out_pixel = in_pixel;
	}

}

//Changes pixel array to hold distance of pixel from center pixel color
//Note this is different from the java version
//For optimization purposes only the center pixel is classified
void parseColorsToCenterPixel(int pixelArray[ARRAY_SIZE][ARRAY_SIZE],
		int selectedColorArray[COLOR_ARRAY_SIZE]) {
	int centerColor = getPixelClassification(pixelArray[1][1]);
	int tempArray[8];
	REASSIGNMENT_LOOP: for (int i = 0; i < 8; i++) {
		tempArray[i] = pixelArray[i / 3][i % 3];
	}
	if (selectedColorArray[centerColor] == 1) {
		ROW_LOOP: for (int i = 0; i < 8; i++) {
			int pixel = getColorDistance(tempArray[i],
					_color_array[centerColor]);
			pixelArray[i / 3][i % 3] = pixel;
		}
	}

}
