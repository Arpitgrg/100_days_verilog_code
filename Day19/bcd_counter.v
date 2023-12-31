`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 01:44:45
// Design Name: 
// Module Name: bcd_counter
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


module bcd_counter(
    input clk,
    input rst,
    output reg [3:0] count
    );
    always@(posedge clk ,negedge rst)
    begin
    if(!rst || count > 4'b1000)
    count<='b0;
    else
    count<=count+'b1;
    end
endmodule
