`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 00:20:49
// Design Name: 
// Module Name: tb_priority_encoder_casex
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


module tb_priority_encoder_casex();
    reg enable;
    reg [3:0]d_in;
    wire [1:0] y_out;
 encoder4to2 DUT(.enable(enable),.d_in(d_in),.y_out(y_out));
 always #200 enable =enable+1;
always #10 d_in =$urandom();
 initial
 begin
 enable ='b0;
 d_in ='b0;


#1000 $finish();
 end
endmodule
