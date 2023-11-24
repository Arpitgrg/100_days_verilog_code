`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 00:13:33
// Design Name: 
// Module Name: tb_decoder3to8_using_2to4
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


module tb_decoder3to8_using_2to4();
    reg [2:0]d_in;
    wire [7:0] y_out;
 decoder3to8_using_2to4 DUT(.d_in(d_in),.y_out(y_out));
 always #10 d_in =d_in+1;
 initial
 begin
 d_in ='b0;
 end
endmodule