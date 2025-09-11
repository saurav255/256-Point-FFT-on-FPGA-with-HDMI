// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xbd_19ea_csc_0_v_csc.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XBd_19ea_csc_0_v_csc_CfgInitialize(XBd_19ea_csc_0_v_csc *InstancePtr, XBd_19ea_csc_0_v_csc_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress = ConfigPtr->Bd_19ea_csc_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XBd_19ea_csc_0_v_csc_Start(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XBd_19ea_csc_0_v_csc_IsDone(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XBd_19ea_csc_0_v_csc_IsIdle(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XBd_19ea_csc_0_v_csc_IsReady(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XBd_19ea_csc_0_v_csc_EnableAutoRestart(XBd_19ea_csc_0_v_csc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XBd_19ea_csc_0_v_csc_DisableAutoRestart(XBd_19ea_csc_0_v_csc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_AP_CTRL, 0);
}

void XBd_19ea_csc_0_v_csc_Set_InVideoFormat(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_INVIDEOFORMAT_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_InVideoFormat(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_INVIDEOFORMAT_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_OutVideoFormat(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_OUTVIDEOFORMAT_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_OutVideoFormat(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_OUTVIDEOFORMAT_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_width(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_width(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_height(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_height(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_K11(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K11_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_K11(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K11_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_K12(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K12_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_K12(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K12_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_K13(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K13_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_K13(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K13_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_K21(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K21_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_K21(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K21_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_K22(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K22_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_K22(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K22_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_K23(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K23_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_K23(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K23_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_K31(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K31_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_K31(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K31_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_K32(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K32_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_K32(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K32_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_K33(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K33_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_K33(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_K33_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_ROffset(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_ROFFSET_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_ROffset(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_ROFFSET_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_GOffset(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_GOFFSET_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_GOffset(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_GOFFSET_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_BOffset(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_BOFFSET_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_BOffset(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_BOFFSET_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_ClampMin(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_CLAMPMIN_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_ClampMin(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_CLAMPMIN_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_Set_ClipMax(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_CLIPMAX_DATA, Data);
}

u32 XBd_19ea_csc_0_v_csc_Get_ClipMax(XBd_19ea_csc_0_v_csc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_CLIPMAX_DATA);
    return Data;
}

void XBd_19ea_csc_0_v_csc_InterruptGlobalEnable(XBd_19ea_csc_0_v_csc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_GIE, 1);
}

void XBd_19ea_csc_0_v_csc_InterruptGlobalDisable(XBd_19ea_csc_0_v_csc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_GIE, 0);
}

void XBd_19ea_csc_0_v_csc_InterruptEnable(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_IER);
    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_IER, Register | Mask);
}

void XBd_19ea_csc_0_v_csc_InterruptDisable(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_IER);
    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XBd_19ea_csc_0_v_csc_InterruptClear(XBd_19ea_csc_0_v_csc *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_19ea_csc_0_v_csc_WriteReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_ISR, Mask);
}

u32 XBd_19ea_csc_0_v_csc_InterruptGetEnabled(XBd_19ea_csc_0_v_csc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_IER);
}

u32 XBd_19ea_csc_0_v_csc_InterruptGetStatus(XBd_19ea_csc_0_v_csc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBd_19ea_csc_0_v_csc_ReadReg(InstancePtr->Bd_19ea_csc_0_ctrl_BaseAddress, XBD_19EA_CSC_0_V_CSC_BD_19EA_CSC_0_CTRL_ADDR_ISR);
}

