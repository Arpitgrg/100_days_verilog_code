`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2023 20:41:29
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
    input a_in,
    input b_in,
    input c_in,
    output diff,
    output borrow
    );
  assign diff = a_in ^ b_in ^ c_in;
  assign borrow =(~a_in & b_in) | (~(a_in ^ b_in) & c_in);

endmodule
