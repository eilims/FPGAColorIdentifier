############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline -II 1 "getPixelClassification/PIXEL_COLOR_LOOP"
set_directive_loop_flatten "getPixelClassification/PIXEL_COLOR_LOOP"
set_directive_pipeline -II 1 "parseColorsToCenterPixel/ROW_LOOP"
set_directive_function_instantiate "getPixelClassification" distance
set_directive_unroll "parseColorsToCenterPixel/COL_LOOP"
set_directive_loop_flatten "parseColorsToCenterPixel/ROW_LOOP"
set_directive_unroll "parseColorsToCenterPixel/REASSIGNMENT_LOOP"
set_directive_array_reshape -type complete -dim 1 "parseColorsToCenterPixel" pixelArray
