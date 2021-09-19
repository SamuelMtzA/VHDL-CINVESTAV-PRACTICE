----------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 1
-- Diseño: 	   	Circuitos Lógicos Combinatorios
-- Modulo:     	Multiplicador 
-- Descripción: 	Multiplicador de magnitud de 2 bits
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

