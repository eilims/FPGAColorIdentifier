############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project SobelMatrixMultiplier
set_top getConvolutionResult
add_files SobelMatrixMultiplier/SobelMatrixMultiplier.cpp
add_files SobelMatrixMultiplier/SobelMatrixMultiplier.h
add_files SobelMatrixMultiplier/fxp_sqrt.h
add_files -tb SobelMatrixMultiplier/SobelMatrixMultiplier_test.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
source "./SobelMatrixMultiplier/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
