`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 21:40:45
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder();
    reg a_in;
    reg b_in;
    reg c_in;
    wire sum_out;
    wire carry_out;
 full_adder DUT(.a_in(a_in),.b_in(b_in),.c_in(c_in),.sum_out(sum_out),.carry_out(carry_out));
 always #10 a_in =$urandom;
 always #20 b_in =$urandom;
  always #40 b_in =$urandom;
 initial
 begin
 a_in ='b0;
 b_in ='b0;
 c_in ='b0;
 end
endmodule
