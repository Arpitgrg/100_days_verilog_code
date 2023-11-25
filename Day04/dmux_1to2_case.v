`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 00:15:51
// Design Name: 
// Module Name: dmux_1to2_case
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


module dmux_1to2_case(
input d_in,
input sel_in,
output reg [1:0]y_out);

always@(*)
begin
 case(sel_in)
 2'b0 :begin
        y_out[0]=d_in;
        y_out[1]='b0;
        end
 2'b1 :begin
        y_out[0]='b0;
        y_out[1]=d_in;
        end
 endcase
 end
endmodule

