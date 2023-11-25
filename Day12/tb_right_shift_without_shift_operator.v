`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 01:13:20
// Design Name: 
// Module Name: tb_right_shift_without_shift_operator
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


module tb_right_shift_without_shift_operator();
reg clk;
reg reset_n;
reg [7:0]data_in;
wire [7:0]q_out;    

right_shift_without_shift_operator DUT (.clk(clk),
                          .reset_n(reset_n),
                          .data_in(data_in),
                          .q_out(q_out));

 always #10 clk =~clk;
always #200 reset_n=~reset_n;
always #10 data_in=$urandom;;
 initial
 begin
 
$monitor("time=%0t, clk=%0b, reset_n=%0b, data_in=%0b,q_out=%0b",
          $time, clk, reset_n, data_in, q_out);
 reset_n ='b0;
 clk='b0;
 data_in ='b0;


#1000 $finish();
 end
endmodule
