`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 11:35:46
// Design Name: 
// Module Name: binary_to_gray_4bit
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


module binary_to_gray_4bit(
    input [3:0] binary_in,
    output [3:0] gray_out
    );
    assign gray_out[3]=binary_in[3];
    assign gray_out[2]=binary_in[3]^binary_in[2];
    assign gray_out[1]=binary_in[2]^binary_in[1];
    assign gray_out[0]=binary_in[1]^binary_in[0];
    
endmodule
