`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 00:59:05
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(
    input clk,
    input rst,
    input up_or_down,
    output reg [3:0] count
    );
    always@(posedge clk ,negedge rst)
    begin
    if(!rst)
    count<='b0;
    else
        begin
        if(up_or_down)
        count<=count+'b1;
        else
        count<=count-'b1;
        end
    end
endmodule
