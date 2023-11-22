`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 14:33:52
// Design Name: 
// Module Name: cyclic_lamp
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


module cyclic_lamp(
    input clk,
    input reset_n,
    output reg [2:0] light
    );
reg [1:0] ps,ns;
parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;

parameter red =3'b100;
parameter yellow =3'b010;
parameter green =3'b001;
always @ (posedge clk, negedge reset_n)
begin
    if(!reset_n)
    ps <= s0;
    else
    ps <= ns;
end
always @ *
begin
    case(ps)
    s0:
    begin
        light <= green;
        ns <= s1;
    end
        s1:
    begin
        light<=yellow;
        ns <= s2;
    end
        s2:
    begin
        light<=red;
        ns <= s0;
    end
    default: 
    begin
        light<=red;
        ns <= s0;
    end
endcase
end
endmodule
