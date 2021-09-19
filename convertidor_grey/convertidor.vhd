----------------------------------------------------------------------------------
-- Compa�ia: 		CINVESTAV-IPN, Departamento de Ingenier�a El�ctrica
-- Dise�ador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Pr�ctica # 1
-- Dise�o: 	   	Circuitos L�gicos Combinatorios
-- Modulo:     	Convertidor 
-- Descripci�n: 	Convertidor de C�digo Binaria a Gray
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

