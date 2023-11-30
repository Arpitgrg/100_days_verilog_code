`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 15:56:13
// Design Name: 
// Module Name: tb_t_ff
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


module tb_t_ff();
    reg t;
    reg clk;
    reg reset;
    wire q;
    wire q_bar;
    jk_ff DUT(.t(t),.clk(clk),.reset(reset),.q(q),.q_bar(q_bar));
always #5 clk=~clk;
always #10 t= ~t;
always #100 reset= 'b1;
initial
begin
$monitor("time=%0t, t=%0b, clk=%0b, reset=%0b, q=%0b,q_bar=%ob", 
$time, t,clk,reset,q,q_bar);
clk='b0;
t='b0;
reset='b0;
#200 $finish();
end  
endmodule
