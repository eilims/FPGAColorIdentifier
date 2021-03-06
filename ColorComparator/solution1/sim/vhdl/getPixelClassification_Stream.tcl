
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set out_pixel_group [add_wave_group out_pixel(axis) -into $coutputgroup]
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/out_pixel_TVALID -into $out_pixel_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/out_pixel_TDATA -into $out_pixel_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/out_pixel_TREADY -into $out_pixel_group -color #ffff00 -radix hex
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/interrupt -into $return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_BRESP -into $return_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_BREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_BVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_RRESP -into $return_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_RDATA -into $return_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_RREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_RVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_ARREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_ARVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_ARADDR -into $return_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_WSTRB -into $return_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_WDATA -into $return_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_WREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_WVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_AWREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_AWVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/s_axi_AXILiteS_AWADDR -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set in_pixel_group [add_wave_group in_pixel(axis) -into $cinputgroup]
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/in_pixel_TREADY -into $in_pixel_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/in_pixel_TVALID -into $in_pixel_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/in_pixel_TDATA -into $in_pixel_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/ap_done -into $blocksiggroup
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/ap_idle -into $blocksiggroup
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/ap_ready -into $blocksiggroup
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_getPixelClassification_Stream_top/AESL_inst_getPixelClassification_Stream/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_getPixelClassification_Stream_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/LENGTH_in_pixel -into $tb_portdepth_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/LENGTH_out_pixel -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_out_pixel_group [add_wave_group out_pixel(axis) -into $tbcoutputgroup]
add_wave /apatb_getPixelClassification_Stream_top/out_pixel_TVALID -into $tb_out_pixel_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/out_pixel_TDATA -into $tb_out_pixel_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/out_pixel_TREADY -into $tb_out_pixel_group -color #ffff00 -radix hex
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_INTERRUPT -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_BRESP -into $tb_return_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_BREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_BVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_RRESP -into $tb_return_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_RDATA -into $tb_return_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_RREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_RVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_ARREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_ARVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_ARADDR -into $tb_return_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_WSTRB -into $tb_return_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_WDATA -into $tb_return_group -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_WREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_WVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_AWREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_AWVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/AXILiteS_AWADDR -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_in_pixel_group [add_wave_group in_pixel(axis) -into $tbcinputgroup]
add_wave /apatb_getPixelClassification_Stream_top/in_pixel_TREADY -into $tb_in_pixel_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/in_pixel_TVALID -into $tb_in_pixel_group -color #ffff00 -radix hex
add_wave /apatb_getPixelClassification_Stream_top/in_pixel_TDATA -into $tb_in_pixel_group -radix hex
save_wave_config getPixelClassification_Stream.wcfg
run all
quit

