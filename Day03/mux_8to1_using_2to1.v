`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 23:45:07
// Design Name: 
// Module Name: mux_8to1_using_2to1
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


module mux_8to1_using_2to1(
input[7:0] d_in,
input[2:0] sel_in,
output y_out);
wire [6:1]y;
mux_2to1 m1(d_in[7:6],sel_in[2],y[4]);
mux_2to1 m2(d_in[5:4],sel_in[2],y[3]);
mux_2to1 m3(d_in[3:2],sel_in[2],y[2]);
mux_2to1 m4(d_in[1:0],sel_in[2],y[1]);
mux_2to1 m5(y[4:3],sel_in[1],y[6]);
mux_2to1 m6(y[2:1],sel_in[1],y[5]);
mux_2to1 m7(y[6:5],sel_in[0],y_out);

endmodule
