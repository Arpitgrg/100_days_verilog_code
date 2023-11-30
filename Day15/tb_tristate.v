`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 00:13:46
// Design Name: 
// Module Name: tb_tristate
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


module tb_tristate();
                         reg data_in;
                         reg a_in;
                         wire y_out;
                  
    tristate U1(         .data_in(data_in),
                         .a_in(a_in),
                         .y_out(y_out));
         
         always #40 a_in =a_in +1'b1;
    always #10 data_in =data_in +1'b1;                
 initial
 begin
    
    a_in='b0;
    data_in='b0;
    #500 $finish;
    end

endmodule
