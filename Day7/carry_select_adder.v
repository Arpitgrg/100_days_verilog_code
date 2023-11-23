`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2023 00:44:51
// Design Name: 
// Module Name: carry_select_adder
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


module carry_select_adder(
    input [3:0] a_in,
    input [3:0] b_in,
    input  c_in,
    output [3:0] sum_out,
    output carry_out
    );
    wire [3:0]carry0,carry1,temp_sum0,temp_sum1;
   //if c_in was 0 
    full_adder f1(a_in[0],b_in[0],'b0,temp_sum0[0],carry0[0]);
    full_adder f2(a_in[1],b_in[1],carry0[0],temp_sum0[1],carry0[1]);
    full_adder f3(a_in[2],b_in[2],carry0[1],temp_sum0[2],carry0[2]);
    full_adder f4(a_in[3],b_in[3],carry0[2],temp_sum0[3],carry0[3]);
    
    // if c_in was 1
    full_adder f5(a_in[0],b_in[0],'b1,temp_sum1[0],carry1[0]);
    full_adder f6(a_in[1],b_in[1],carry0[0],temp_sum1[1],carry1[1]);
    full_adder f7(a_in[2],b_in[2],carry0[1],temp_sum1[2],carry1[2]);
    full_adder f8(a_in[3],b_in[3],carry0[2],temp_sum1[3],carry1[3]);
    
    //mux for sum output
    
    mux2to1 m1(temp_sum0[0],temp_sum1[0],c_in,sum_out[0]);
    mux2to1 m2(temp_sum0[1],temp_sum1[1],c_in,sum_out[1]);
    mux2to1 m3(temp_sum0[2],temp_sum1[2],c_in,sum_out[2]);
    mux2to1 m4(temp_sum0[3],temp_sum1[3],c_in,sum_out[3]);
    
    //mux for carry output
    mux2to1 m5(carry0[3],carry1[3],c_in,carry_out);
    
endmodule