############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project SobelMatrixMultiplier
add_files SobelMatrixMultiplier/SobelMatrixMultiplier.cpp
add_files SobelMatrixMultiplier/SobelMatrixMultiplier.h
open_solution "solution1"
set_part {xc7z020iclg400-1l} -tool vivado
create_clock -period 10 -name default
#source "./SobelMatrixMultiplier/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
