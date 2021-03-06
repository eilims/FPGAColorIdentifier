set C_TypeInfoList {{ 
"getConvolutionResult" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"array": [[], {"array": [ {"array": [ {"scalar": "int"}, [3]]}, [3]]}] }],[],""]
}}
set moduleName getConvolutionResult
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {getConvolutionResult}
set C_modelType { int 32 }
set C_modelArgList {
	{ array_0 int 32 regular {array 3 { 1 1 } 1 1 }  }
	{ array_1 int 32 regular {array 3 { 1 1 } 1 1 }  }
	{ array_2 int 32 regular {array 3 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "array_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "array","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "array_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "array","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "array_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "array","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ array_0_address0 sc_out sc_lv 2 signal 0 } 
	{ array_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ array_0_q0 sc_in sc_lv 32 signal 0 } 
	{ array_0_address1 sc_out sc_lv 2 signal 0 } 
	{ array_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ array_0_q1 sc_in sc_lv 32 signal 0 } 
	{ array_1_address0 sc_out sc_lv 2 signal 1 } 
	{ array_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ array_1_q0 sc_in sc_lv 32 signal 1 } 
	{ array_1_address1 sc_out sc_lv 2 signal 1 } 
	{ array_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ array_1_q1 sc_in sc_lv 32 signal 1 } 
	{ array_2_address0 sc_out sc_lv 2 signal 2 } 
	{ array_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ array_2_q0 sc_in sc_lv 32 signal 2 } 
	{ array_2_address1 sc_out sc_lv 2 signal 2 } 
	{ array_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ array_2_q1 sc_in sc_lv 32 signal 2 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "array_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "array_0", "role": "address0" }} , 
 	{ "name": "array_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_0", "role": "ce0" }} , 
 	{ "name": "array_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_0", "role": "q0" }} , 
 	{ "name": "array_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "array_0", "role": "address1" }} , 
 	{ "name": "array_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_0", "role": "ce1" }} , 
 	{ "name": "array_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_0", "role": "q1" }} , 
 	{ "name": "array_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "array_1", "role": "address0" }} , 
 	{ "name": "array_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_1", "role": "ce0" }} , 
 	{ "name": "array_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_1", "role": "q0" }} , 
 	{ "name": "array_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "array_1", "role": "address1" }} , 
 	{ "name": "array_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_1", "role": "ce1" }} , 
 	{ "name": "array_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_1", "role": "q1" }} , 
 	{ "name": "array_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "array_2", "role": "address0" }} , 
 	{ "name": "array_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_2", "role": "ce0" }} , 
 	{ "name": "array_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_2", "role": "q0" }} , 
 	{ "name": "array_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "array_2", "role": "address1" }} , 
 	{ "name": "array_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_2", "role": "ce1" }} , 
 	{ "name": "array_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_2", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "getConvolutionResult",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "array_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "array_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "array_2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_combineOperatorResul_fu_183", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "combineOperatorResul",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "verticalResult", "Type" : "None", "Direction" : "I"},
			{"Name" : "horizontalResult", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_combineOperatorResul_fu_183.grp_fxp_sqrt_fu_34", "Parent" : "1",
		"CDFG" : "fxp_sqrt",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "in_val_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getConvolutionResbkb_U4", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getConvolutionResbkb_U5", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getConvolutionResbkb_U6", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getConvolutionResbkb_U7", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getConvolutionResbkb_U8", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getConvolutionResbkb_U9", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	getConvolutionResult {
		array_0 {Type I LastRead 3 FirstWrite -1}
		array_1 {Type I LastRead 3 FirstWrite -1}
		array_2 {Type I LastRead 3 FirstWrite -1}}
	combineOperatorResul {
		verticalResult {Type I LastRead 0 FirstWrite -1}
		horizontalResult {Type I LastRead 0 FirstWrite -1}}
	fxp_sqrt {
		in_val_V_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24", "Max" : "24"}
	, {"Name" : "Interval", "Min" : "25", "Max" : "25"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	array_0 { ap_memory {  { array_0_address0 mem_address 1 2 }  { array_0_ce0 mem_ce 1 1 }  { array_0_q0 mem_dout 0 32 }  { array_0_address1 mem_address 1 2 }  { array_0_ce1 mem_ce 1 1 }  { array_0_q1 mem_dout 0 32 } } }
	array_1 { ap_memory {  { array_1_address0 mem_address 1 2 }  { array_1_ce0 mem_ce 1 1 }  { array_1_q0 mem_dout 0 32 }  { array_1_address1 mem_address 1 2 }  { array_1_ce1 mem_ce 1 1 }  { array_1_q1 mem_dout 0 32 } } }
	array_2 { ap_memory {  { array_2_address0 mem_address 1 2 }  { array_2_ce0 mem_ce 1 1 }  { array_2_q0 mem_dout 0 32 }  { array_2_address1 mem_address 1 2 }  { array_2_ce1 mem_ce 1 1 }  { array_2_q1 mem_dout 0 32 } } }
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
