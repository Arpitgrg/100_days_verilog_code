`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 14:44:49
// Design Name: 
// Module Name: tb_cyclic_lamp
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


module tb_cyclic_lamp();
 reg clk;
 reg reset_n;
 wire [2:0]light;
 
 cyclic_lamp dut (
 .clk(clk),
 .reset_n(reset_n),
 .light(light)
 );
 
 always #20 clk = ~clk;
  always #100 reset_n = 1'b1;
 initial
 begin
  $monitor("time=%0t,clk,  reset_n=%0b, light=%0b", $time,clk, reset_n, light);
 clk = 'b0;
 reset_n = 'b0;
 
  end
endmodule
