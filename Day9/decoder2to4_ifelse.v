`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2023 23:45:58
// Design Name: 
// Module Name: decoder2to4_ifelse
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


module decoder2to4_ifelse(
 input enable,
 input a,
 input b,
 output reg [3:0]y_out);
 
   always @*
     begin
       if(enable==1)
         begin
           if
           (a==1'b0 & b==1'b0) y_out=4'b0001;
           else if
           (a==1'b0 & b==1'b1) y_out=4'b0010;
           else if
           (a==1'b1 & b==1'b0) y_out=4'b0100;
           else if
           (a==1'b1 & b==1'b1) y_out=4'b1000;
           else
           y_out=4'bxxxx;
         end
       else
        y_out=4'b0000;
     end
endmodule