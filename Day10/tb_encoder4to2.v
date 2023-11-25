`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 11:33:33
// Design Name: 
// Module Name: encoder4to2
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


module tb_encoder4to2();
    reg enable;
    reg [3:0]d_in;
    wire [1:0] y_out;
 encoder4to2 DUT(.enable(enable),.d_in(d_in),.y_out(y_out));
 always #90 enable =enable+1;

 initial
 begin
 enable ='b1;
 d_in ='b00001;
#20 d_in ='b0010;
#20 d_in ='b0100;
#20 d_in ='b1000;

#100 $finish();
 end
endmodule
