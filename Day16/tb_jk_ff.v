`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 15:31:30
// Design Name: 
// Module Name: tb_jk_ff
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


module tb_jk_ff();
    reg j;
    reg k;
    reg clk;
    reg reset;
    wire q;
    wire q_bar;
    jk_ff DUT(.j(j),.k(k),.clk(clk),.reset(reset),.q(q),.q_bar(q_bar));
always #5 clk=~clk;
always #10 j= ~j;
always #20 k= ~k;
always #100 reset= 'b1;
initial
begin
$monitor("time=%0t, j=%0b, k=%0b,  clk=%0b, reset=%0b, q=%0b,q_bar=%ob", 
$time, j,k,clk,reset,q,q_bar);
clk='b0;
j='b0;
k='b0;
reset='b0;
#200 $finish();
end  
endmodule
