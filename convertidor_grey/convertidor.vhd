----------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 1
-- Diseño: 	   	Circuitos Lógicos Combinatorios
-- Modulo:     	Convertidor 
-- Descripción: 	Convertidor de Código Binaria a Gray
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.ALL; 

entity convertidor is
    Port ( b : in   bit_vector (3 downto 0);
           g : out  bit_vector (3 downto 0));
end convertidor;

architecture Arq_convertidor of convertidor is

begin
g <= b xor (b srl 1);
		
end Arq_convertidor;

