`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 00:49:08
// Design Name: 
// Module Name: t_ff
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


module t_ff(
    input t,
    input clk,
    input reset,
    output reg q,
    output q_bar
    );
    always@(posedge clk)
    begin
    if(reset==1)
    q<='b0;
    else
    begin
    q<=(t?~q:q);
    end
    end
   assign q_bar =~q;
endmodule
