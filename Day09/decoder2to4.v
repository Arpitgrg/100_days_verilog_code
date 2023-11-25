`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2023 23:27:37
// Design Name: 
// Module Name: decoder2to4
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


module decoder2to4(
    input enable,
    input [1:0] d_in,
    output reg [3:0] y_out
    );
    always@*
    if(enable=='b0)
        begin
        y_out='b0;
        end
    else
        begin
        case(d_in)
        2'b00:y_out=4'b0001;
        2'b01:y_out=4'b0010;
        2'b10:y_out=4'b0100;
        2'b11:y_out=4'b1000;
        default:y_out=4'b0001;
        endcase
        end
endmodule
