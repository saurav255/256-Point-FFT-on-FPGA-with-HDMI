# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
# Tool Version Limit: 2024.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
cmake_minimum_required(VERSION 3.15)
project(bd_19ea_csc_0_v_csc)
find_package(common)
collector_create (PROJECT_LIB_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_SOURCES xbd_19ea_csc_0_v_csc.c)
collect (PROJECT_LIB_SOURCES xbd_19ea_csc_0_v_csc_sinit.c)
collect (PROJECT_LIB_SOURCES xbd_19ea_csc_0_v_csc_linux.c)
collect (PROJECT_LIB_SOURCES xbd_19ea_csc_0_v_csc_g.c)
collector_list (_sources PROJECT_LIB_SOURCES)
collector_create (PROJECT_LIB_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_HEADERS xbd_19ea_csc_0_v_csc.h)
collect (PROJECT_LIB_HEADERS xbd_19ea_csc_0_v_csc_hw.h)
collector_list (_headers PROJECT_LIB_HEADERS)
file(COPY ${_headers} DESTINATION ${CMAKE_BINARY_DIR}/include)
include_directories(${CMAKE_BINARY_DIR}/include)
add_library(bd_19ea_csc_0_v_csc STATIC ${_sources})
set_target_properties(bd_19ea_csc_0_v_csc PROPERTIES LINKER_LANGUAGE C)

