`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 00:13:44
// Design Name: 
// Module Name: shift_operator
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


module shift_operator(
input clk,
input [7:0] d_in,
input reset_n,
input shift_n,
output reg [7:0] q_out
);
always @(posedge clk, negedge reset_n)
begin
if(!reset_n)
begin
q_out <= 'b0;
end
else 
begin
    if(!shift_n)
        q_out <= d_in <<1'b1;
    else 
        q_out <= d_in >> 1'b1;
end
end
endmodule
