// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
#ifndef _V_CSC_TOP_H_
#define _V_CSC_TOP_H_

#include "hls_video.h"
#include "ap_int.h"

typedef unsigned char U8;
typedef unsigned short U16;
typedef unsigned int U32;

typedef signed char I8;
typedef signed short I16;
typedef signed int I32;

// Offsets
#define OFFSET_WIDTH          MAX_DATA_WIDTH+2
typedef ap_int<OFFSET_WIDTH> OFFSET_TYPE;

// Coefficients
#define COEF_PRECISION        16
#define COEF_FRACTIONAL_BITS  12

//define video formats
#define format_RGB                (0)
#define format_YCbCr444           (1)
#define format_YCbCr422           (2)
#define format_YCbCr420           (3)

//define video components
#define Y_R_CH                    (0)
#define Cb_G_CH                   (1)
#define Cr_B_CH                   (2)

#define MIN_PIXELS (64)

#define CLAMP(a,lo,hi)    ((a)<(lo)?(lo) :((a)>(hi) ? (hi) : (a)))

//unsigned arbitrary precision types
typedef ap_uint<MAX_DATA_WIDTH> PIXEL_TYPE;
typedef hls::Scalar<3, PIXEL_TYPE> RGB_PIXEL;
typedef hls::Scalar<3 * SAMPLES_PER_CLOCK, PIXEL_TYPE> RGB_MULTI_PIXEL;
typedef hls::Scalar<3, PIXEL_TYPE> YUV_PIXEL;
typedef hls::Scalar<3 * SAMPLES_PER_CLOCK, PIXEL_TYPE> YUV_MULTI_PIXEL;
typedef hls::Scalar<1, PIXEL_TYPE> Y_PIXEL;
typedef hls::Scalar<SAMPLES_PER_CLOCK, PIXEL_TYPE> Y_MULTI_PIXEL;
typedef hls::Scalar<1, PIXEL_TYPE> C_PIXEL;
typedef hls::Scalar<SAMPLES_PER_CLOCK, PIXEL_TYPE> C_MULTI_PIXEL;

typedef ap_uint<SAMPLES_PER_CLOCK * MAX_DATA_WIDTH> Y_MEM_PIXEL_TYPE;

typedef hls::stream<ap_axiu<BITS_PER_CLOCK, 1, 1, 1> > V_CSC_AXI_STREAM_IN;
typedef hls::stream<ap_axiu<BITS_PER_CLOCK, 1, 1, 1> > V_CSC_AXI_STREAM_OUT;
typedef hls::stream<RGB_MULTI_PIXEL> V_CSC_STREAM_MULTIPIX;

//HW Registers
typedef struct
{
	U8 InVideoFormat;
	U8 OutVideoFormat;
	U16 width;
	U16 height;
#if (ENABLE_WINDOW==1)
  U16 ColStart;
  U16 ColEnd;
  U16 RowStart;
  U16 RowEnd;
#endif
	I16 K11;
	I16 K12;
	I16 K13;
	I16 K21;
	I16 K22;
	I16 K23;
	I16 K31;
	I16 K32;
	I16 K33;
	OFFSET_TYPE ROffset;
	OFFSET_TYPE GOffset;
	OFFSET_TYPE BOffset;
	PIXEL_TYPE ClampMin;
	PIXEL_TYPE ClipMax;
#if (ENABLE_WINDOW==1)
  I16 K11_2;
  I16 K12_2;
  I16 K13_2;
  I16 K21_2;
  I16 K22_2;
  I16 K23_2;
  I16 K31_2;
  I16 K32_2;
  I16 K33_2;
  OFFSET_TYPE ROffset_2;
  OFFSET_TYPE GOffset_2;
  OFFSET_TYPE BOffset_2;
  PIXEL_TYPE ClampMin_2;
  PIXEL_TYPE ClipMax_2;
#endif
} V_CSC_HW_STRUCT_REG;

// top level function for HW synthesis
extern void v_csc(V_CSC_AXI_STREAM_IN &s_axis_video, U8 &InVideoFormat, U8 &OutVideoFormat,
		U16 &width, U16 &height,
#if (ENABLE_WINDOW==1)
		          U16 &ColStart,
		          U16 &ColEnd,
		          U16 &RowStart,
		          U16 &RowEnd,
#endif
		I16 &K11, I16 &K12, I16 &K13, I16 &K21, I16 &K22, I16 &K23, I16 &K31, I16 &K32, I16 &K33,
		OFFSET_TYPE &ROffset, OFFSET_TYPE &GOffset, OFFSET_TYPE &BOffset, PIXEL_TYPE &ClampMin,
		PIXEL_TYPE &ClipMax,
#if (ENABLE_WINDOW==1)
				  I16 &K11_2,
				  I16 &K12_2,
				  I16 &K13_2,
				  I16 &K21_2,
				  I16 &K22_2,
				  I16 &K23_2,
				  I16 &K31_2,
				  I16 &K32_2,
				  I16 &K33_2,
				  OFFSET_TYPE &ROffset_2,
				  OFFSET_TYPE &GOffset_2,
				  OFFSET_TYPE &BOffset_2,
				  PIXEL_TYPE &ClampMin_2,
				  PIXEL_TYPE &ClipMax_2,
#endif
		V_CSC_AXI_STREAM_OUT &m_axis_video);

#endif

