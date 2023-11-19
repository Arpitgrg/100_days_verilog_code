`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2023 20:45:16
// Design Name: 
// Module Name: tb_full_subtractor
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


module tb_full_subtractor();
    reg a_in;
    reg b_in;
    reg c_in;
    wire diff;
    wire borrow;
 full_subtractor DUT(.a_in(a_in),.b_in(b_in),.c_in(c_in),.diff(diff),.borrow(borrow));
 always #10 a_in =~a_in;
 always #20 b_in =~b_in;
 always #40 c_in =~c_in;
 initial
 begin
 a_in ='b0;
 b_in ='b0;
 c_in='b0;
 end
endmodule
