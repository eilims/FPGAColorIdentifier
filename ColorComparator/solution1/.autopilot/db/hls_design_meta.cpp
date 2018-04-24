#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("in_pixel_TUSER", 1, hls_in, 0, "axis", "in_data", 1),
	Port_Property("in_pixel_TVALID", 1, hls_in, 2, "axis", "in_vld", 1),
	Port_Property("in_pixel_TREADY", 1, hls_out, 2, "axis", "in_acc", 1),
	Port_Property("in_pixel_TLAST", 1, hls_in, 1, "axis", "in_data", 1),
	Port_Property("in_pixel_TDATA", 24, hls_in, 2, "axis", "in_data", 1),
	Port_Property("out_pixel_TUSER", 1, hls_out, 3, "axis", "out_data", 1),
	Port_Property("out_pixel_TVALID", 1, hls_out, 5, "axis", "out_vld", 1),
	Port_Property("out_pixel_TREADY", 1, hls_in, 5, "axis", "out_acc", 1),
	Port_Property("out_pixel_TLAST", 1, hls_out, 4, "axis", "out_data", 1),
	Port_Property("out_pixel_TDATA", 24, hls_out, 5, "axis", "out_data", 1),
	Port_Property("in_switch_V", 4, hls_in, 6, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "getPixelClassification_Stream";
