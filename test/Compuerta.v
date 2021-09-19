`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module Compuerta(a,b,c);
input a;
input b;
output c;

assign c = a&b;//Flujo de datos, 1 entrada y una salida, concurrente


endmodule
