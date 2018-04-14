############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_unroll "getHorizontalResult"
set_directive_pipeline -II 1 "getVerticalResult/Row"
set_directive_pipeline -II 1 "getVerticalResult/Col"
set_directive_pipeline -II 1 "getHorizontalResult/Row"
set_directive_pipeline -II 1 "getHorizontalResult/Col"
set_directive_pipeline -II 1 "getVerticalResult/Row_Vert"
set_directive_pipeline -II 1 "getVerticalResult/Col_Vert"
set_directive_pipeline -II 1 "getHorizontalResult/Row_Horiz"
set_directive_pipeline -II 1 "getHorizontalResult/Col_Horiz"
set_directive_unroll "getVerticalResult"
