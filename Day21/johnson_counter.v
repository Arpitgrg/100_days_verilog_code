`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 07:24:06
// Design Name: 
// Module Name: johnson
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


module johnson_counter(
    input clk,
    input rst,
    output reg [3:0] d_out
    );
    always@(posedge clk ,negedge rst)
    begin
    if(!rst)
    d_out<='b0;
    else
    d_out<={d_out[2:0],~d_out[3]};
    end
endmodule