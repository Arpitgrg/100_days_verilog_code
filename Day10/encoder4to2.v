`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 11:30:16
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


module encoder4to2(
    input enable,
    input [3:0] d_in,
    output reg [1:0] y_out
    );
    always@*
    if(enable=='b0)
        begin
        y_out='b0;
        end
    else
        begin
        case(d_in)
        4'b0001:y_out=2'b00;
        4'b0010:y_out=2'b01;
        4'b0100:y_out=2'b10;
        4'b1000:y_out=2'b11;
        endcase
        end
endmodule
