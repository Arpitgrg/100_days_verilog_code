`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 01:09:27
// Design Name: 
// Module Name: right_shift_without_shift_operator
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


module right_shift_without_shift_operator(
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
 q_out <= {1'b0,data_in[7:1]};
end
end
endmodule
