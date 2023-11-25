`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 12:11:57
// Design Name: 
// Module Name: demux_1to2_ifesle
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


module demux_1to2_ifelse(
input d_in,
input sel_in,
output reg [1:0]y_out);

always@(*)
begin
if(sel_in)
        begin
        y_out[0]=d_in;
        y_out[1]='b0;
        end
 else   
        begin
        y_out[0]='b0;
        y_out[1]=d_in;
        end
 end
endmodule
