`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 16:45:02
// Design Name: 
// Module Name: tb_up_down_counter
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


module tb_up_down_counter();
    reg clk;
    reg rst;
    reg up_or_down;
    wire [3:0] count;
    up_down_counter DUT(.clk(clk),.rst(rst),.up_or_down(up_or_down),.count(count));
always #5 clk=~clk;
always #400 rst= 'b1;
always #200 up_or_down =~up_or_down;
initial
begin
$monitor("time=%0t ,clk=%0b, rst=%0b,up_or_down=%0b, count=%0h", 
$time, clk,rst,up_or_down,count);
clk='b0;
#10 rst='b0;
up_or_down='b0;
#1000 $finish();
end  
endmodule
