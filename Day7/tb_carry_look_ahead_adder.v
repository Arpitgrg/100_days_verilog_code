`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2023 09:19:22
// Design Name: 
// Module Name: tb_carry_look_ahead_adder
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


module tb_carry_look_ahead_adder();
    reg [3:0]a_in;
    reg [3:0]b_in;
    reg c_in;
    wire [3:0]sum_out;
    wire carry_out;
 carry_look_ahead_adder DUT(.a_in(a_in),.b_in(b_in),.c_in(c_in),.sum_out(sum_out),.carry_out(carry_out));
 always #10 a_in =$urandom;
 always #20 b_in =$urandom;
  always #40 c_in =$urandom;
 initial
 begin
 a_in ='b0;
 b_in ='b0;
 c_in ='b0;
 end
 endmodule

