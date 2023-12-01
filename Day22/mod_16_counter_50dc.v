`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 07:56:26
// Design Name: 
// Module Name: mod_16_counter_50dc
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


module mod_16_counter_50dc(
   input clk,
    input rst,
    output y_out
    );
     reg [3:0] count;
    always@(posedge clk ,negedge rst)
    begin
    if(!rst)
    count<='b0;
    else
    count<=count+'b1;
    end
    assign y_out=count[3];
endmodule
