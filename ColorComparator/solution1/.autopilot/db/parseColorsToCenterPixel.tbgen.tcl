set C_TypeInfoList {{ 
"parseColorsToCenterPixel" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"pixelArray": [[], {"array": [ {"array": [ {"scalar": "int"}, [3]]}, [3]]}] }, {"selectedColorArray": [[], {"array": [ {"scalar": "int"}, [6]]}] }],[],""]
}}
set moduleName parseColorsToCenterPixel
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {parseColorsToCenterPixel}
set C_modelType { void 0 }
set C_modelArgList {
	{ pixelArray int 96 regular {array 3 { 1 0 } 1 1 }  }
	{ selectedColorArray int 32 regular {array 6 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pixelArray", "interface" : "memory", "bitwidth" : 96, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pixelArray","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 2,"step" : 1}]}]},{"low":32,"up":63,"cElement": [{"cName": "pixelArray","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 2,"step" : 1}]}]},{"low":64,"up":95,"cElement": [{"cName": "pixelArray","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "selectedColorArray", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "selectedColorArray","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pixelArray_address0 sc_out sc_lv 2 signal 0 } 
	{ pixelArray_ce0 sc_out sc_logic 1 signal 0 } 
	{ pixelArray_q0 sc_in sc_lv 96 signal 0 } 
	{ pixelArray_address1 sc_out sc_lv 2 signal 0 } 
	{ pixelArray_ce1 sc_out sc_logic 1 signal 0 } 
	{ pixelArray_we1 sc_out sc_logic 1 signal 0 } 
	{ pixelArray_d1 sc_out sc_lv 96 signal 0 } 
	{ selectedColorArray_address0 sc_out sc_lv 3 signal 1 } 
	{ selectedColorArray_ce0 sc_out sc_logic 1 signal 1 } 
	{ selectedColorArray_q0 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pixelArray_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pixelArray", "role": "address0" }} , 
 	{ "name": "pixelArray_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pixelArray", "role": "ce0" }} , 
 	{ "name": "pixelArray_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "pixelArray", "role": "q0" }} , 
 	{ "name": "pixelArray_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pixelArray", "role": "address1" }} , 
 	{ "name": "pixelArray_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pixelArray", "role": "ce1" }} , 
 	{ "name": "pixelArray_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pixelArray", "role": "we1" }} , 
 	{ "name": "pixelArray_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "pixelArray", "role": "d1" }} , 
 	{ "name": "selectedColorArray_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "selectedColorArray", "role": "address0" }} , 
 	{ "name": "selectedColorArray_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "selectedColorArray", "role": "ce0" }} , 
 	{ "name": "selectedColorArray_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "selectedColorArray", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "parseColorsToCenterPixel",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "pixelArray", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "selectedColorArray", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_color_array", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_color_array_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tempArray_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fxp_sqrt_fu_357", "Parent" : "0",
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
	parseColorsToCenterPixel {
		pixelArray {Type IO LastRead 23 FirstWrite 24}
		selectedColorArray {Type I LastRead 5 FirstWrite -1}
		p_color_array {Type I LastRead -1 FirstWrite -1}}
	fxp_sqrt {
		in_val_V_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "29", "Max" : "54"}
	, {"Name" : "Interval", "Min" : "30", "Max" : "55"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	pixelArray { ap_memory {  { pixelArray_address0 mem_address 1 2 }  { pixelArray_ce0 mem_ce 1 1 }  { pixelArray_q0 mem_dout 0 96 }  { pixelArray_address1 mem_address 1 2 }  { pixelArray_ce1 mem_ce 1 1 }  { pixelArray_we1 mem_we 1 1 }  { pixelArray_d1 mem_din 1 96 } } }
	selectedColorArray { ap_memory {  { selectedColorArray_address0 mem_address 1 3 }  { selectedColorArray_ce0 mem_ce 1 1 }  { selectedColorArray_q0 mem_dout 0 32 } } }
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
