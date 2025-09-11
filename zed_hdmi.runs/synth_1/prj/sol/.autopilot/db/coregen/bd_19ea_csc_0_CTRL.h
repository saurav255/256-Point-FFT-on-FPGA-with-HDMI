// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of InVideoFormat
//        bit 7~0 - InVideoFormat[7:0] (Read/Write)
//        others  - reserved
// 0x14 : reserved
// 0x18 : Data signal of OutVideoFormat
//        bit 7~0 - OutVideoFormat[7:0] (Read/Write)
//        others  - reserved
// 0x1c : reserved
// 0x20 : Data signal of width
//        bit 15~0 - width[15:0] (Read/Write)
//        others   - reserved
// 0x24 : reserved
// 0x28 : Data signal of height
//        bit 15~0 - height[15:0] (Read/Write)
//        others   - reserved
// 0x2c : reserved
// 0x50 : Data signal of K11
//        bit 15~0 - K11[15:0] (Read/Write)
//        others   - reserved
// 0x54 : reserved
// 0x58 : Data signal of K12
//        bit 15~0 - K12[15:0] (Read/Write)
//        others   - reserved
// 0x5c : reserved
// 0x60 : Data signal of K13
//        bit 15~0 - K13[15:0] (Read/Write)
//        others   - reserved
// 0x64 : reserved
// 0x68 : Data signal of K21
//        bit 15~0 - K21[15:0] (Read/Write)
//        others   - reserved
// 0x6c : reserved
// 0x70 : Data signal of K22
//        bit 15~0 - K22[15:0] (Read/Write)
//        others   - reserved
// 0x74 : reserved
// 0x78 : Data signal of K23
//        bit 15~0 - K23[15:0] (Read/Write)
//        others   - reserved
// 0x7c : reserved
// 0x80 : Data signal of K31
//        bit 15~0 - K31[15:0] (Read/Write)
//        others   - reserved
// 0x84 : reserved
// 0x88 : Data signal of K32
//        bit 15~0 - K32[15:0] (Read/Write)
//        others   - reserved
// 0x8c : reserved
// 0x90 : Data signal of K33
//        bit 15~0 - K33[15:0] (Read/Write)
//        others   - reserved
// 0x94 : reserved
// 0x98 : Data signal of ROffset
//        bit 9~0 - ROffset[9:0] (Read/Write)
//        others  - reserved
// 0x9c : reserved
// 0xa0 : Data signal of GOffset
//        bit 9~0 - GOffset[9:0] (Read/Write)
//        others  - reserved
// 0xa4 : reserved
// 0xa8 : Data signal of BOffset
//        bit 9~0 - BOffset[9:0] (Read/Write)
//        others  - reserved
// 0xac : reserved
// 0xb0 : Data signal of ClampMin
//        bit 7~0 - ClampMin[7:0] (Read/Write)
//        others  - reserved
// 0xb4 : reserved
// 0xb8 : Data signal of ClipMax
//        bit 7~0 - ClipMax[7:0] (Read/Write)
//        others  - reserved
// 0xbc : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define BD_19EA_CSC_0_CTRL_ADDR_AP_CTRL             0x00
#define BD_19EA_CSC_0_CTRL_ADDR_GIE                 0x04
#define BD_19EA_CSC_0_CTRL_ADDR_IER                 0x08
#define BD_19EA_CSC_0_CTRL_ADDR_ISR                 0x0c
#define BD_19EA_CSC_0_CTRL_ADDR_INVIDEOFORMAT_DATA  0x10
#define BD_19EA_CSC_0_CTRL_BITS_INVIDEOFORMAT_DATA  8
#define BD_19EA_CSC_0_CTRL_ADDR_OUTVIDEOFORMAT_DATA 0x18
#define BD_19EA_CSC_0_CTRL_BITS_OUTVIDEOFORMAT_DATA 8
#define BD_19EA_CSC_0_CTRL_ADDR_WIDTH_DATA          0x20
#define BD_19EA_CSC_0_CTRL_BITS_WIDTH_DATA          16
#define BD_19EA_CSC_0_CTRL_ADDR_HEIGHT_DATA         0x28
#define BD_19EA_CSC_0_CTRL_BITS_HEIGHT_DATA         16
#define BD_19EA_CSC_0_CTRL_ADDR_K11_DATA            0x50
#define BD_19EA_CSC_0_CTRL_BITS_K11_DATA            16
#define BD_19EA_CSC_0_CTRL_ADDR_K12_DATA            0x58
#define BD_19EA_CSC_0_CTRL_BITS_K12_DATA            16
#define BD_19EA_CSC_0_CTRL_ADDR_K13_DATA            0x60
#define BD_19EA_CSC_0_CTRL_BITS_K13_DATA            16
#define BD_19EA_CSC_0_CTRL_ADDR_K21_DATA            0x68
#define BD_19EA_CSC_0_CTRL_BITS_K21_DATA            16
#define BD_19EA_CSC_0_CTRL_ADDR_K22_DATA            0x70
#define BD_19EA_CSC_0_CTRL_BITS_K22_DATA            16
#define BD_19EA_CSC_0_CTRL_ADDR_K23_DATA            0x78
#define BD_19EA_CSC_0_CTRL_BITS_K23_DATA            16
#define BD_19EA_CSC_0_CTRL_ADDR_K31_DATA            0x80
#define BD_19EA_CSC_0_CTRL_BITS_K31_DATA            16
#define BD_19EA_CSC_0_CTRL_ADDR_K32_DATA            0x88
#define BD_19EA_CSC_0_CTRL_BITS_K32_DATA            16
#define BD_19EA_CSC_0_CTRL_ADDR_K33_DATA            0x90
#define BD_19EA_CSC_0_CTRL_BITS_K33_DATA            16
#define BD_19EA_CSC_0_CTRL_ADDR_ROFFSET_DATA        0x98
#define BD_19EA_CSC_0_CTRL_BITS_ROFFSET_DATA        10
#define BD_19EA_CSC_0_CTRL_ADDR_GOFFSET_DATA        0xa0
#define BD_19EA_CSC_0_CTRL_BITS_GOFFSET_DATA        10
#define BD_19EA_CSC_0_CTRL_ADDR_BOFFSET_DATA        0xa8
#define BD_19EA_CSC_0_CTRL_BITS_BOFFSET_DATA        10
#define BD_19EA_CSC_0_CTRL_ADDR_CLAMPMIN_DATA       0xb0
#define BD_19EA_CSC_0_CTRL_BITS_CLAMPMIN_DATA       8
#define BD_19EA_CSC_0_CTRL_ADDR_CLIPMAX_DATA        0xb8
#define BD_19EA_CSC_0_CTRL_BITS_CLIPMAX_DATA        8
