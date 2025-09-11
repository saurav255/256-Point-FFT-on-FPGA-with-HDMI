// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module bd_19ea_csc_0_CTRL_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [7:0]                    InVideoFormat,
    output wire [7:0]                    OutVideoFormat,
    output wire [15:0]                   width,
    output wire [15:0]                   height,
    output wire [15:0]                   K11,
    output wire [15:0]                   K12,
    output wire [15:0]                   K13,
    output wire [15:0]                   K21,
    output wire [15:0]                   K22,
    output wire [15:0]                   K23,
    output wire [15:0]                   K31,
    output wire [15:0]                   K32,
    output wire [15:0]                   K33,
    output wire [9:0]                    ROffset,
    output wire [9:0]                    GOffset,
    output wire [9:0]                    BOffset,
    output wire [7:0]                    ClampMin,
    output wire [7:0]                    ClipMax,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_hs
//
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

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL               = 8'h00,
    ADDR_GIE                   = 8'h04,
    ADDR_IER                   = 8'h08,
    ADDR_ISR                   = 8'h0c,
    ADDR_INVIDEOFORMAT_DATA_0  = 8'h10,
    ADDR_INVIDEOFORMAT_CTRL    = 8'h14,
    ADDR_OUTVIDEOFORMAT_DATA_0 = 8'h18,
    ADDR_OUTVIDEOFORMAT_CTRL   = 8'h1c,
    ADDR_WIDTH_DATA_0          = 8'h20,
    ADDR_WIDTH_CTRL            = 8'h24,
    ADDR_HEIGHT_DATA_0         = 8'h28,
    ADDR_HEIGHT_CTRL           = 8'h2c,
    ADDR_K11_DATA_0            = 8'h50,
    ADDR_K11_CTRL              = 8'h54,
    ADDR_K12_DATA_0            = 8'h58,
    ADDR_K12_CTRL              = 8'h5c,
    ADDR_K13_DATA_0            = 8'h60,
    ADDR_K13_CTRL              = 8'h64,
    ADDR_K21_DATA_0            = 8'h68,
    ADDR_K21_CTRL              = 8'h6c,
    ADDR_K22_DATA_0            = 8'h70,
    ADDR_K22_CTRL              = 8'h74,
    ADDR_K23_DATA_0            = 8'h78,
    ADDR_K23_CTRL              = 8'h7c,
    ADDR_K31_DATA_0            = 8'h80,
    ADDR_K31_CTRL              = 8'h84,
    ADDR_K32_DATA_0            = 8'h88,
    ADDR_K32_CTRL              = 8'h8c,
    ADDR_K33_DATA_0            = 8'h90,
    ADDR_K33_CTRL              = 8'h94,
    ADDR_ROFFSET_DATA_0        = 8'h98,
    ADDR_ROFFSET_CTRL          = 8'h9c,
    ADDR_GOFFSET_DATA_0        = 8'ha0,
    ADDR_GOFFSET_CTRL          = 8'ha4,
    ADDR_BOFFSET_DATA_0        = 8'ha8,
    ADDR_BOFFSET_CTRL          = 8'hac,
    ADDR_CLAMPMIN_DATA_0       = 8'hb0,
    ADDR_CLAMPMIN_CTRL         = 8'hb4,
    ADDR_CLIPMAX_DATA_0        = 8'hb8,
    ADDR_CLIPMAX_CTRL          = 8'hbc,
    WRIDLE                     = 2'd0,
    WRDATA                     = 2'd1,
    WRRESP                     = 2'd2,
    WRRESET                    = 2'd3,
    RDIDLE                     = 2'd0,
    RDDATA                     = 2'd1,
    RDRESET                    = 2'd2,
    ADDR_BITS                = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle = 1'b0;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [7:0]                    int_InVideoFormat = 'b0;
    reg  [7:0]                    int_OutVideoFormat = 'b0;
    reg  [15:0]                   int_width = 'b0;
    reg  [15:0]                   int_height = 'b0;
    reg  [15:0]                   int_K11 = 'b0;
    reg  [15:0]                   int_K12 = 'b0;
    reg  [15:0]                   int_K13 = 'b0;
    reg  [15:0]                   int_K21 = 'b0;
    reg  [15:0]                   int_K22 = 'b0;
    reg  [15:0]                   int_K23 = 'b0;
    reg  [15:0]                   int_K31 = 'b0;
    reg  [15:0]                   int_K32 = 'b0;
    reg  [15:0]                   int_K33 = 'b0;
    reg  [9:0]                    int_ROffset = 'b0;
    reg  [9:0]                    int_GOffset = 'b0;
    reg  [9:0]                    int_BOffset = 'b0;
    reg  [7:0]                    int_ClampMin = 'b0;
    reg  [7:0]                    int_ClipMax = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= {AWADDR[ADDR_BITS-1:2], {2{1'b0}}};
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_INVIDEOFORMAT_DATA_0: begin
                    rdata <= int_InVideoFormat[7:0];
                end
                ADDR_OUTVIDEOFORMAT_DATA_0: begin
                    rdata <= int_OutVideoFormat[7:0];
                end
                ADDR_WIDTH_DATA_0: begin
                    rdata <= int_width[15:0];
                end
                ADDR_HEIGHT_DATA_0: begin
                    rdata <= int_height[15:0];
                end
                ADDR_K11_DATA_0: begin
                    rdata <= int_K11[15:0];
                end
                ADDR_K12_DATA_0: begin
                    rdata <= int_K12[15:0];
                end
                ADDR_K13_DATA_0: begin
                    rdata <= int_K13[15:0];
                end
                ADDR_K21_DATA_0: begin
                    rdata <= int_K21[15:0];
                end
                ADDR_K22_DATA_0: begin
                    rdata <= int_K22[15:0];
                end
                ADDR_K23_DATA_0: begin
                    rdata <= int_K23[15:0];
                end
                ADDR_K31_DATA_0: begin
                    rdata <= int_K31[15:0];
                end
                ADDR_K32_DATA_0: begin
                    rdata <= int_K32[15:0];
                end
                ADDR_K33_DATA_0: begin
                    rdata <= int_K33[15:0];
                end
                ADDR_ROFFSET_DATA_0: begin
                    rdata <= int_ROffset[9:0];
                end
                ADDR_GOFFSET_DATA_0: begin
                    rdata <= int_GOffset[9:0];
                end
                ADDR_BOFFSET_DATA_0: begin
                    rdata <= int_BOffset[9:0];
                end
                ADDR_CLAMPMIN_DATA_0: begin
                    rdata <= int_ClampMin[7:0];
                end
                ADDR_CLIPMAX_DATA_0: begin
                    rdata <= int_ClipMax[7:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign InVideoFormat     = int_InVideoFormat;
assign OutVideoFormat    = int_OutVideoFormat;
assign width             = int_width;
assign height            = int_height;
assign K11               = int_K11;
assign K12               = int_K12;
assign K13               = int_K13;
assign K21               = int_K21;
assign K22               = int_K22;
assign K23               = int_K23;
assign K31               = int_K31;
assign K32               = int_K32;
assign K33               = int_K33;
assign ROffset           = int_ROffset;
assign GOffset           = int_GOffset;
assign BOffset           = int_BOffset;
assign ClampMin          = int_ClampMin;
assign ClipMax           = int_ClipMax;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <= WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_InVideoFormat[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_InVideoFormat[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INVIDEOFORMAT_DATA_0)
            int_InVideoFormat[7:0] <= (WDATA[31:0] & wmask) | (int_InVideoFormat[7:0] & ~wmask);
    end
end

// int_OutVideoFormat[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_OutVideoFormat[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUTVIDEOFORMAT_DATA_0)
            int_OutVideoFormat[7:0] <= (WDATA[31:0] & wmask) | (int_OutVideoFormat[7:0] & ~wmask);
    end
end

// int_width[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_width[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WIDTH_DATA_0)
            int_width[15:0] <= (WDATA[31:0] & wmask) | (int_width[15:0] & ~wmask);
    end
end

// int_height[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_height[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HEIGHT_DATA_0)
            int_height[15:0] <= (WDATA[31:0] & wmask) | (int_height[15:0] & ~wmask);
    end
end

// int_K11[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_K11[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K11_DATA_0)
            int_K11[15:0] <= (WDATA[31:0] & wmask) | (int_K11[15:0] & ~wmask);
    end
end

// int_K12[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_K12[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K12_DATA_0)
            int_K12[15:0] <= (WDATA[31:0] & wmask) | (int_K12[15:0] & ~wmask);
    end
end

// int_K13[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_K13[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K13_DATA_0)
            int_K13[15:0] <= (WDATA[31:0] & wmask) | (int_K13[15:0] & ~wmask);
    end
end

// int_K21[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_K21[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K21_DATA_0)
            int_K21[15:0] <= (WDATA[31:0] & wmask) | (int_K21[15:0] & ~wmask);
    end
end

// int_K22[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_K22[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K22_DATA_0)
            int_K22[15:0] <= (WDATA[31:0] & wmask) | (int_K22[15:0] & ~wmask);
    end
end

// int_K23[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_K23[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K23_DATA_0)
            int_K23[15:0] <= (WDATA[31:0] & wmask) | (int_K23[15:0] & ~wmask);
    end
end

// int_K31[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_K31[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K31_DATA_0)
            int_K31[15:0] <= (WDATA[31:0] & wmask) | (int_K31[15:0] & ~wmask);
    end
end

// int_K32[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_K32[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K32_DATA_0)
            int_K32[15:0] <= (WDATA[31:0] & wmask) | (int_K32[15:0] & ~wmask);
    end
end

// int_K33[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_K33[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K33_DATA_0)
            int_K33[15:0] <= (WDATA[31:0] & wmask) | (int_K33[15:0] & ~wmask);
    end
end

// int_ROffset[9:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ROffset[9:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ROFFSET_DATA_0)
            int_ROffset[9:0] <= (WDATA[31:0] & wmask) | (int_ROffset[9:0] & ~wmask);
    end
end

// int_GOffset[9:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_GOffset[9:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GOFFSET_DATA_0)
            int_GOffset[9:0] <= (WDATA[31:0] & wmask) | (int_GOffset[9:0] & ~wmask);
    end
end

// int_BOffset[9:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_BOffset[9:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BOFFSET_DATA_0)
            int_BOffset[9:0] <= (WDATA[31:0] & wmask) | (int_BOffset[9:0] & ~wmask);
    end
end

// int_ClampMin[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ClampMin[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CLAMPMIN_DATA_0)
            int_ClampMin[7:0] <= (WDATA[31:0] & wmask) | (int_ClampMin[7:0] & ~wmask);
    end
end

// int_ClipMax[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ClipMax[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CLIPMAX_DATA_0)
            int_ClipMax[7:0] <= (WDATA[31:0] & wmask) | (int_ClipMax[7:0] & ~wmask);
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
