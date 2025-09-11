// RGB to YCbCr Converter Module (Corrected for Pipeline Latency)
// - Converts 24-bit RGB input to 24-bit YCbCr output.
// - Uses signed, fixed-point arithmetic for correct hardware implementation.
// - Delays control signals to match the data pipeline latency.

module rgb_to_ycrcb_corrected (
    // System Signals
    input wire aclk,
    input wire aresetn,

    // AXI4-Stream Slave Interface (Input)
    input wire [23:0] s_axis_video_tdata,   // Input RGB data (R[23:16], G[15:8], B[7:0])
    input wire        s_axis_video_tvalid,  // Input valid signal
    output wire       s_axis_video_tready,  // Input ready signal
    input wire        s_axis_video_tlast,   // Input last pixel in line
    input wire        s_axis_video_tuser,   // Input start of frame

    // AXI4-Stream Master Interface (Output)
    output wire [23:0] m_axis_video_tdata,   // Output YCbCr data (Y[23:16], Cb[15:8], Cr[7:0])
    output wire        m_axis_video_tvalid,  // Output valid signal
    input wire         m_axis_video_tready,  // Output ready signal
    output wire        m_axis_video_tlast,   // Output last pixel in line
    output wire        m_axis_video_tuser    // Output start of frame
);

    // Internal register declarations
    reg [7:0] r_reg, g_reg, b_reg;

    // Use signed registers for calculations involving negative coefficients.
    reg signed [16:0] y_calc, cb_calc, cr_calc;
    
    reg [7:0] y_out, cb_out, cr_out;

    // Wire up ready signals
    assign s_axis_video_tready = m_axis_video_tready;

    // Stage 1: Register the input data
    always @(posedge aclk) begin
        if (s_axis_video_tvalid && s_axis_video_tready) begin
            r_reg <= s_axis_video_tdata[23:16];
            g_reg <= s_axis_video_tdata[15:8];
            b_reg <= s_axis_video_tdata[7:0];
        end
    end

    // Stage 2: Perform the signed, fixed-point calculations
    always @(posedge aclk) begin
        y_calc  <= $signed( 66 * r_reg + 129 * g_reg +  25 * b_reg + 128);
        cb_calc <= $signed(-38 * r_reg -  74 * g_reg + 112 * b_reg + 128);
        cr_calc <= $signed(112 * r_reg -  94 * g_reg -  18 * b_reg + 128);
    end

    // Stage 3: Shift, add offset, and saturate to 8-bit output
    always @(posedge aclk) begin
        y_out  <= (y_calc >>> 8) + 16;
        cb_out <= (cb_calc >>> 8) + 128;
        cr_out <= (cr_calc >>> 8) + 128;
    end

    // *** FIX: Pipeline for Control Signals ***
    // The data path has 3 stages of registers (r/g/b_reg -> calc_regs -> out_regs).
    // The control signals must be delayed by the same amount to stay synchronized.
    reg [2:0] tvalid_pipe;
    reg [2:0] tlast_pipe;
    reg [2:0] tuser_pipe;

    always @(posedge aclk) begin
        if (aresetn == 1'b0) begin
            tvalid_pipe <= 3'b0;
            tlast_pipe  <= 3'b0;
            tuser_pipe  <= 3'b0;
        end else if (s_axis_video_tready) begin // Only shift when data is flowing
            tvalid_pipe <= {tvalid_pipe[1:0], s_axis_video_tvalid};
            tlast_pipe  <= {tlast_pipe[1:0], s_axis_video_tlast};
            tuser_pipe  <= {tuser_pipe[1:0], s_axis_video_tuser};
        end
    end

    // Assign final outputs
    assign m_axis_video_tdata  = {y_out, cb_out, cr_out};
    assign m_axis_video_tvalid = tvalid_pipe[2];
    assign m_axis_video_tlast  = tlast_pipe[2];
    assign m_axis_video_tuser  = tuser_pipe[2];

endmodule