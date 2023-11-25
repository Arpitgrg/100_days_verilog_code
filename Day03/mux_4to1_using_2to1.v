`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 23:34:26
// Design Name: 
// Module Name: mux_4to1_using_2to1
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


module mux_4to1_using_2to1(
input[3:0] d_in,
input[1:0] sel_in,
output y_out);
wire [1:0]y;
mux_2to1 m1(d_in[3:2],sel_in[1],y[1]);
mux_2to1 m2(d_in[1:0],sel_in[1],y[0]);
mux_2to1 m3(y,sel_in[0],y_out);
endmodule
