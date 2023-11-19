`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2023 20:24:20
// Design Name: 
// Module Name: tb_half_subtractor
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


module tb_half_subtractor();
    reg a_in;
    reg b_in;
    wire diff;
    wire borrow;
 half_subtractor DUT(.a_in(a_in),.b_in(b_in),.diff(diff),.borrow(borrow));
 always #10 a_in =$urandom;
 always #10 b_in =$urandom;
 initial
 begin
 a_in ='b0;
 b_in ='b0;
 end
endmodule
