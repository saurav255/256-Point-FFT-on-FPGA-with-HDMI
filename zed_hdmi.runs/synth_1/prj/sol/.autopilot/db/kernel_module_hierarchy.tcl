set ModuleHierarchy {[{
"Name" : "v_csc","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "Block_entry_split_proc_U0","ID" : "1","Type" : "sequential"},
	{"Name" : "AXIvideo2MultiPixStream_U0","ID" : "2","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176","ID" : "3","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "loop_wait_for_start","ID" : "4","Type" : "pipeline"},]},
		{"Name" : "grp_reg_unsigned_short_s_fu_257","ID" : "5","Type" : "pipeline"},
		{"Name" : "grp_reg_unsigned_short_s_fu_262","ID" : "6","Type" : "pipeline"},],
		"SubLoops" : [
		{"Name" : "loop_height","ID" : "7","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196","ID" : "8","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_width","ID" : "9","Type" : "pipeline"},]},
		{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225","ID" : "10","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_wait_for_eol","ID" : "11","Type" : "pipeline"},]},]},]},
	{"Name" : "v_csc_core_U0","ID" : "12","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_134_1","ID" : "13","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_v_csc_core_Pipeline_VITIS_LOOP_136_2_fu_208","ID" : "14","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_136_2","ID" : "15","Type" : "pipeline"},]},]},]},
	{"Name" : "MultiPixStream2AXIvideo_U0","ID" : "16","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_reg_unsigned_short_s_fu_145","ID" : "17","Type" : "pipeline"},
		{"Name" : "grp_reg_unsigned_short_s_fu_151","ID" : "18","Type" : "pipeline"},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_662_1","ID" : "19","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_664_2_fu_120","ID" : "20","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_664_2","ID" : "21","Type" : "pipeline"},]},]},]},]
}]}