#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("pixelArray_address0", 2, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("pixelArray_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("pixelArray_q0", 96, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("pixelArray_address1", 2, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("pixelArray_ce1", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("pixelArray_we1", 1, hls_out, 0, "ap_memory", "mem_we", 1),
	Port_Property("pixelArray_d1", 96, hls_out, 0, "ap_memory", "mem_din", 1),
	Port_Property("selectedColorArray_address0", 3, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("selectedColorArray_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("selectedColorArray_q0", 32, hls_in, 1, "ap_memory", "mem_dout", 1),
};
const char* HLS_Design_Meta::dut_name = "parseColorsToCenterPixel";
