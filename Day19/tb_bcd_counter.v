`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 01:47:29
// Design Name: 
// Module Name: tb_bcd_counter
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


module tb_bcd_counter();
   reg clk;
    reg rst;
    wire [3:0] count;
    bcd_counter DUT(.clk(clk),.rst(rst),.count(count));
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
