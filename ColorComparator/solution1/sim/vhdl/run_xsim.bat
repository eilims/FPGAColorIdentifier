
call C:/Xilinx/Vivado/2017.4/bin/xelab xil_defaultlib.apatb_getPixelClassification_Stream_top glbl -prj getPixelClassification_Stream.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims --initfile "C:/Xilinx/Vivado/2017.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s getPixelClassification_Stream -debug wave
call C:/Xilinx/Vivado/2017.4/bin/xsim --noieeewarnings getPixelClassification_Stream -tclbatch getPixelClassification_Stream.tcl

