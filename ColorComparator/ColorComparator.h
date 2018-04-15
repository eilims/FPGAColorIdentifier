#ifndef COLOR_COMPARATOR_H
#define COLOR_COMPARATOR_H


#include <limits.h>
#include "dataTypes.h"
#include "fxp_sqrt.h"
#include "powerFuntion.h"

#define HW_COSIM

#define COLR_ARRAY_SIZE 6

int getColorDistance(int pixel, int color);
int getPixelClassification(int pixel);

#endif
