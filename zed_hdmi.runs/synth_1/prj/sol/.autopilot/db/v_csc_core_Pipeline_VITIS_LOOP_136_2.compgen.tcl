# This script segment is generated automatically by AutoPilot

set name bd_19ea_csc_0_mul_8ns_16s_24_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name bd_19ea_csc_0_mul_16s_8ns_24_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bd_19ea_csc_0_mac_muladd_16s_8ns_22s_25_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name add_ln134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln134 \
    op interface \
    ports { add_ln134 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name stream_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_in \
    op interface \
    ports { stream_in_dout { I 24 vector } stream_in_num_data_valid { I 5 vector } stream_in_fifo_cap { I 5 vector } stream_in_empty_n { I 1 bit } stream_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name K12_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K12_load_cast \
    op interface \
    ports { K12_load_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name K13_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K13_load_cast \
    op interface \
    ports { K13_load_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name K11_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K11_load_cast \
    op interface \
    ports { K11_load_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name thr_add131_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_thr_add131_cast \
    op interface \
    ports { thr_add131_cast { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name K22_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K22_load_cast \
    op interface \
    ports { K22_load_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name K23_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K23_load_cast \
    op interface \
    ports { K23_load_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name K21_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K21_load_cast \
    op interface \
    ports { K21_load_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name thr_add62_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_thr_add62_cast \
    op interface \
    ports { thr_add62_cast { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name K32_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K32_load_cast \
    op interface \
    ports { K32_load_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name K33_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K33_load_cast \
    op interface \
    ports { K33_load_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name K31_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K31_load_cast \
    op interface \
    ports { K31_load_cast { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name sext_ln134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln134 \
    op interface \
    ports { sext_ln134 { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name p_read12_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read12_cast \
    op interface \
    ports { p_read12_cast { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name p_read13_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read13_cast \
    op interface \
    ports { p_read13_cast { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name ClipMax_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ClipMax_read \
    op interface \
    ports { ClipMax_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name ClampMin_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ClampMin_read \
    op interface \
    ports { ClampMin_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name stream_csc \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_csc \
    op interface \
    ports { stream_csc_din { O 24 vector } stream_csc_num_data_valid { I 5 vector } stream_csc_fifo_cap { I 5 vector } stream_csc_full_n { I 1 bit } stream_csc_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName bd_19ea_csc_0_flow_control_loop_pipe_sequential_init_U
set CompName bd_19ea_csc_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix bd_19ea_csc_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


