`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 00:01:01
// Design Name: 
// Module Name: comparator_4bit
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


module comparator_4bit#(parameter DATA_WIDTH=4)
                        (input [DATA_WIDTH-1:0] a_in,
                         input [DATA_WIDTH-1:0] b_in,
                         output  a_in_g_b_in,
                         output  a_in_e_b_in,
                         output  a_in_l_b_in);
                        
assign a_in_e_b_in=(a_in ==b_in);
assign a_in_g_b_in=(a_in>b_in);
assign a_in_l_b_in=(a_in<b_in);
endmodule
