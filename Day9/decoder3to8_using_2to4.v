`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 00:07:02
// Design Name: 
// Module Name: decoder3to8_using_2to4
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


module decoder3to8_using_2to4(
    input [2:0] d_in,
    output [7:0] y_out
    );
    decoder2to4 d1(d_in[2],d_in[1:0],y_out[7:4]);
     decoder2to4 d2((~d_in[2]),d_in[1:0],y_out[3:0]);
    
endmodule
