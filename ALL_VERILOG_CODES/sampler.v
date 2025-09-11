`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2025 20:03:01
// Design Name: 
// Module Name: sampler
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


module sampler( input clk, rst, trig, vpp, vnn, output reg done, output reg [7:0]addr, output reg wena, output reg [11:0]d_smpl, output state_sampl);
    wire eoc;
    wire d_ready;
    wire [15:0]d_out;
    
    
    
    xadc_wiz_0 xadc_inst(
          .daddr_in(7'h18),            // Address bus for the dynamic reconfiguration port
          .dclk_in(clk),   // *          // Clock input for the dynamic reconfiguration port
          .den_in(eoc),      // *        // Enable Signal for the dynamic reconfiguration port
          .di_in(0),               // Input data bus for the dynamic reconfiguration port
          .dwe_in(0),              // Write Enable for the dynamic reconfiguration port
          .reset_in(~rst),            // Reset signal for the System Monitor control logic
          .vauxp8(vpp),              // Auxiliary channel 3
          .vauxn8(vnn),
          .busy_out(),            // ADC Busy signal
          .channel_out(),         // Channel Selection Outputs
          .do_out(d_out),              // Output data bus for dynamic reconfiguration port
          .drdy_out(d_ready),            // Data ready signal for the dynamic reconfiguration port
          .eoc_out(eoc),             // End of Conversion Signal
          .eos_out(),             // End of Sequence Signal
          .alarm_out(),           // OR'ed output of all the Alarms    
          .vp_in(0),               // Dedicated Analog Input Pair
          .vn_in(0));
          
          // RAM instance 
          // Sample ram signals 
//          reg [7:0]addr;
//          reg wena;
//          reg [11:0]d_smpl;
          
//          blk_mem_gen_0 my_bram (
//                .clka(clk),
//                .wea(wena),
//                .addra(addr),
//                .dina(d_smpl),
//                .clkb(clk),
//                .addrb(),
//                .doutb()
//            );


          reg state;
//------------------------ ila debug signals --------------------
assign state_sampl = state;
//---------------------------------------------------------------
          localparam SAMPLING = 1'b0, WAIT = 1'b1;
          localparam CLK_FREQ = 148500000;
          localparam SAMPL_CYCLES = CLK_FREQ/10000;
          reg [15:0]clk_ctr;
          reg [9:0]bit_ctr;
          
          always@(posedge clk or negedge rst) begin
            if(rst == 0) begin
                clk_ctr <= 0;
                bit_ctr <= 0;
                wena <= 1'b0;
                addr <= 0;
                d_smpl <= 0;
                state<=SAMPLING;
                done <= 1'b0;
            end else begin
                case(state)
                    SAMPLING : begin
                        if(bit_ctr == 256) begin
                            bit_ctr<=0;
                            state <= WAIT;
                            done <= 1'b1;
                        end
                    
                        if(clk_ctr == SAMPL_CYCLES) begin
                            clk_ctr <= 0;
                            bit_ctr <= bit_ctr + 1;
                            wena <= 1'b1;
                            d_smpl <= d_out[15:4];
                            addr <= addr + 1;
                        end else begin
                            clk_ctr <= clk_ctr + 1;
                            wena <= 1'b0;
                        end
                    end
                    WAIT : begin
                        done <= 1'b0;
                        if(trig) begin
                            state <= SAMPLING;
                        end
                        // resetting all the registers for next set of samples 
                        clk_ctr <= 0;
                        bit_ctr <= 0;
                        wena <= 1'b0;
                        addr <= 0;
                        d_smpl <= 0;
                    end
                endcase
            end
          end
          

endmodule
