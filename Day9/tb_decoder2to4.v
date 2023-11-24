`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2023 23:37:41
// Design Name: 
// Module Name: tb_decoder2to4
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


module tb_decoder2to4();
    reg enable;
    reg [1:0]d_in;
    wire [3:0] y_out;
 decoder2to4 DUT(.enable(enable),.d_in(d_in),.y_out(y_out));
 always #100 enable =enable+1;
 always #10 d_in =d_in+1;
 initial
 begin
 enable ='b0;
 d_in ='b0;
 end
endmodule

