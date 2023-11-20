`timescale 1ns / 1ps

module mux_8to1(
input[7:0] d_in,
input[2:0] sel_in,
output reg y_out);

always@(*)
begin
if(sel_in==3'b000)
    y_out=d_in[0];
else if(sel_in==3'b001)
    y_out=d_in[1];
   
else if(sel_in==3'b010)
    y_out=d_in[2];
    
else if(sel_in==3'b011)
    y_out=d_in[3];
    
    else if(sel_in==3'b100)
    y_out=d_in[4];
    
    else if(sel_in==3'b101)
    y_out=d_in[5];
    
    else if(sel_in==3'b110)
    y_out=d_in[6];
    
    else
    y_out=d_in[7];
end
endmodule
