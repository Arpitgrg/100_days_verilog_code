`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 11:52:44
// Design Name: 
// Module Name: encoder8to3
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


module encoder8to3_without_case(
    input enable,
    input [8:0] d_in,
    output [2:0] y_out
    );
  assign y_out[2]= d_in[4] | d_in[5] | d_in[6] | d_in[7];
  assign y_out[1]= d_in[2] | d_in[3] | d_in[6] | d_in[7];
  assign y_out[0]= d_in[1] | d_in[3] | d_in[5] | d_in[7];

endmodule
