`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 00:16:36
// Design Name: 
// Module Name: priority_encoder_casex
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


module priority_encoder_casex(
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
        casex(d_in)
        4'b0001:y_out=2'b00;
        4'b001x:y_out=2'b01;
        4'b01xx:y_out=2'b10;
        4'b1xxx:y_out=2'b11;
        default: y_out=2'bxx;    
        endcase
        end

endmodule
