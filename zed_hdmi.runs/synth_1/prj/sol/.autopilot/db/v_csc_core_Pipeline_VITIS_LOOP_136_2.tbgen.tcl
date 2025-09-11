set moduleName v_csc_core_Pipeline_VITIS_LOOP_136_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {v_csc_core_Pipeline_VITIS_LOOP_136_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ add_ln134 int 12 regular  }
	{ stream_in int 24 regular {fifo 0 volatile }  }
	{ K12_load_cast int 16 regular  }
	{ K13_load_cast int 16 regular  }
	{ K11_load_cast int 16 regular  }
	{ thr_add131_cast int 22 regular  }
	{ K22_load_cast int 16 regular  }
	{ K23_load_cast int 16 regular  }
	{ K21_load_cast int 16 regular  }
	{ thr_add62_cast int 22 regular  }
	{ K32_load_cast int 16 regular  }
	{ K33_load_cast int 16 regular  }
	{ K31_load_cast int 16 regular  }
	{ sext_ln134 int 22 regular  }
	{ p_read12_cast int 8 regular  }
	{ p_read13_cast int 8 regular  }
	{ ClipMax_read int 8 regular  }
	{ ClampMin_read int 8 regular  }
	{ stream_csc int 24 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "add_ln134", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "K12_load_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K13_load_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K11_load_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "thr_add131_cast", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "K22_load_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K23_load_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K21_load_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "thr_add62_cast", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "K32_load_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K33_load_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K31_load_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln134", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ClipMax_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ClampMin_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "stream_csc", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_in_dout sc_in sc_lv 24 signal 1 } 
	{ stream_in_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ stream_in_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ stream_in_empty_n sc_in sc_logic 1 signal 1 } 
	{ stream_in_read sc_out sc_logic 1 signal 1 } 
	{ stream_csc_din sc_out sc_lv 24 signal 18 } 
	{ stream_csc_num_data_valid sc_in sc_lv 5 signal 18 } 
	{ stream_csc_fifo_cap sc_in sc_lv 5 signal 18 } 
	{ stream_csc_full_n sc_in sc_logic 1 signal 18 } 
	{ stream_csc_write sc_out sc_logic 1 signal 18 } 
	{ add_ln134 sc_in sc_lv 12 signal 0 } 
	{ K12_load_cast sc_in sc_lv 16 signal 2 } 
	{ K13_load_cast sc_in sc_lv 16 signal 3 } 
	{ K11_load_cast sc_in sc_lv 16 signal 4 } 
	{ thr_add131_cast sc_in sc_lv 22 signal 5 } 
	{ K22_load_cast sc_in sc_lv 16 signal 6 } 
	{ K23_load_cast sc_in sc_lv 16 signal 7 } 
	{ K21_load_cast sc_in sc_lv 16 signal 8 } 
	{ thr_add62_cast sc_in sc_lv 22 signal 9 } 
	{ K32_load_cast sc_in sc_lv 16 signal 10 } 
	{ K33_load_cast sc_in sc_lv 16 signal 11 } 
	{ K31_load_cast sc_in sc_lv 16 signal 12 } 
	{ sext_ln134 sc_in sc_lv 22 signal 13 } 
	{ p_read12_cast sc_in sc_lv 8 signal 14 } 
	{ p_read13_cast sc_in sc_lv 8 signal 15 } 
	{ ClipMax_read sc_in sc_lv 8 signal 16 } 
	{ ClampMin_read sc_in sc_lv 8 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_in", "role": "dout" }} , 
 	{ "name": "stream_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in", "role": "num_data_valid" }} , 
 	{ "name": "stream_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in", "role": "fifo_cap" }} , 
 	{ "name": "stream_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in", "role": "empty_n" }} , 
 	{ "name": "stream_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in", "role": "read" }} , 
 	{ "name": "stream_csc_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_csc", "role": "din" }} , 
 	{ "name": "stream_csc_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_csc", "role": "num_data_valid" }} , 
 	{ "name": "stream_csc_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_csc", "role": "fifo_cap" }} , 
 	{ "name": "stream_csc_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_csc", "role": "full_n" }} , 
 	{ "name": "stream_csc_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_csc", "role": "write" }} , 
 	{ "name": "add_ln134", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "add_ln134", "role": "default" }} , 
 	{ "name": "K12_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K12_load_cast", "role": "default" }} , 
 	{ "name": "K13_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K13_load_cast", "role": "default" }} , 
 	{ "name": "K11_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K11_load_cast", "role": "default" }} , 
 	{ "name": "thr_add131_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "thr_add131_cast", "role": "default" }} , 
 	{ "name": "K22_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K22_load_cast", "role": "default" }} , 
 	{ "name": "K23_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K23_load_cast", "role": "default" }} , 
 	{ "name": "K21_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K21_load_cast", "role": "default" }} , 
 	{ "name": "thr_add62_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "thr_add62_cast", "role": "default" }} , 
 	{ "name": "K32_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K32_load_cast", "role": "default" }} , 
 	{ "name": "K33_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K33_load_cast", "role": "default" }} , 
 	{ "name": "K31_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K31_load_cast", "role": "default" }} , 
 	{ "name": "sext_ln134", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "sext_ln134", "role": "default" }} , 
 	{ "name": "p_read12_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read12_cast", "role": "default" }} , 
 	{ "name": "p_read13_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read13_cast", "role": "default" }} , 
 	{ "name": "ClipMax_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ClipMax_read", "role": "default" }} , 
 	{ "name": "ClampMin_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ClampMin_read", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "v_csc_core_Pipeline_VITIS_LOOP_136_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2054",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln134", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K12_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "K13_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "K11_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "thr_add131_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "K22_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "K23_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "K21_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "thr_add62_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "K32_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "K33_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "K31_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln134", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClipMax_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClampMin_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_csc", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_csc_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_136_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_2_1_U74", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_8ns_24_2_1_U75", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_2_1_U76", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_8ns_24_2_1_U77", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_2_1_U78", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_8ns_24_2_1_U79", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_22s_25_4_1_U80", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_22s_25_4_1_U81", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_22s_25_4_1_U82", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	v_csc_core_Pipeline_VITIS_LOOP_136_2 {
		add_ln134 {Type I LastRead 0 FirstWrite -1}
		stream_in {Type I LastRead 1 FirstWrite -1}
		K12_load_cast {Type I LastRead 0 FirstWrite -1}
		K13_load_cast {Type I LastRead 0 FirstWrite -1}
		K11_load_cast {Type I LastRead 0 FirstWrite -1}
		thr_add131_cast {Type I LastRead 0 FirstWrite -1}
		K22_load_cast {Type I LastRead 0 FirstWrite -1}
		K23_load_cast {Type I LastRead 0 FirstWrite -1}
		K21_load_cast {Type I LastRead 0 FirstWrite -1}
		thr_add62_cast {Type I LastRead 0 FirstWrite -1}
		K32_load_cast {Type I LastRead 0 FirstWrite -1}
		K33_load_cast {Type I LastRead 0 FirstWrite -1}
		K31_load_cast {Type I LastRead 0 FirstWrite -1}
		sext_ln134 {Type I LastRead 0 FirstWrite -1}
		p_read12_cast {Type I LastRead 0 FirstWrite -1}
		p_read13_cast {Type I LastRead 0 FirstWrite -1}
		ClipMax_read {Type I LastRead 0 FirstWrite -1}
		ClampMin_read {Type I LastRead 0 FirstWrite -1}
		stream_csc {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2054"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2054"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add_ln134 { ap_none {  { add_ln134 in_data 0 12 } } }
	stream_in { ap_fifo {  { stream_in_dout fifo_data_in 0 24 }  { stream_in_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_in_fifo_cap fifo_update 0 5 }  { stream_in_empty_n fifo_status 0 1 }  { stream_in_read fifo_port_we 1 1 } } }
	K12_load_cast { ap_none {  { K12_load_cast in_data 0 16 } } }
	K13_load_cast { ap_none {  { K13_load_cast in_data 0 16 } } }
	K11_load_cast { ap_none {  { K11_load_cast in_data 0 16 } } }
	thr_add131_cast { ap_none {  { thr_add131_cast in_data 0 22 } } }
	K22_load_cast { ap_none {  { K22_load_cast in_data 0 16 } } }
	K23_load_cast { ap_none {  { K23_load_cast in_data 0 16 } } }
	K21_load_cast { ap_none {  { K21_load_cast in_data 0 16 } } }
	thr_add62_cast { ap_none {  { thr_add62_cast in_data 0 22 } } }
	K32_load_cast { ap_none {  { K32_load_cast in_data 0 16 } } }
	K33_load_cast { ap_none {  { K33_load_cast in_data 0 16 } } }
	K31_load_cast { ap_none {  { K31_load_cast in_data 0 16 } } }
	sext_ln134 { ap_none {  { sext_ln134 in_data 0 22 } } }
	p_read12_cast { ap_none {  { p_read12_cast in_data 0 8 } } }
	p_read13_cast { ap_none {  { p_read13_cast in_data 0 8 } } }
	ClipMax_read { ap_none {  { ClipMax_read in_data 0 8 } } }
	ClampMin_read { ap_none {  { ClampMin_read in_data 0 8 } } }
	stream_csc { ap_fifo {  { stream_csc_din fifo_data_in 1 24 }  { stream_csc_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_csc_fifo_cap fifo_update 0 5 }  { stream_csc_full_n fifo_status 0 1 }  { stream_csc_write fifo_port_we 1 1 } } }
}
