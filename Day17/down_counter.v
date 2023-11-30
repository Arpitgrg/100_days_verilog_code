`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 00:55:07
// Design Name: 
// Module Name: down_counter
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


module down_counter(
    input clk,
    input rst,
    output reg [3:0] count
    );
    always@(posedge clk ,negedge rst)
    begin
    if(!rst)
    count<=4'b1111;
    else
    count<=count-'b1;
    end
endmodule