set C_TypeInfoList {{ 
"getPixelClassification_Stream" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in_pixel": [[],"0"] }, {"out_pixel": [[],{ "pointer": "0"}] }],[],""], 
"0": [ "ap_uint<24>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 24}}]],""]}}]
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
	{ in_pixel_V int 24 regular {axi_s 0 ""  { in_pixel_V Data } }  }
	{ out_pixel_V int 24 regular {axi_s 1 ""  { out_pixel_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_pixel_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "in_pixel.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "out_pixel_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "out_pixel.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_pixel_V_TDATA sc_in sc_lv 24 signal 0 } 
	{ in_pixel_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_pixel_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ out_pixel_V_TDATA sc_out sc_lv 24 signal 1 } 
	{ out_pixel_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ out_pixel_V_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_pixel_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "in_pixel_V", "role": "TDATA" }} , 
 	{ "name": "in_pixel_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_pixel_V", "role": "TVALID" }} , 
 	{ "name": "in_pixel_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_pixel_V", "role": "TREADY" }} , 
 	{ "name": "out_pixel_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "out_pixel_V", "role": "TDATA" }} , 
 	{ "name": "out_pixel_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_pixel_V", "role": "TVALID" }} , 
 	{ "name": "out_pixel_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_pixel_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "getPixelClassification_Stream",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_pixel_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_pixel_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_pixel_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_pixel_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_color_array_stream_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_color_array_stream_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fxp_sqrt_fu_262", "Parent" : "0",
		"CDFG" : "fxp_sqrt",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "in_val_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fxp_sqrt_fu_267", "Parent" : "0",
		"CDFG" : "fxp_sqrt",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "in_val_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fxp_sqrt_fu_272", "Parent" : "0",
		"CDFG" : "fxp_sqrt",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "in_val_V_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	getPixelClassification_Stream {
		in_pixel_V {Type I LastRead 1 FirstWrite -1}
		out_pixel_V {Type O LastRead -1 FirstWrite 19}
		p_color_array_stream_s {Type I LastRead -1 FirstWrite -1}}
	fxp_sqrt {
		in_val_V_read {Type I LastRead 0 FirstWrite -1}}
	fxp_sqrt {
		in_val_V_read {Type I LastRead 0 FirstWrite -1}}
	fxp_sqrt {
		in_val_V_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_pixel_V { axis {  { in_pixel_V_TDATA in_data 0 24 }  { in_pixel_V_TVALID in_vld 0 1 }  { in_pixel_V_TREADY in_acc 1 1 } } }
	out_pixel_V { axis {  { out_pixel_V_TDATA out_data 1 24 }  { out_pixel_V_TVALID out_vld 1 1 }  { out_pixel_V_TREADY out_acc 0 1 } } }
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
