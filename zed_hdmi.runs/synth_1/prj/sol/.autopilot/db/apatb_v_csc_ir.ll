; ModuleID = 'C:/Vivado_Projects/zed_hdmi/zed_hdmi.runs/synth_1/prj/sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<10>" = type { %"struct.ap_int_base<10, true>" }
%"struct.ap_int_base<10, true>" = type { %"struct.ssdm_int<10, true>" }
%"struct.ssdm_int<10, true>" = type { i10 }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<24>, 1, 1, 1, '8', false>" }
%"struct.hls::axis<ap_uint<24>, 1, 1, 1, '8', false>" = type { %"struct.ap_uint<24>", %"struct.ap_uint<3>", %"struct.ap_uint<3>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<24>" = type { %"struct.ap_int_base<24, false>" }
%"struct.ap_int_base<24, false>" = type { %"struct.ssdm_int<24, false>" }
%"struct.ssdm_int<24, false>" = type { i24 }
%"struct.ap_uint<3>" = type { %"struct.ap_int_base<3, false>" }
%"struct.ap_int_base<3, false>" = type { %"struct.ssdm_int<3, false>" }
%"struct.ssdm_int<3, false>" = type { i3 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline
define void @apatb_v_csc_ir(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(12) %s_axis_video, i8* noalias nocapture nonnull readonly dereferenceable(1) %InVideoFormat, i8* noalias nocapture nonnull readonly dereferenceable(1) %OutVideoFormat, i16* noalias nocapture nonnull readonly dereferenceable(2) %width, i16* noalias nocapture nonnull readonly dereferenceable(2) %height, i16* noalias nocapture nonnull readonly dereferenceable(2) %K11, i16* noalias nocapture nonnull readonly dereferenceable(2) %K12, i16* noalias nocapture nonnull readonly dereferenceable(2) %K13, i16* noalias nocapture nonnull readonly dereferenceable(2) %K21, i16* noalias nocapture nonnull readonly dereferenceable(2) %K22, i16* noalias nocapture nonnull readonly dereferenceable(2) %K23, i16* noalias nocapture nonnull readonly dereferenceable(2) %K31, i16* noalias nocapture nonnull readonly dereferenceable(2) %K32, i16* noalias nocapture nonnull readonly dereferenceable(2) %K33, %"struct.ap_int<10>"* noalias nocapture nonnull readonly dereferenceable(2) %ROffset, %"struct.ap_int<10>"* noalias nocapture nonnull readonly dereferenceable(2) %GOffset, %"struct.ap_int<10>"* noalias nocapture nonnull readonly dereferenceable(2) %BOffset, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly dereferenceable(1) %ClampMin, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly dereferenceable(1) %ClipMax, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(12) %m_axis_video) local_unnamed_addr #0 {
entry:
  %s_axis_video_copy.data = alloca i24, align 512
  %s_axis_video_copy.keep = alloca i3, align 512
  %s_axis_video_copy.strb = alloca i3, align 512
  %s_axis_video_copy.user = alloca i1, align 512
  %s_axis_video_copy.last = alloca i1, align 512
  %s_axis_video_copy.id = alloca i1, align 512
  %s_axis_video_copy.dest = alloca i1, align 512
  %InVideoFormat_copy = alloca i8, align 512
  %OutVideoFormat_copy = alloca i8, align 512
  %width_copy = alloca i16, align 512
  %height_copy = alloca i16, align 512
  %K11_copy = alloca i16, align 512
  %K12_copy = alloca i16, align 512
  %K13_copy = alloca i16, align 512
  %K21_copy = alloca i16, align 512
  %K22_copy = alloca i16, align 512
  %K23_copy = alloca i16, align 512
  %K31_copy = alloca i16, align 512
  %K32_copy = alloca i16, align 512
  %K33_copy = alloca i16, align 512
  %ROffset_copy = alloca i10, align 512
  %GOffset_copy = alloca i10, align 512
  %BOffset_copy = alloca i10, align 512
  %ClampMin_copy = alloca i8, align 512
  %ClipMax_copy = alloca i8, align 512
  %m_axis_video_copy.data = alloca i24, align 512
  %m_axis_video_copy.keep = alloca i3, align 512
  %m_axis_video_copy.strb = alloca i3, align 512
  %m_axis_video_copy.user = alloca i1, align 512
  %m_axis_video_copy.last = alloca i1, align 512
  %m_axis_video_copy.id = alloca i1, align 512
  %m_axis_video_copy.dest = alloca i1, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %s_axis_video, i24* nonnull align 512 %s_axis_video_copy.data, i3* nonnull align 512 %s_axis_video_copy.keep, i3* nonnull align 512 %s_axis_video_copy.strb, i1* nonnull align 512 %s_axis_video_copy.user, i1* nonnull align 512 %s_axis_video_copy.last, i1* nonnull align 512 %s_axis_video_copy.id, i1* nonnull align 512 %s_axis_video_copy.dest, i8* nonnull %InVideoFormat, i8* nonnull align 512 %InVideoFormat_copy, i8* nonnull %OutVideoFormat, i8* nonnull align 512 %OutVideoFormat_copy, i16* nonnull %width, i16* nonnull align 512 %width_copy, i16* nonnull %height, i16* nonnull align 512 %height_copy, i16* nonnull %K11, i16* nonnull align 512 %K11_copy, i16* nonnull %K12, i16* nonnull align 512 %K12_copy, i16* nonnull %K13, i16* nonnull align 512 %K13_copy, i16* nonnull %K21, i16* nonnull align 512 %K21_copy, i16* nonnull %K22, i16* nonnull align 512 %K22_copy, i16* nonnull %K23, i16* nonnull align 512 %K23_copy, i16* nonnull %K31, i16* nonnull align 512 %K31_copy, i16* nonnull %K32, i16* nonnull align 512 %K32_copy, i16* nonnull %K33, i16* nonnull align 512 %K33_copy, %"struct.ap_int<10>"* nonnull %ROffset, i10* nonnull align 512 %ROffset_copy, %"struct.ap_int<10>"* nonnull %GOffset, i10* nonnull align 512 %GOffset_copy, %"struct.ap_int<10>"* nonnull %BOffset, i10* nonnull align 512 %BOffset_copy, %"struct.ap_uint<8>"* nonnull %ClampMin, i8* nonnull align 512 %ClampMin_copy, %"struct.ap_uint<8>"* nonnull %ClipMax, i8* nonnull align 512 %ClipMax_copy, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %m_axis_video, i24* nonnull align 512 %m_axis_video_copy.data, i3* nonnull align 512 %m_axis_video_copy.keep, i3* nonnull align 512 %m_axis_video_copy.strb, i1* nonnull align 512 %m_axis_video_copy.user, i1* nonnull align 512 %m_axis_video_copy.last, i1* nonnull align 512 %m_axis_video_copy.id, i1* nonnull align 512 %m_axis_video_copy.dest)
  call void @apatb_v_csc_hw(i24* %s_axis_video_copy.data, i3* %s_axis_video_copy.keep, i3* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest, i8* %InVideoFormat_copy, i8* %OutVideoFormat_copy, i16* %width_copy, i16* %height_copy, i16* %K11_copy, i16* %K12_copy, i16* %K13_copy, i16* %K21_copy, i16* %K22_copy, i16* %K23_copy, i16* %K31_copy, i16* %K32_copy, i16* %K33_copy, i10* %ROffset_copy, i10* %GOffset_copy, i10* %BOffset_copy, i8* %ClampMin_copy, i8* %ClipMax_copy, i24* %m_axis_video_copy.data, i3* %m_axis_video_copy.keep, i3* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %s_axis_video, i24* %s_axis_video_copy.data, i3* %s_axis_video_copy.keep, i3* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest, i8* %InVideoFormat, i8* %InVideoFormat_copy, i8* %OutVideoFormat, i8* %OutVideoFormat_copy, i16* %width, i16* %width_copy, i16* %height, i16* %height_copy, i16* %K11, i16* %K11_copy, i16* %K12, i16* %K12_copy, i16* %K13, i16* %K13_copy, i16* %K21, i16* %K21_copy, i16* %K22, i16* %K22_copy, i16* %K23, i16* %K23_copy, i16* %K31, i16* %K31_copy, i16* %K32, i16* %K32_copy, i16* %K33, i16* %K33_copy, %"struct.ap_int<10>"* %ROffset, i10* %ROffset_copy, %"struct.ap_int<10>"* %GOffset, i10* %GOffset_copy, %"struct.ap_int<10>"* %BOffset, i10* %BOffset_copy, %"struct.ap_uint<8>"* %ClampMin, i8* %ClampMin_copy, %"struct.ap_uint<8>"* %ClipMax, i8* %ClipMax_copy, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %m_axis_video, i24* %m_axis_video_copy.data, i3* %m_axis_video_copy.keep, i3* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "unpacked"="0", i24* noalias align 512 "unpacked"="1.0" %_V_data_V, i3* noalias align 512 "unpacked"="1.1" %_V_keep_V, i3* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "unpacked"="1.6" %_V_dest_V, i8* noalias readonly "unpacked"="2", i8* noalias align 512 "unpacked"="3", i8* noalias readonly "unpacked"="4", i8* noalias align 512 "unpacked"="5", i16* noalias readonly "unpacked"="6", i16* noalias align 512 "unpacked"="7", i16* noalias readonly "unpacked"="8", i16* noalias align 512 "unpacked"="9", i16* noalias readonly "unpacked"="10", i16* noalias align 512 "unpacked"="11", i16* noalias readonly "unpacked"="12", i16* noalias align 512 "unpacked"="13", i16* noalias readonly "unpacked"="14", i16* noalias align 512 "unpacked"="15", i16* noalias readonly "unpacked"="16", i16* noalias align 512 "unpacked"="17", i16* noalias readonly "unpacked"="18", i16* noalias align 512 "unpacked"="19", i16* noalias readonly "unpacked"="20", i16* noalias align 512 "unpacked"="21", i16* noalias readonly "unpacked"="22", i16* noalias align 512 "unpacked"="23", i16* noalias readonly "unpacked"="24", i16* noalias align 512 "unpacked"="25", i16* noalias readonly "unpacked"="26", i16* noalias align 512 "unpacked"="27", %"struct.ap_int<10>"* noalias readonly "unpacked"="28", i10* noalias nocapture align 512 "unpacked"="29.0", %"struct.ap_int<10>"* noalias readonly "unpacked"="30", i10* noalias nocapture align 512 "unpacked"="31.0", %"struct.ap_int<10>"* noalias readonly "unpacked"="32", i10* noalias nocapture align 512 "unpacked"="33.0", %"struct.ap_uint<8>"* noalias readonly "unpacked"="34", i8* noalias nocapture align 512 "unpacked"="35.0", %"struct.ap_uint<8>"* noalias readonly "unpacked"="36", i8* noalias nocapture align 512 "unpacked"="37.0", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "unpacked"="38", i24* noalias align 512 "unpacked"="39.0" %_V_data_V1, i3* noalias align 512 "unpacked"="39.1" %_V_keep_V2, i3* noalias align 512 "unpacked"="39.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="39.3" %_V_user_V4, i1* noalias align 512 "unpacked"="39.4" %_V_last_V5, i1* noalias align 512 "unpacked"="39.5" %_V_id_V6, i1* noalias align 512 "unpacked"="39.6" %_V_dest_V7) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(i24* align 512 %_V_data_V, i3* align 512 %_V_keep_V, i3* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %2, i8* %1)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %4, i8* %3)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %6, i16* %5)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %8, i16* %7)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %10, i16* %9)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %12, i16* %11)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %14, i16* %13)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %16, i16* %15)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %18, i16* %17)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %20, i16* %19)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %22, i16* %21)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %24, i16* %23)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %26, i16* %25)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(i10* align 512 %28, %"struct.ap_int<10>"* %27)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(i10* align 512 %30, %"struct.ap_int<10>"* %29)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(i10* align 512 %32, %"struct.ap_int<10>"* %31)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>.15"(i8* align 512 %34, %"struct.ap_uint<8>"* %33)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>.15"(i8* align 512 %36, %"struct.ap_uint<8>"* %35)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(i24* align 512 %_V_data_V1, i3* align 512 %_V_keep_V2, i3* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %37)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i8(i8* noalias align 512 %dst, i8* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i8* %dst, null
  %1 = icmp eq i8* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i8, i8* %src, align 1
  store i8 %3, i8* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i16(i16* noalias align 512 %dst, i16* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i16* %dst, null
  %1 = icmp eq i16* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i16, i16* %src, align 2
  store i16 %3, i16* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "unpacked"="0", i24* noalias align 512 "unpacked"="1.0" %_V_data_V, i3* noalias align 512 "unpacked"="1.1" %_V_keep_V, i3* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "unpacked"="1.6" %_V_dest_V, i8* noalias "unpacked"="2", i8* noalias readonly align 512 "unpacked"="3", i8* noalias "unpacked"="4", i8* noalias readonly align 512 "unpacked"="5", i16* noalias "unpacked"="6", i16* noalias readonly align 512 "unpacked"="7", i16* noalias "unpacked"="8", i16* noalias readonly align 512 "unpacked"="9", i16* noalias "unpacked"="10", i16* noalias readonly align 512 "unpacked"="11", i16* noalias "unpacked"="12", i16* noalias readonly align 512 "unpacked"="13", i16* noalias "unpacked"="14", i16* noalias readonly align 512 "unpacked"="15", i16* noalias "unpacked"="16", i16* noalias readonly align 512 "unpacked"="17", i16* noalias "unpacked"="18", i16* noalias readonly align 512 "unpacked"="19", i16* noalias "unpacked"="20", i16* noalias readonly align 512 "unpacked"="21", i16* noalias "unpacked"="22", i16* noalias readonly align 512 "unpacked"="23", i16* noalias "unpacked"="24", i16* noalias readonly align 512 "unpacked"="25", i16* noalias "unpacked"="26", i16* noalias readonly align 512 "unpacked"="27", %"struct.ap_int<10>"* noalias "unpacked"="28", i10* noalias nocapture readonly align 512 "unpacked"="29.0", %"struct.ap_int<10>"* noalias "unpacked"="30", i10* noalias nocapture readonly align 512 "unpacked"="31.0", %"struct.ap_int<10>"* noalias "unpacked"="32", i10* noalias nocapture readonly align 512 "unpacked"="33.0", %"struct.ap_uint<8>"* noalias "unpacked"="34", i8* noalias nocapture readonly align 512 "unpacked"="35.0", %"struct.ap_uint<8>"* noalias "unpacked"="36", i8* noalias nocapture readonly align 512 "unpacked"="37.0", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "unpacked"="38", i24* noalias align 512 "unpacked"="39.0" %_V_data_V1, i3* noalias align 512 "unpacked"="39.1" %_V_keep_V2, i3* noalias align 512 "unpacked"="39.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="39.3" %_V_user_V4, i1* noalias align 512 "unpacked"="39.4" %_V_last_V5, i1* noalias align 512 "unpacked"="39.5" %_V_id_V6, i1* noalias align 512 "unpacked"="39.6" %_V_dest_V7) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.52"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0, i24* align 512 %_V_data_V, i3* align 512 %_V_keep_V, i3* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %1, i8* align 512 %2)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %3, i8* align 512 %4)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %5, i16* align 512 %6)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %7, i16* align 512 %8)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %9, i16* align 512 %10)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %11, i16* align 512 %12)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %13, i16* align 512 %14)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %15, i16* align 512 %16)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %17, i16* align 512 %18)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %19, i16* align 512 %20)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %21, i16* align 512 %22)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %23, i16* align 512 %24)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %25, i16* align 512 %26)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>.23"(%"struct.ap_int<10>"* %27, i10* align 512 %28)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>.23"(%"struct.ap_int<10>"* %29, i10* align 512 %30)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>.23"(%"struct.ap_int<10>"* %31, i10* align 512 %32)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %33, i8* align 512 %34)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %35, i8* align 512 %36)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.52"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %37, i24* align 512 %_V_data_V1, i3* align 512 %_V_keep_V2, i3* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* noalias "unpacked"="0" %dst, i8* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_uint<8>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<8>", %"struct.ap_uint<8>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src, align 512
  store i8 %1, i8* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>.15"(i8* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<8>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_uint<8>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<8>", %"struct.ap_uint<8>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src.0.0.03, align 1
  store i8 %1, i8* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>.23"(%"struct.ap_int<10>"* noalias "unpacked"="0" %dst, i10* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<10>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_int<10>", %"struct.ap_int<10>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i10* %src to i16*
  %2 = load i16, i16* %1
  %3 = trunc i16 %2 to i10
  store i10 %3, i10* %dst.0.0.04, align 2
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<10>"(i10* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_int<10>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<10>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_int<10>", %"struct.ap_int<10>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i10* %src.0.0.03 to i16*
  %2 = load i16, i16* %1
  %3 = trunc i16 %2 to i10
  store i10 %3, i10* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(i24* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i3* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i3* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_user_V, i1* noalias align 512 "unpacked"="0.4" %dst_V_last_V, i1* noalias align 512 "unpacked"="0.5" %dst_V_id_V, i1* noalias align 512 "unpacked"="0.6" %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.46"(i24* align 512 %dst_V_data_V, i3* align 512 %dst_V_keep_V, i3* align 512 %dst_V_strb_V, i1* align 512 %dst_V_user_V, i1* align 512 %dst_V_last_V, i1* align 512 %dst_V_id_V, i1* align 512 %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.46"(i24* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i3* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i3* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="0.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="0.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nocapture) unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"
  %2 = alloca i24
  %3 = alloca i3
  %4 = alloca i3
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  %10 = call i1 @fpga_fifo_not_empty_12(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %1 to i8*
  %12 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %11, i8* %12)
  %13 = load volatile %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 6, 0, 0, 0
  store i24 %.fca.0.0.0.0.0.extract, i24* %2
  %14 = bitcast i24* %2 to i8*
  %15 = bitcast i24* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %14, i8* %15)
  store i3 %.fca.0.1.0.0.0.extract, i3* %4
  %16 = bitcast i3* %4 to i8*
  %17 = bitcast i3* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %16, i8* %17)
  store i3 %.fca.0.2.0.0.0.extract, i3* %3
  %18 = bitcast i3* %3 to i8*
  %19 = bitcast i3* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  store i1 %.fca.0.3.0.0.0.extract, i1* %8
  %20 = bitcast i1* %8 to i8*
  %21 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %20, i8* %21)
  store i1 %.fca.0.4.0.0.0.extract, i1* %7
  %22 = bitcast i1* %7 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  store i1 %.fca.0.5.0.0.0.extract, i1* %6
  %24 = bitcast i1* %6 to i8*
  %25 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %24, i8* %25)
  store i1 %.fca.0.6.0.0.0.extract, i1* %5
  %26 = bitcast i1* %5 to i8*
  %27 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.52"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias %dst, i24* noalias align 512 "unpacked"="1.0" %src_V_data_V, i3* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i3* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_user_V, i1* noalias align 512 "unpacked"="1.4" %src_V_last_V, i1* noalias align 512 "unpacked"="1.5" %src_V_id_V, i1* noalias align 512 "unpacked"="1.6" %src_V_dest_V) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.55"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %dst, i24* align 512 %src_V_data_V, i3* align 512 %src_V_keep_V, i3* align 512 %src_V_strb_V, i1* align 512 %src_V_user_V, i1* align 512 %src_V_last_V, i1* align 512 %src_V_id_V, i1* align 512 %src_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.55"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nocapture, i24* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i3* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i3* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="1.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="1.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="1.6" %_V_dest_V) unnamed_addr #5 {
entry:
  %1 = alloca i24
  %2 = alloca i3
  %3 = alloca i3
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i24* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_4(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i24* %1 to i8*
  %12 = bitcast i24* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %11, i8* %12)
  %13 = load volatile i24, i24* %1
  %14 = bitcast i3* %3 to i8*
  %15 = bitcast i3* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %14, i8* %15)
  %16 = bitcast i3* %3 to i8*
  %17 = load i8, i8* %16
  %18 = trunc i8 %17 to i3
  %19 = bitcast i3* %2 to i8*
  %20 = bitcast i3* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %19, i8* %20)
  %21 = bitcast i3* %2 to i8*
  %22 = load i8, i8* %21
  %23 = trunc i8 %22 to i3
  %24 = bitcast i1* %7 to i8*
  %25 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %24, i8* %25)
  %26 = bitcast i1* %7 to i8*
  %27 = load i8, i8* %26
  %28 = trunc i8 %27 to i1
  %29 = bitcast i1* %6 to i8*
  %30 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %29, i8* %30)
  %31 = bitcast i1* %6 to i8*
  %32 = load i8, i8* %31
  %33 = trunc i8 %32 to i1
  %34 = bitcast i1* %5 to i8*
  %35 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %34, i8* %35)
  %36 = bitcast i1* %5 to i8*
  %37 = load i8, i8* %36
  %38 = trunc i8 %37 to i1
  %39 = bitcast i1* %4 to i8*
  %40 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %39, i8* %40)
  %41 = bitcast i1* %4 to i8*
  %42 = load i8, i8* %41
  %43 = trunc i8 %42 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" undef, i24 %13, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i3 %18, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i3 %23, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %28, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.3.0.0.0.insert, i1 %33, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.4.0.0.0.insert, i1 %38, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.5.0.0.0.insert, i1 %43, 0, 6, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.6.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %8
  %44 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %8 to i8*
  %45 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %44, i8* %45)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_v_csc_hw(i24*, i3*, i3*, i1*, i1*, i1*, i1*, i8*, i8*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i10*, i10*, i10*, i8*, i8*, i24*, i3*, i3*, i1*, i1*, i1*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "unpacked"="0", i24* noalias align 512 "unpacked"="1.0" %_V_data_V, i3* noalias align 512 "unpacked"="1.1" %_V_keep_V, i3* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "unpacked"="1.6" %_V_dest_V, i8* noalias "unpacked"="2", i8* noalias readonly align 512 "unpacked"="3", i8* noalias "unpacked"="4", i8* noalias readonly align 512 "unpacked"="5", i16* noalias "unpacked"="6", i16* noalias readonly align 512 "unpacked"="7", i16* noalias "unpacked"="8", i16* noalias readonly align 512 "unpacked"="9", i16* noalias "unpacked"="10", i16* noalias readonly align 512 "unpacked"="11", i16* noalias "unpacked"="12", i16* noalias readonly align 512 "unpacked"="13", i16* noalias "unpacked"="14", i16* noalias readonly align 512 "unpacked"="15", i16* noalias "unpacked"="16", i16* noalias readonly align 512 "unpacked"="17", i16* noalias "unpacked"="18", i16* noalias readonly align 512 "unpacked"="19", i16* noalias "unpacked"="20", i16* noalias readonly align 512 "unpacked"="21", i16* noalias "unpacked"="22", i16* noalias readonly align 512 "unpacked"="23", i16* noalias "unpacked"="24", i16* noalias readonly align 512 "unpacked"="25", i16* noalias "unpacked"="26", i16* noalias readonly align 512 "unpacked"="27", %"struct.ap_int<10>"* noalias "unpacked"="28", i10* noalias nocapture readonly align 512 "unpacked"="29.0", %"struct.ap_int<10>"* noalias "unpacked"="30", i10* noalias nocapture readonly align 512 "unpacked"="31.0", %"struct.ap_int<10>"* noalias "unpacked"="32", i10* noalias nocapture readonly align 512 "unpacked"="33.0", %"struct.ap_uint<8>"* noalias "unpacked"="34", i8* noalias nocapture readonly align 512 "unpacked"="35.0", %"struct.ap_uint<8>"* noalias "unpacked"="36", i8* noalias nocapture readonly align 512 "unpacked"="37.0", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "unpacked"="38", i24* noalias align 512 "unpacked"="39.0" %_V_data_V1, i3* noalias align 512 "unpacked"="39.1" %_V_keep_V2, i3* noalias align 512 "unpacked"="39.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="39.3" %_V_user_V4, i1* noalias align 512 "unpacked"="39.4" %_V_last_V5, i1* noalias align 512 "unpacked"="39.5" %_V_id_V6, i1* noalias align 512 "unpacked"="39.6" %_V_dest_V7) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.52"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0, i24* align 512 %_V_data_V, i3* align 512 %_V_keep_V, i3* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.52"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %37, i24* align 512 %_V_data_V1, i3* align 512 %_V_keep_V2, i3* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7)
  ret void
}

define void @v_csc_hw_stub_wrapper(i24*, i3*, i3*, i1*, i1*, i1*, i1*, i8*, i8*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i10*, i10*, i10*, i8*, i8*, i24*, i3*, i3*, i1*, i1*, i1*, i1*) #6 {
entry:
  %32 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"
  %33 = alloca %"struct.ap_int<10>"
  %34 = alloca %"struct.ap_int<10>"
  %35 = alloca %"struct.ap_int<10>"
  %36 = alloca %"struct.ap_uint<8>"
  %37 = alloca %"struct.ap_uint<8>"
  %38 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %32, i24* %0, i3* %1, i3* %2, i1* %3, i1* %4, i1* %5, i1* %6, i8* null, i8* %7, i8* null, i8* %8, i16* null, i16* %9, i16* null, i16* %10, i16* null, i16* %11, i16* null, i16* %12, i16* null, i16* %13, i16* null, i16* %14, i16* null, i16* %15, i16* null, i16* %16, i16* null, i16* %17, i16* null, i16* %18, i16* null, i16* %19, %"struct.ap_int<10>"* %33, i10* %20, %"struct.ap_int<10>"* %34, i10* %21, %"struct.ap_int<10>"* %35, i10* %22, %"struct.ap_uint<8>"* %36, i8* %23, %"struct.ap_uint<8>"* %37, i8* %24, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %38, i24* %25, i3* %26, i3* %27, i1* %28, i1* %29, i1* %30, i1* %31)
  call void @v_csc_hw_stub(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %32, i8* %7, i8* %8, i16* %9, i16* %10, i16* %11, i16* %12, i16* %13, i16* %14, i16* %15, i16* %16, i16* %17, i16* %18, i16* %19, %"struct.ap_int<10>"* %33, %"struct.ap_int<10>"* %34, %"struct.ap_int<10>"* %35, %"struct.ap_uint<8>"* %36, %"struct.ap_uint<8>"* %37, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %38)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %32, i24* %0, i3* %1, i3* %2, i1* %3, i1* %4, i1* %5, i1* %6, i8* null, i8* %7, i8* null, i8* %8, i16* null, i16* %9, i16* null, i16* %10, i16* null, i16* %11, i16* null, i16* %12, i16* null, i16* %13, i16* null, i16* %14, i16* null, i16* %15, i16* null, i16* %16, i16* null, i16* %17, i16* null, i16* %18, i16* null, i16* %19, %"struct.ap_int<10>"* %33, i10* %20, %"struct.ap_int<10>"* %34, i10* %21, %"struct.ap_int<10>"* %35, i10* %22, %"struct.ap_uint<8>"* %36, i8* %23, %"struct.ap_uint<8>"* %37, i8* %24, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %38, i24* %25, i3* %26, i3* %27, i1* %28, i1* %29, i1* %30, i1* %31)
  ret void
}

declare void @v_csc_hw_stub(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull, i8* noalias nocapture nonnull readonly, i8* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, %"struct.ap_int<10>"* noalias nocapture nonnull readonly, %"struct.ap_int<10>"* noalias nocapture nonnull readonly, %"struct.ap_int<10>"* noalias nocapture nonnull readonly, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
