`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 00:08:35
// Design Name: 
// Module Name: tristate
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


module tristate(
    input data_in,
    input a_in,
    output reg y_out);
        always@*
        begin
        if(!a_in)
        y_out='bz;
        else
        y_out=data_in;
        end
endmodule
