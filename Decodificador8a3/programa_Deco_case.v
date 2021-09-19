`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IPN
// Engineer: Samy
//////////////////////////////////////////////////////////////////////////////////
module programa_Deco_case(a,y);
input [7:0]a;
output [2:0]y;

//para usar if necesitamos always
reg [2:0]y;
	always @(a)
		begin 
			case(a)
			8'b00000001:y=0;
			8'b00000010:y=1;
			8'b00000100:y=2;
			8'b00001000:y=3;
			8'b00010000:y=4;
			8'b00100000:y=5;
			8'b01000000:y=6;
			8'b10000000:y=7;
			default: y=3'bX;
			endcase
		end
			
endmodule

