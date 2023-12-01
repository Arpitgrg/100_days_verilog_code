`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 02:33:26
// Design Name: 
// Module Name: tb_ring_counter
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


module tb_ring_counter();
   reg clk;
    reg rst;
    wire [3:0] d_out;
    ring_counter DUT(.clk(clk),.rst(rst),.d_out(d_out));
always #5 clk=~clk;
always #200 rst= 'b1;
initial
begin
$monitor("time=%0t ,clk=%0b, rst=%0b, d_out=%0h", 
$time, clk,rst,d_out);
clk='b0;
#10 rst='b0;
#500 $finish();
end  
endmodule