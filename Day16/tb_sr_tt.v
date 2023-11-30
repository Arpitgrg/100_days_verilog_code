`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 15:47:31
// Design Name: 
// Module Name: tb_sr_tt
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


module tb_sr_tt();
    reg s;
    reg r;
    reg clk;
    reg reset;
    wire q;
    wire q_bar;
    sr_ff DUT(.s(s),.r(r),.clk(clk),.reset(reset),.q(q),.q_bar(q_bar));
always #5 clk=~clk;
always #10 s= ~s;
always #20 r= ~r;
always #100 reset= 'b1;
initial
begin
$monitor("time=%0t, s=%0b, r=%0b,  clk=%0b, reset=%0b, q=%0b,q_bar=%ob", 
$time, s,r,clk,reset,q,q_bar);
clk='b0;
s='b0;
r='b0;
reset='b0;
#200 $finish();
end  
endmodule