############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline -II 1 "parseColorsToCenterPixel/ROW_LOOP"
set_directive_unroll "parseColorsToCenterPixel/COL_LOOP"
set_directive_loop_flatten "parseColorsToCenterPixel/ROW_LOOP"
set_directive_unroll "parseColorsToCenterPixel/REASSIGNMENT_LOOP"
set_directive_array_reshape -type complete -dim 1 "parseColorsToCenterPixel" pixelArray
set_directive_pipeline -II 1 "getPixelClassification/PIXEL_COLOR_LOOP"
set_directive_unroll -factor 6 "getPixelClassification/PIXEL_COLOR_LOOP"
set_directive_unroll -factor 3 "getPixelClassification_Stream/PIXEL_COLOR_LOOP"
set_directive_pipeline -rewind "getPixelClassification_Stream/PIXEL_COLOR_LOOP"
set_directive_interface -mode axis -register -register_mode both "getPixelClassification_Stream" out_pixel
set_directive_interface -mode axis -register -register_mode both "getPixelClassification_Stream" in_pixel
set_directive_interface -mode s_axilite "getPixelClassification_Stream"
set_directive_array_partition -type complete -dim 1 "getPixelClassification_Stream" _color_array
