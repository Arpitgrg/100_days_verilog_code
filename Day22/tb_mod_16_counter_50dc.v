`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 08:01:25
// Design Name: 
// Module Name: tb_mod_16_counter_50dc
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


module tb_mod_16_counter_50dc();
    reg clk;
    reg rst;
    wire y_out;
mod_16_counter_50dc DUT(.clk(clk),.rst(rst),.y_out(y_out));
always #5 clk=~clk;
always #200 rst= 'b1;
initial
begin
$monitor("time=%0t ,clk=%0b, rst=%0b, y_out=%0b", 
$time, clk,rst,y_out);
clk='b0;
#10 rst='b0;
#500 $finish();
end  
endmodule

