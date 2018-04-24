#ifndef COLOR_COMPARATOR_H
#define COLOR_COMPARATOR_H


#include <limits.h>
#include <hls_stream.h>
#include "dataTypes.h"
#include "fxp_sqrt.h"
#include "powerFuntion.h"

#define HW_COSIM

#define COLOR_ARRAY_SIZE 6
#define ARRAY_SIZE 3

struct Video {
	ap_uint<1> user;
	ap_uint<1> last;
	ap_uint<24> data;
};

int getColorDistance(int pixel, int color);
int getColorDistance_Stream(struct Video* pixel, struct Video* color);
int getPixelClassification(int pixel);
void getPixelClassification_Stream(ap_uint<24> in_pixel, ap_uint<24>* out_pixel, ap_uint<4> in_switch);
void parseColorsToCenterPixel(int pixelArray[ARRAY_SIZE][ARRAY_SIZE], int selectedColorArray[COLOR_ARRAY_SIZE]);

#endif
