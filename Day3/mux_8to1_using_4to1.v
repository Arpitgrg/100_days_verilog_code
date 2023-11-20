`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 00:05:53
// Design Name: 
// Module Name: mux_8to1_using_4to1
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


module mux_8to1_using_4to1(
input[7:0] d_in,
input[2:0] sel_in,
output y_out);
wire [1:0]y;
mux_4to1 m1(d_in[7:4],sel_in[2:1],y[1]);
mux_4to1 m2(d_in[3:0],sel_in[2:1],y[0]);
mux_2to1 m3(y,sel_in[0],y_out);

endmodule
