----------------------------------------------------------------------------------
-- Compa�ia: 		CINVESTAV-IPN, Departamento de Ingenier�a El�ctrica
-- Dise�ador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Pr�ctica # 1
-- Dise�o: 	   	Circuitos L�gicos Combinatorios
-- Modulo:     	Multiplicador 
-- Descripci�n: 	Multiplicador de magnitud de 2 bits
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity multiplicador is
    Port ( A,B : in   STD_LOGIC_VECTOR (16 downto 0);
             P : out  STD_LOGIC_VECTOR (33 downto 0));
end multiplicador;

architecture Arq_multiplicador of multiplicador is

begin

P <= A * B;

end Arq_multiplicador;

