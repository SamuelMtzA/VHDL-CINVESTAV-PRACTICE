`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IPN
// Engineer: Samy
//////////////////////////////////////////////////////////////////////////////////
module multiplexor(a,b,c,sel,out);
input a,b,c;
input [1:0]sel;
output out;
//Case es always, siempre las salidas deben de ir en reg cuando se usa ref
reg out;
//Proceso para circuitos sencuenciales
always @(a or b or c or sel) //a,b,c es lo mismo
	begin
		case(sel)//Con esta vamos a monitorear
				2'b00: out=a; //numero de bits'b
				2'b01: out=b;
				2'b10: out=c;
				default: out=1'bz;//si no es ninguna de esas la salida es un valor indefinido
				
		endcase
	end
				
endmodule
