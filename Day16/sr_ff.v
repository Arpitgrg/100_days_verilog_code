`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 00:29:45
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(
    input s,
    input r,
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
        case({s,r})
        2'b00:q<=q;
        2'b01:q<='b0;
        2'b10:q<='b1;
        2'b11:q<='bx;
        endcase
    end
    end
   assign q_bar =~q;
endmodule
