`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 16:33:24
// Design Name: 
// Module Name: tb_down_counter
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


module tb_down_counter();
    reg clk;
    reg rst;
    wire [3:0] count;
    down_counter DUT(.clk(clk),.rst(rst),.count(count));
always #5 clk=~clk;
always #200 rst= 'b1;
initial
begin
$monitor("time=%0t ,clk=%0b, rst=%0b, count=%0h", 
$time, clk,rst,count);
clk='b0;
#10 rst='b0;
#500 $finish();
end  
endmodule
