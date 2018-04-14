############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_loop_flatten "getConvolutionResult/Row_Conv"
set_directive_pipeline -II 1 "getConvolutionResult/Row_Conv"
set_directive_unroll "getConvolutionResult"
set_directive_pipeline -II 1 "power/Power_Loop"
set_directive_array_partition -type complete -dim 1 "getConvolutionResult" array
set_directive_loop_flatten "getConvolutionResult/Col_Conv"
