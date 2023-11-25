`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 20:05:10
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder();
    reg a_in;
    reg b_in;
    wire sum_out;
    wire carry_out;
 half_adder DUT(.a_in(a_in),.b_in(b_in),.sum_out(sum_out),.carry_out(carry_out));
 always #10 a_in =$urandom;
 always #10 b_in =$urandom;
 initial
 begin
 a_in ='b0;
 b_in ='b0;
 end
endmodule
