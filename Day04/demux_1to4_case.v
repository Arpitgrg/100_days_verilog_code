`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 12:23:59
// Design Name: 
// Module Name: demux_1to4_case
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


module demux_1to4_case(
input d_in,
input [1:0]sel_in,
output reg [3:0]y_out);

always@(*)
begin
 case(sel_in)
        2'b00 :
             begin
             y_out[0] = d_in;
             y_out[3:1] = 'b0; 
             end
        2'b01 :
             begin
             y_out[1] = d_in;
             y_out[0] = 'b0;
             y_out[3:2] = 'b0;
             end
        2'b10 :
             begin
             y_out[2] = d_in;
             y_out[1:0] = 'b0;
             y_out[3] = 'b0;
             end
        2'b11 :
             begin
             y_out[3] = d_in;
             y_out[2:0] = 'b0; 
             end        
 endcase
 end
endmodule