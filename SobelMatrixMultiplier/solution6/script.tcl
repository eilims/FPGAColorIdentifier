############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project SobelMatrixMultiplier
set_top getConvolutionResult
add_files SobelMatrixMultiplier/SobelMatrixMultiplier.cpp
add_files SobelMatrixMultiplier/SobelMatrixMultiplier.h
add_files SobelMatrixMultiplier/fxp_sqrt.h
add_files -tb SobelMatrixMultiplier/SobelMatrixMultiplier_test.cpp
open_solution "solution6"
set_part {xc7z020iclg400-1l}
create_clock -period 10 -name default
source "./SobelMatrixMultiplier/solution6/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog
