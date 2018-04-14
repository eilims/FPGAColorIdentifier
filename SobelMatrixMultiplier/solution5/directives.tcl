############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_unroll "getVerticalResult"
set_directive_unroll "getHorizontalResult"
set_directive_pipeline -II 1 "getVerticalResult/Row"
set_directive_pipeline -II 1 "getVerticalResult/Col"
set_directive_pipeline -II 1 "getHorizontalResult/Row"
set_directive_pipeline -II 1 "getHorizontalResult/Col"
set_directive_array_reshape -type complete -dim 1 "getConvolutionResult" array
set_directive_array_reshape -type complete -dim 1 "getHorizontalResult" _horizontal_sobel_operator
set_directive_array_reshape -type complete -dim 1 "getVerticalResult" _vertical_sobel_operator
