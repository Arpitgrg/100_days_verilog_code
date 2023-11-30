`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 00:41:19
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
    input j,
    input k,
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
        case({j,k})
        2'b00:q<=q;
        2'b01:q<='b0;
        2'b10:q<='b1;
        2'b11:q<=~q;
        endcase
    end
    end
   assign q_bar =~q;
endmodule
