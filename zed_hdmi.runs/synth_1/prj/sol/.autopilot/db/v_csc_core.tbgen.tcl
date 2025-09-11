set moduleName v_csc_core
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {v_csc_core}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ stream_in int 24 regular {fifo 0 volatile }  }
	{ height int 11 regular {fifo 0}  }
	{ width int 11 regular {fifo 0}  }
	{ K11_read int 16 regular  }
	{ K12_read int 16 regular  }
	{ K13_read int 16 regular  }
	{ K21_read int 16 regular  }
	{ K22_read int 16 regular  }
	{ K23_read int 16 regular  }
	{ K31_read int 16 regular  }
	{ K32_read int 16 regular  }
	{ K33_read int 16 regular  }
	{ ROffset_read int 10 regular  }
	{ GOffset_read int 10 regular  }
	{ BOffset_read int 10 regular  }
	{ ClampMin_read int 8 regular  }
	{ ClipMax_read int 8 regular  }
	{ stream_csc int 24 regular {fifo 1 volatile }  }
	{ HwReg_width_c int 11 regular {fifo 1}  }
	{ HwReg_height_c int 11 regular {fifo 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "stream_in", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "K11_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K12_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K13_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K21_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K22_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K23_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K31_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K32_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K33_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ROffset_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "GOffset_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "BOffset_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "ClampMin_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ClipMax_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "stream_csc", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_width_c", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_height_c", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 51
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_in_dout sc_in sc_lv 24 signal 0 } 
	{ stream_in_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ stream_in_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ stream_in_empty_n sc_in sc_logic 1 signal 0 } 
	{ stream_in_read sc_out sc_logic 1 signal 0 } 
	{ height_dout sc_in sc_lv 11 signal 1 } 
	{ height_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ height_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ height_empty_n sc_in sc_logic 1 signal 1 } 
	{ height_read sc_out sc_logic 1 signal 1 } 
	{ width_dout sc_in sc_lv 11 signal 2 } 
	{ width_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ width_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ width_empty_n sc_in sc_logic 1 signal 2 } 
	{ width_read sc_out sc_logic 1 signal 2 } 
	{ K11_read sc_in sc_lv 16 signal 3 } 
	{ K12_read sc_in sc_lv 16 signal 4 } 
	{ K13_read sc_in sc_lv 16 signal 5 } 
	{ K21_read sc_in sc_lv 16 signal 6 } 
	{ K22_read sc_in sc_lv 16 signal 7 } 
	{ K23_read sc_in sc_lv 16 signal 8 } 
	{ K31_read sc_in sc_lv 16 signal 9 } 
	{ K32_read sc_in sc_lv 16 signal 10 } 
	{ K33_read sc_in sc_lv 16 signal 11 } 
	{ ROffset_read sc_in sc_lv 10 signal 12 } 
	{ GOffset_read sc_in sc_lv 10 signal 13 } 
	{ BOffset_read sc_in sc_lv 10 signal 14 } 
	{ ClampMin_read sc_in sc_lv 8 signal 15 } 
	{ ClipMax_read sc_in sc_lv 8 signal 16 } 
	{ stream_csc_din sc_out sc_lv 24 signal 17 } 
	{ stream_csc_num_data_valid sc_in sc_lv 5 signal 17 } 
	{ stream_csc_fifo_cap sc_in sc_lv 5 signal 17 } 
	{ stream_csc_full_n sc_in sc_logic 1 signal 17 } 
	{ stream_csc_write sc_out sc_logic 1 signal 17 } 
	{ HwReg_width_c_din sc_out sc_lv 11 signal 18 } 
	{ HwReg_width_c_num_data_valid sc_in sc_lv 3 signal 18 } 
	{ HwReg_width_c_fifo_cap sc_in sc_lv 3 signal 18 } 
	{ HwReg_width_c_full_n sc_in sc_logic 1 signal 18 } 
	{ HwReg_width_c_write sc_out sc_logic 1 signal 18 } 
	{ HwReg_height_c_din sc_out sc_lv 11 signal 19 } 
	{ HwReg_height_c_num_data_valid sc_in sc_lv 3 signal 19 } 
	{ HwReg_height_c_fifo_cap sc_in sc_lv 3 signal 19 } 
	{ HwReg_height_c_full_n sc_in sc_logic 1 signal 19 } 
	{ HwReg_height_c_write sc_out sc_logic 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_in", "role": "dout" }} , 
 	{ "name": "stream_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in", "role": "num_data_valid" }} , 
 	{ "name": "stream_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in", "role": "fifo_cap" }} , 
 	{ "name": "stream_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in", "role": "empty_n" }} , 
 	{ "name": "stream_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in", "role": "read" }} , 
 	{ "name": "height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height", "role": "dout" }} , 
 	{ "name": "height_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "height", "role": "num_data_valid" }} , 
 	{ "name": "height_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "height", "role": "fifo_cap" }} , 
 	{ "name": "height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height", "role": "empty_n" }} , 
 	{ "name": "height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height", "role": "read" }} , 
 	{ "name": "width_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width", "role": "dout" }} , 
 	{ "name": "width_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "width", "role": "num_data_valid" }} , 
 	{ "name": "width_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "width", "role": "fifo_cap" }} , 
 	{ "name": "width_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width", "role": "empty_n" }} , 
 	{ "name": "width_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width", "role": "read" }} , 
 	{ "name": "K11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K11_read", "role": "default" }} , 
 	{ "name": "K12_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K12_read", "role": "default" }} , 
 	{ "name": "K13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K13_read", "role": "default" }} , 
 	{ "name": "K21_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K21_read", "role": "default" }} , 
 	{ "name": "K22_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K22_read", "role": "default" }} , 
 	{ "name": "K23_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K23_read", "role": "default" }} , 
 	{ "name": "K31_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K31_read", "role": "default" }} , 
 	{ "name": "K32_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K32_read", "role": "default" }} , 
 	{ "name": "K33_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K33_read", "role": "default" }} , 
 	{ "name": "ROffset_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ROffset_read", "role": "default" }} , 
 	{ "name": "GOffset_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "GOffset_read", "role": "default" }} , 
 	{ "name": "BOffset_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "BOffset_read", "role": "default" }} , 
 	{ "name": "ClampMin_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ClampMin_read", "role": "default" }} , 
 	{ "name": "ClipMax_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ClipMax_read", "role": "default" }} , 
 	{ "name": "stream_csc_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_csc", "role": "din" }} , 
 	{ "name": "stream_csc_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_csc", "role": "num_data_valid" }} , 
 	{ "name": "stream_csc_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_csc", "role": "fifo_cap" }} , 
 	{ "name": "stream_csc_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_csc", "role": "full_n" }} , 
 	{ "name": "stream_csc_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_csc", "role": "write" }} , 
 	{ "name": "HwReg_width_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "HwReg_width_c", "role": "din" }} , 
 	{ "name": "HwReg_width_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_width_c", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_width_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_width_c", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_width_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_width_c", "role": "full_n" }} , 
 	{ "name": "HwReg_width_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_width_c", "role": "write" }} , 
 	{ "name": "HwReg_height_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "HwReg_height_c", "role": "din" }} , 
 	{ "name": "HwReg_height_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_height_c", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_height_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_height_c", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_height_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_height_c", "role": "full_n" }} , 
 	{ "name": "HwReg_height_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_height_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_csc_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "4208633",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208", "Port" : "stream_in", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K11_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "K12_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "K13_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "K21_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "K22_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "K23_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "K31_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "K32_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "K33_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "ROffset_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "GOffset_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "BOffset_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "ClampMin_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "ClipMax_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "stream_csc", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208", "Port" : "stream_csc", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_134_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208.mul_8ns_16s_24_2_1_U74", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208.mul_16s_8ns_24_2_1_U75", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208.mul_8ns_16s_24_2_1_U76", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208.mul_16s_8ns_24_2_1_U77", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208.mul_8ns_16s_24_2_1_U78", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208.mul_16s_8ns_24_2_1_U79", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208.mac_muladd_16s_8ns_22s_25_4_1_U80", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208.mac_muladd_16s_8ns_22s_25_4_1_U81", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208.mac_muladd_16s_8ns_22s_25_4_1_U82", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	v_csc_core {
		stream_in {Type I LastRead 1 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		K11_read {Type I LastRead 0 FirstWrite -1}
		K12_read {Type I LastRead 0 FirstWrite -1}
		K13_read {Type I LastRead 0 FirstWrite -1}
		K21_read {Type I LastRead 0 FirstWrite -1}
		K22_read {Type I LastRead 0 FirstWrite -1}
		K23_read {Type I LastRead 0 FirstWrite -1}
		K31_read {Type I LastRead 0 FirstWrite -1}
		K32_read {Type I LastRead 0 FirstWrite -1}
		K33_read {Type I LastRead 0 FirstWrite -1}
		ROffset_read {Type I LastRead 0 FirstWrite -1}
		GOffset_read {Type I LastRead 0 FirstWrite -1}
		BOffset_read {Type I LastRead 0 FirstWrite -1}
		ClampMin_read {Type I LastRead 0 FirstWrite -1}
		ClipMax_read {Type I LastRead 0 FirstWrite -1}
		stream_csc {Type O LastRead -1 FirstWrite 6}
		HwReg_width_c {Type O LastRead -1 FirstWrite 0}
		HwReg_height_c {Type O LastRead -1 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "1", "Max" : "4208633"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "4208633"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_in { ap_fifo {  { stream_in_dout fifo_data_in 0 24 }  { stream_in_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_in_fifo_cap fifo_update 0 5 }  { stream_in_empty_n fifo_status 0 1 }  { stream_in_read fifo_port_we 1 1 } } }
	height { ap_fifo {  { height_dout fifo_data_in 0 11 }  { height_num_data_valid fifo_status_num_data_valid 0 3 }  { height_fifo_cap fifo_update 0 3 }  { height_empty_n fifo_status 0 1 }  { height_read fifo_port_we 1 1 } } }
	width { ap_fifo {  { width_dout fifo_data_in 0 11 }  { width_num_data_valid fifo_status_num_data_valid 0 3 }  { width_fifo_cap fifo_update 0 3 }  { width_empty_n fifo_status 0 1 }  { width_read fifo_port_we 1 1 } } }
	K11_read { ap_none {  { K11_read in_data 0 16 } } }
	K12_read { ap_none {  { K12_read in_data 0 16 } } }
	K13_read { ap_none {  { K13_read in_data 0 16 } } }
	K21_read { ap_none {  { K21_read in_data 0 16 } } }
	K22_read { ap_none {  { K22_read in_data 0 16 } } }
	K23_read { ap_none {  { K23_read in_data 0 16 } } }
	K31_read { ap_none {  { K31_read in_data 0 16 } } }
	K32_read { ap_none {  { K32_read in_data 0 16 } } }
	K33_read { ap_none {  { K33_read in_data 0 16 } } }
	ROffset_read { ap_none {  { ROffset_read in_data 0 10 } } }
	GOffset_read { ap_none {  { GOffset_read in_data 0 10 } } }
	BOffset_read { ap_none {  { BOffset_read in_data 0 10 } } }
	ClampMin_read { ap_none {  { ClampMin_read in_data 0 8 } } }
	ClipMax_read { ap_none {  { ClipMax_read in_data 0 8 } } }
	stream_csc { ap_fifo {  { stream_csc_din fifo_data_in 1 24 }  { stream_csc_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_csc_fifo_cap fifo_update 0 5 }  { stream_csc_full_n fifo_status 0 1 }  { stream_csc_write fifo_port_we 1 1 } } }
	HwReg_width_c { ap_fifo {  { HwReg_width_c_din fifo_data_in 1 11 }  { HwReg_width_c_num_data_valid fifo_status_num_data_valid 0 3 }  { HwReg_width_c_fifo_cap fifo_update 0 3 }  { HwReg_width_c_full_n fifo_status 0 1 }  { HwReg_width_c_write fifo_port_we 1 1 } } }
	HwReg_height_c { ap_fifo {  { HwReg_height_c_din fifo_data_in 1 11 }  { HwReg_height_c_num_data_valid fifo_status_num_data_valid 0 3 }  { HwReg_height_c_fifo_cap fifo_update 0 3 }  { HwReg_height_c_full_n fifo_status 0 1 }  { HwReg_height_c_write fifo_port_we 1 1 } } }
}
