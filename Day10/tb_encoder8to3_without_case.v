`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 11:58:30
// Design Name: 
// Module Name: tb_encoder8to3_without_case
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


module tb_encoder8to3_without_case();
    reg [8:0]d_in;
    wire [2:0] y_out;
 encoder8to3_without_case DUT(.d_in(d_in),.y_out(y_out));

 initial
 begin
 d_in ='b00000001;
#20 d_in ='b00000010;
#20 d_in ='b00000100;
#20 d_in ='b00001000;
#20 d_in ='b00010000;
#20 d_in ='b00100000;
#20 d_in ='b01000000;
#20 d_in ='b10000000;
#300 $finish();
 end
endmodule
