`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
//////////////////////////////////////////////////////////////////////////////////
module comparador(a,b,out);
input [2:0]a;
input [2:0]b;
output [2:0]out;

//Si aes mayor que b entonces el bit mas significativo es 0
assign out=(a>b)?3'b100:
			(a==b)?3'b0|0:
			(a<b)?3'b001:3'b000;

endmodule
