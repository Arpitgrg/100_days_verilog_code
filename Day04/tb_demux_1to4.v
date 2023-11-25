`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 12:31:19
// Design Name: 
// Module Name: tb_demux_1to4
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


module tb_demux_1to4();
reg d_in;
reg [1:0]sel_in;
wire [3:0]y_out;

 demux_1to4_case DUT(.d_in(d_in),.sel_in(sel_in),.y_out(y_out));
 always #10 d_in =$urandom;
 always #20 sel_in =$urandom;
 initial
 begin
 d_in ='b0;
 sel_in ='b0;
 end
endmodule