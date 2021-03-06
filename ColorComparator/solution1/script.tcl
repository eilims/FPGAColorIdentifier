############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ColorComparator
set_top getPixelClassification_Stream
add_files ColorComparator/powerFuntion.h
add_files ColorComparator/powerFunction.cpp
add_files ColorComparator/fxp_sqrt.h
add_files ColorComparator/dataTypes.h
add_files ColorComparator/ColorComparator.h
add_files ColorComparator/ColorComparator.cpp
add_files -tb ColorComparator/ColorComparator_tb.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
source "./ColorComparator/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -rtl vhdl -tool xsim
export_design -rtl vhdl -format ip_catalog -display_name "ColorComparator24"
