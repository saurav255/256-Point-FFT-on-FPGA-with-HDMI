`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 15:14:56
// Design Name: 
// Module Name: sample_ram_rtl
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

module sample_ram_rtl #(parameter WIDTH = 20)(
  input wire clk,
  input wire wr,
  input wire [7:0] addra, addrb,
  input wire [WIDTH*2 - 1:0] dina,
  output reg [WIDTH*2 - 1:0] doutb
);
  reg [WIDTH*2 - 1 : 0] mem [0:255];
always @(posedge clk) begin
    if (wr)
      mem[addra] <= dina;
    doutb <= mem[addrb];
  end
endmodule
