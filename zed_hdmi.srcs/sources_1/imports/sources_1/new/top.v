`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2025 00:03:23
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module top( input clk, rst, vpp, vnn, output [3:0]wena_fifo, output [31:0]addr_fifo, output [31:0]din_fifo, output fft_t, fft_d, output [3:0]state_fft, output state_sampl, output [39:0]d_sampl);

// Sample RAM signals 
wire [7:0]addra_smpl;
wire [7:0]addrb_smpl;
wire wena_smpl; 
wire [39:0]din_smpl;
wire [39:0]dout_smpl;
// Sample RAM instantiation 
//          blk_mem_gen_0 smpl_ram ( 
//                .clka(clk),
//                .wea(wena_smpl),
//                .addra(addra_smpl),
//                .dina(din_smpl), 
//                .clkb(clk), 
//                .addrb(addrb_smpl), 
//                .doutb(dout_smpl)
//            );

// ------------ rtl sample ram ----------------

sample_ram_rtl sampl_ram_rtl(
  .clk(clk),
  .wr(wena_smpl),
  .addra(addra_smpl), .addrb(addrb_smpl),
  .dina(din_smpl),
  .doutb(dout_smpl)
);

//---------------------------------------------

wire wena_smpl_1; 
wire wena_smpl_2;
assign wena_smpl = wena_smpl_1||wena_smpl_2;

wire [7:0]addra_smpl_1;
wire [7:0]addra_smpl_2;
assign addra_smpl = (wena_smpl_1 == 1)?addra_smpl_1:addra_smpl_2;

wire [39:0]din_smpl_1;
wire [39:0]din_smpl_2;
assign din_smpl = (wena_smpl_1 == 1)?{28'b0,din_smpl_1}:din_smpl_2;
//--------------------- ila probe signal ---------------------
assign d_sampl = din_smpl;
//------------------------------------------------------------
wire wena_fifo_t;     
wire [9:0]addr_fifo_t;
wire [23:0]din_fifo_t;

assign wena_fifo = {4{wena_fifo_t}};
assign addr_fifo = {22'b0, addr_fifo_t};
assign din_fifo = {8'b0, din_fifo_t};

// Twiddle ROM instantiation 
wire [9:0]addr_twiddle;
wire [23:0]dout_twiddle;
//blk_mem_gen_2 my_bram (
//    .clka(clk),
//    .addra(addr_twiddle),
//    .douta(dout_twiddle)
//);
//------------- rtl twiddle rom ----------------------
twiddle_rom_256 twiddle_rom(.clk(clk),
  .addr(addr_twiddle),
  .dout(dout_twiddle));

//----------------------------------------------------



wire fft_done, fft_trig;
//---------------------- debug signals for ila core ------------------------------
assign fft_d = fft_done;
assign fft_t = fft_trig;
//--------------------------------------------------------------------------------

sampler smpl_inst( .clk(clk), .rst(rst), .trig(fft_done), .vpp(vpp), .vnn(vnn), .done(fft_trig), .addr(addra_smpl_1), .wena(wena_smpl_1), .d_smpl(din_smpl_1), .state_sampl(state_sampl));

fft_ver2 fft_inst(.clk(clk), .rst(rst), .trig(fft_trig), .doutb(dout_smpl), .dout_tw(dout_twiddle), .douta(din_smpl_2), .addr_tw(addr_twiddle), 
                  .addrb(addrb_smpl), .addra(addra_smpl_2), .wr(wena_smpl_2), .done(fft_done), .d_fifo_ram(din_fifo_t), .wr_fifo_ram(wena_fifo_t), .addr_fifo_ram(addr_fifo_t), .state_fft(state_fft));

endmodule




//module top( input clk, rst, vpp, vnn, output [3:0]wena_fifo, output [31:0]addr_fifo, [31:0]din_fifo);

//// Sample RAM signals 
//wire [7:0]addra_smpl;
//wire [7:0]addrb_smpl;
//wire wena_smpl;
//wire [11:0]din_smpl;
//wire [11:0]dout_smpl;
//// Sample RAM instantiation 
//          blk_mem_gen_0 smpl_ram (
//                .clka(clk),
//                .wea(wena_smpl),
//                .addra(addra_smpl),
//                .dina(din_smpl),
//                .clkb(clk),
//                .addrb(addrb_smpl),
//                .doutb(dout_smpl)
//            );

//wire wena_fifo_t;     
//wire [7:0]addr_fifo_t;
//wire [23:0]din_fifo_t;

//assign wena_fifo = {4{wena_fifo_t}};
//assign addr_fifo = {24'b0, addr_fifo_t};
//assign din_fifo = {8'b0, din_fifo_t};

//// Twiddle ROM instantiation 
//wire [9:0]addr_twiddle;
//wire [23:0]dout_twiddle;
//blk_mem_gen_2 my_bram (
//    .clka(clk),
//    .addra(addr_twiddle),
//    .douta(dout_twiddle)
//);

//wire fft_done, fft_trig;
//sampler smpl_inst( .clk(clk), .rst(~rst), .trig(fft_done), .vpp(vpp), .vnn(vnn), .done(fft_trig), .addr(addra_smpl), .wena(wena_smpl), .d_smpl(din_smpl));

//fft_ver2 fft_inst(.clk(clk), .rst(~rst), .trig(fft_trig), .doutb(dout_smpl), .dout_tw(dout_twiddle), .douta(din_smpl), .addr_tw(addr_twiddle), 
//                  .addrb(addrb_smpl), .addra(addra_smpl), .wr(wena_smpl), .done(fft_done), .d_fifo_ram(din_fifo_t), .wr_fifo_ram(wena_fifo_t), .addr_fifo_ram(addr_fifo_t));

//endmodule

