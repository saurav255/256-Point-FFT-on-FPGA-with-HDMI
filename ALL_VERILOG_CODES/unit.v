module unit #(
    parameter WIDTH = 20  // bit-width for fixed-point
)( 
    input signed [WIDTH-1:0] in1_real,
    input signed [WIDTH-1:0] in1_imag,
    input signed [WIDTH-1:0] in2_real,
    input signed [WIDTH-1:0] in2_imag,

    input signed [WIDTH-1:0] w_real,
    input signed [WIDTH-1:0] w_imag,
 
    output signed [WIDTH-1:0] out1_real,
    output signed [WIDTH-1:0] out1_imag,
    output signed [WIDTH-1:0] out2_real,
    output signed [WIDTH-1:0] out2_imag 
);

    
 

   
    wire signed [2*WIDTH - 1:0] rw_r2; // tw factor 12 bits and in2 12 bits so total = 24 bits 
    wire signed [2*WIDTH - 1:0] iw_i2;
    wire signed [2*WIDTH - 1:0] rw_i2;
    wire signed [2*WIDTH - 1:0] iw_r2;
    
    assign rw_r2 = w_real * in2_real;
    assign iw_i2 = w_imag * in2_imag;
    assign rw_i2 = w_real * in2_imag;
    assign iw_r2 = w_imag * in2_real;
    
    // shifting the multiplication tw*in2 by 12 bits 
    wire signed [WIDTH - 1:0] rw_r2_shifted;
    wire signed [WIDTH - 1:0] iw_i2_shifted;
    wire signed [WIDTH - 1:0] rw_i2_shifted;
    wire signed [WIDTH - 1:0] iw_r2_shifted;
    
    wire signed [WIDTH - 1:0] rw_r2_shifted_t;
    wire signed [WIDTH - 1:0] iw_i2_shifted_t;
    wire signed [WIDTH - 1:0] rw_i2_shifted_t;
    wire signed [WIDTH - 1:0] iw_r2_shifted_t;
    
    assign rw_r2_shifted_t =  rw_r2[30:0] >>> (11);  // or WIDTH ?  
    assign iw_i2_shifted_t =  iw_i2[30:0] >>> (11);
    assign rw_i2_shifted_t =  rw_i2[30:0] >>> (11);
    assign iw_r2_shifted_t =  iw_r2[30:0] >>> (11);
    // picking up 20 lsb bits 
    assign rw_r2_shifted =  rw_r2_shifted_t[19:0];  // or WIDTH ? 
    assign iw_i2_shifted =  iw_i2_shifted_t[19:0];
    assign rw_i2_shifted =  rw_i2_shifted_t[19:0];
    assign iw_r2_shifted =  iw_r2_shifted_t[19:0];
    
    wire signed [WIDTH-1:0]out1_real_mid;
    wire signed [WIDTH-1:0]out1_imag_mid;
    wire signed [WIDTH-1:0]out2_real_mid;
    wire signed [WIDTH-1:0]out2_imag_mid;
    
    assign out1_real_mid = in1_real + rw_r2_shifted - iw_i2_shifted;
    assign out1_imag_mid = in1_imag + rw_i2_shifted + iw_r2_shifted;
    
    assign out2_real_mid = in1_real - rw_r2_shifted + iw_i2_shifted;
    assign out2_imag_mid = in1_imag - rw_i2_shifted - iw_r2_shifted;
    
    
    assign out1_real = out1_real_mid;
    assign out1_imag = out1_imag_mid;
                                       
    assign out2_real = out2_real_mid;
    assign out2_imag = out2_imag_mid;
    
endmodule


//module unit #(
//    parameter WIDTH = 20  // bit-width for fixed-point
//)( 
//    input signed [WIDTH-1:0] in1_real,
//    input signed [WIDTH-1:0] in1_imag,
//    input signed [WIDTH-1:0] in2_real,
//    input signed [WIDTH-1:0] in2_imag,

//    input signed [WIDTH-1:0] w_real,
//    input signed [WIDTH-1:0] w_imag,
 
//    output signed [WIDTH-1:0] out1_real,
//    output signed [WIDTH-1:0] out1_imag,
//    output signed [WIDTH-1:0] out2_real,
//    output signed [WIDTH-1:0] out2_imag 
//);

    
 

   
//    wire signed [2*WIDTH - 1:0] rw_r2; // tw factor 12 bits and in2 12 bits so total = 24 bits 
//    wire signed [2*WIDTH - 1:0] iw_i2;
//    wire signed [2*WIDTH - 1:0] rw_i2;
//    wire signed [2*WIDTH - 1:0] iw_r2;
    
//    assign rw_r2 = w_real * in2_real;
//    assign iw_i2 = w_imag * in2_imag;
//    assign rw_i2 = w_real * in2_imag;
//    assign iw_r2 = w_imag * in2_real;
    
//    // shifting the multiplication tw*in2 by 12 bits 
//    wire signed [WIDTH - 1:0] rw_r2_shifted;
//    wire signed [WIDTH - 1:0] iw_i2_shifted;
//    wire signed [WIDTH - 1:0] rw_i2_shifted;
//    wire signed [WIDTH - 1:0] iw_r2_shifted;
    
//    wire signed [WIDTH - 1:0] rw_r2_shifted_t;
//    wire signed [WIDTH - 1:0] iw_i2_shifted_t;
//    wire signed [WIDTH - 1:0] rw_i2_shifted_t;
//    wire signed [WIDTH - 1:0] iw_r2_shifted_t;
    
//    assign rw_r2_shifted_t =  rw_r2[30:0] >>> (11);  // or WIDTH ?  
//    assign iw_i2_shifted_t =  iw_i2[30:0] >>> (11);
//    assign rw_i2_shifted_t =  rw_i2[30:0] >>> (11);
//    assign iw_r2_shifted_t =  iw_r2[30:0] >>> (11);
//    // picking up 20 lsb bits 
//    assign rw_r2_shifted =  rw_r2_shifted_t[19:0];  // or WIDTH ? 
//    assign iw_i2_shifted =  iw_i2_shifted_t[19:0];
//    assign rw_i2_shifted =  rw_i2_shifted_t[19:0];
//    assign iw_r2_shifted =  iw_r2_shifted_t[19:0];
    
//    wire signed [WIDTH-1:0]out1_real_mid;
//    wire signed [WIDTH-1:0]out1_imag_mid;
//    wire signed [WIDTH-1:0]out2_real_mid;
//    wire signed [WIDTH-1:0]out2_imag_mid;
    
//    assign out1_real_mid = in1_real + rw_r2_shifted - iw_i2_shifted;
//    assign out1_imag_mid = in1_imag + rw_i2_shifted + iw_r2_shifted;
    
//    assign out2_real_mid = in1_real - rw_r2_shifted + iw_i2_shifted;
//    assign out2_imag_mid = in1_imag - rw_i2_shifted - iw_r2_shifted;
    
    
//    assign out1_real = out1_real_mid;
//    assign out1_imag = out1_imag_mid;
                                       
//    assign out2_real = out2_real_mid;
//    assign out2_imag = out2_imag_mid;
    
//endmodule