#include <iostream>
#include "ColorComparator.h"

int main(int argc, char** argv){
	int red = 255;
	int green = 255;
	int blue = 255;
	ap_uint<24> result = 0;
	//Red, green, blue, Magenta, yellow. cyan
	const int _color_array_test[] = {0x00FF0000, 0x0000FF00, 0x000000FF, 0x00FF00FF, 0x00FFFF00, 0x0000FFFF};
	const ap_uint<24> _color_array_stream[] = { 0xFF0000, 0x0000FF, 0x00FF00, 0xFFFF00,
			0xFF00FF, 0x00FFFF };
	//Testing distance
	//Will only print out any errors
	if(getColorDistance(_color_array_test[0], _color_array_test[1]) != 624){
		cout << "Red v Green Expected: 624 Result: " << getColorDistance(_color_array_test[0], _color_array_test[1]) << "\n";
	}

	if(getColorDistance(_color_array_test[3], _color_array_test[4]) != 674){
		cout << "Magenta v Yellow Expected: 674 Result: " << getColorDistance(_color_array_test[3], _color_array_test[4]) << "\n";
	}

	if(getColorDistance(0x00A8D3FF, _color_array_test[2]) != 484){
		cout << "0x00A8D3FF v Blue Expected: 484 Result: " << getColorDistance(0x00A8D3FF, _color_array_test[2]) << "\n";
	}

	if(getColorDistance(0x00A8D3FF, _color_array_test[3]) != 439){
		cout << "0x00A8D3FF v Magenta Expected: 439 Result: " << getColorDistance(0x00A8D3FF, _color_array_test[3]) << "\n";
	}

	getPixelClassification_Stream(_color_array_stream[0], &result);
	if(result != _color_array_stream[0]){
		cout << "Color Classification Red Expected: " << _color_array_stream[0] << " Result: " << result << "\n";
	}

	getPixelClassification_Stream(_color_array_stream[1], &result);
	if(result != _color_array_stream[1]){
			cout << "Color Classification Green Expected: " << _color_array_stream[1] << " Result: " << result << "\n";
	}

	getPixelClassification_Stream(_color_array_stream[2], &result);
	if(result != _color_array_stream[2]){
			cout << "Color Classification Blue Expected: " << _color_array_stream[2] << " Result: " << result << "\n";
	}

	getPixelClassification_Stream(0x008000, &result);
	if(result != _color_array_stream[2]){
			cout << "Color Classification Blue Expected: " << _color_array_stream[2] << " Result: " << result << "\n";
	}

}
