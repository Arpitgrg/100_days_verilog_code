`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 11:55:32
// Design Name: 
// Module Name: tb_gray_to_binary
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


module tb_gray_to_binary();
reg [3:0]gray_in;
wire [3:0]binary_out;

 gray_to_binary_4bit DUT(.gray_in(gray_in),.binary_out(binary_out));
 always #10 gray_in =gray_in+1;
 initial
 begin
 gray_in ='b0;
 end
endmodule

