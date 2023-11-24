`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2023 23:51:00
// Design Name: 
// Module Name: tb_decoder2to4_ifelse
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


module tb_decoder2to4_ifelse();
    reg enable;
    reg a;
    reg b;
    wire [3:0] y_out;
 decoder2to4 DUT(.enable(enable),.a(a),.b(b),.y_out(y_out));
 always #100 enable =enable+1;
 always #10 a=a+1;
 always #20 b=b+1;
 initial
 begin
 enable ='b0;
 a ='b0;
 b ='b0;
 end
endmodule
