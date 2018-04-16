set moduleName fxp_sqrt
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {fxp_sqrt}
set C_modelType { int 20 }
set C_modelArgList {
	{ in_val_V_read int 30 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_val_V_read", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 20} ]}
# RTL Port declarations: 
set portNum 5
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ in_val_V_read sc_in sc_lv 30 signal 0 } 
	{ ap_return sc_out sc_lv 20 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "in_val_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "in_val_V_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	fxp_sqrt {
		in_val_V_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_val_V_read { ap_none {  { in_val_V_read in_data 0 30 } } }
}
