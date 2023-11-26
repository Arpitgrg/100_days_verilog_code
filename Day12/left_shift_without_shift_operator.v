`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 23:51:02
// Design Name: 
// Module Name: left_shift_without_shift_operator
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


module left_shift_without_shift_operator(
input clk,
input [7:0] data_in,
input reset_n,
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
 q_out <= {data_in[6:0],1'b0};
end
end
endmodule

