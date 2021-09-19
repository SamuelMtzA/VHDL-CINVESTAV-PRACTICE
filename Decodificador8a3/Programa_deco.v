`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IPN
// Engineer: Samy
//////////////////////////////////////////////////////////////////////////////////
//Uso del if - else, is es de sintesiss pero en este caso es un circuito
module Programa_deco(a,y);
input [7:0]a;
output [2:0]y;

//parra usar if necesitamos always
reg [2:0]y;
	always @(a)
		begin 
		if (a==8'b00000001) y=0;
		else if (a==8'b00000010) y=1;
		else if (a==8'b00000100) y=2;
		else if (a==8'b00001000) y=3;
		else if (a==8'b00010000) y=4;
		else if (a==8'b00100000) y=5;
		else if (a==8'b01000000) y=6;
		else if (a==8'b10000000) y=7;
		else y=3'bX; // son de ciertas posibilidades
		
		end
			
endmodule
