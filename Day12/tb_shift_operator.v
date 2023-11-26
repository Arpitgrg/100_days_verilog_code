`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 00:18:23
// Design Name: 
// Module Name: tb_shift_operator
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


module tb_shift_operator();
reg clk;
reg reset_n;
reg shift_n;
reg [7:0]d_in;
wire [7:0]q_out;    

left_shift_without_shift_operator DUT (.clk(clk),
                          .reset_n(reset_n),
                          .shift_n(shift_n),
                          .d_in(d_in),
                          .q_out(q_out));

 always #10 clk =~clk;
always #200 reset_n=~reset_n;
always #100 shift_n=~shift_n;
always #10 d_in=$urandom;;
 initial
 begin
 
$monitor("time=%0t, clk=%0b, reset_n=%0b, d_in=%0b,shift_n=%0b,q_out=%0b",
          $time, clk, reset_n, d_in,shift_n, q_out);
 reset_n ='b0;
 clk='b0;
 d_in ='b0;
 shift_n='b0;


#1000 $finish();
 end
endmodule
