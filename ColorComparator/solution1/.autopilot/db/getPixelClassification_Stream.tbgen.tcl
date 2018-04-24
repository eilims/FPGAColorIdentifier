set C_TypeInfoList {{ 
"getPixelClassification_Stream" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in_pixel": [[],{ "pointer": "0"}] }, {"out_pixel": [[],{ "pointer": "0"}] }, {"in_switch": [[],"1"] }],[],""], 
"1": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"0": [ "Video", {"struct": [[],[],[{ "user": [[], "2"]},{ "last": [[], "2"]},{ "data": [[], "3"]}],""]}], 
"2": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"3": [ "ap_uint<24>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 24}}]],""]}}]
}}
set moduleName getPixelClassification_Stream
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_rewind
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {getPixelClassification_Stream}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_pixel_user_V int 1 regular {axi_s 0 volatile  { in_pixel User } }  }
	{ in_pixel_last_V int 1 regular {axi_s 0 volatile  { in_pixel Last } }  }
	{ in_pixel_data_V int 24 regular {axi_s 0 volatile  { in_pixel Data } }  }
	{ out_pixel_user_V int 1 regular {axi_s 1 volatile  { out_pixel User } }  }
	{ out_pixel_last_V int 1 regular {axi_s 1 volatile  { out_pixel Last } }  }
	{ out_pixel_data_V int 24 regular {axi_s 1 volatile  { out_pixel Data } }  }
	{ in_switch_V int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_pixel_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_pixel.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_pixel_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_pixel.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_pixel_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "in_pixel.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_pixel_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_pixel.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_pixel_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_pixel.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_pixel_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "out_pixel.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_switch_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_switch.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_pixel_TUSER sc_in sc_lv 1 signal 0 } 
	{ in_pixel_TVALID sc_in sc_logic 1 invld 2 } 
	{ in_pixel_TREADY sc_out sc_logic 1 inacc 2 } 
	{ in_pixel_TLAST sc_in sc_lv 1 signal 1 } 
	{ in_pixel_TDATA sc_in sc_lv 24 signal 2 } 
	{ out_pixel_TUSER sc_out sc_lv 1 signal 3 } 
	{ out_pixel_TVALID sc_out sc_logic 1 outvld 5 } 
	{ out_pixel_TREADY sc_in sc_logic 1 outacc 5 } 
	{ out_pixel_TLAST sc_out sc_lv 1 signal 4 } 
	{ out_pixel_TDATA sc_out sc_lv 24 signal 5 } 
	{ in_switch_V sc_in sc_lv 4 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_pixel_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_pixel_user_V", "role": "default" }} , 
 	{ "name": "in_pixel_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_pixel_data_V", "role": "default" }} , 
 	{ "name": "in_pixel_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_pixel_data_V", "role": "default" }} , 
 	{ "name": "in_pixel_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_pixel_last_V", "role": "default" }} , 
 	{ "name": "in_pixel_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "in_pixel_data_V", "role": "default" }} , 
 	{ "name": "out_pixel_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_pixel_user_V", "role": "default" }} , 
 	{ "name": "out_pixel_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_pixel_data_V", "role": "default" }} , 
 	{ "name": "out_pixel_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_pixel_data_V", "role": "default" }} , 
 	{ "name": "out_pixel_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_pixel_last_V", "role": "default" }} , 
 	{ "name": "out_pixel_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "out_pixel_data_V", "role": "default" }} , 
 	{ "name": "in_switch_V", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_switch_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "getPixelClassification_Stream",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_pixel_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_pixel_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_pixel_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_pixel_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_pixel_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_pixel_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_pixel_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_pixel_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_switch_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_color_array_stream_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_color_array_stream_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fxp_sqrt_fu_329", "Parent" : "0",
		"CDFG" : "fxp_sqrt",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "in_val_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fxp_sqrt_fu_334", "Parent" : "0",
		"CDFG" : "fxp_sqrt",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "in_val_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getPixelClassificcud_U2", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getPixelClassificcud_U3", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getPixelClassificcud_U4", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	getPixelClassification_Stream {
		in_pixel_user_V {Type I LastRead 25 FirstWrite -1}
		in_pixel_last_V {Type I LastRead 25 FirstWrite -1}
		in_pixel_data_V {Type I LastRead 25 FirstWrite -1}
		out_pixel_user_V {Type O LastRead -1 FirstWrite 25}
		out_pixel_last_V {Type O LastRead -1 FirstWrite 25}
		out_pixel_data_V {Type O LastRead -1 FirstWrite 25}
		in_switch_V {Type I LastRead 21 FirstWrite -1}
		p_color_array_stream_s {Type I LastRead -1 FirstWrite -1}}
	fxp_sqrt {
		in_val_V_read {Type I LastRead 0 FirstWrite -1}}
	fxp_sqrt {
		in_val_V_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49", "Max" : "50"}
	, {"Name" : "Interval", "Min" : "48", "Max" : "48"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_pixel_user_V { axis {  { in_pixel_TUSER in_data 0 1 } } }
	in_pixel_last_V { axis {  { in_pixel_TLAST in_data 0 1 } } }
	in_pixel_data_V { axis {  { in_pixel_TVALID in_vld 0 1 }  { in_pixel_TREADY in_acc 1 1 }  { in_pixel_TDATA in_data 0 24 } } }
	out_pixel_user_V { axis {  { out_pixel_TUSER out_data 1 1 } } }
	out_pixel_last_V { axis {  { out_pixel_TLAST out_data 1 1 } } }
	out_pixel_data_V { axis {  { out_pixel_TVALID out_vld 1 1 }  { out_pixel_TREADY out_acc 0 1 }  { out_pixel_TDATA out_data 1 24 } } }
	in_switch_V { ap_none {  { in_switch_V in_data 0 4 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
