`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 07:50:56
// Design Name: 
// Module Name: mod_8_counter_50dc
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


module mod_8_counter_50dc(
   input clk,
    input rst,
    output reg [3:0] count,
    output y_out
    );
    always@(posedge clk ,negedge rst)
    begin
    if(!rst || count>4'b0110)
    count<='b0;
    else
    count<=count+'b1;
    end
    assign y_out=count[2];
endmodule