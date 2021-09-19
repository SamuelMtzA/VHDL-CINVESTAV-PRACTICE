----------------------------------------------------------------------------------
-- Compa�ia: 		CINVESTAV-IPN, Departamento de Ingenier�a El�ctrica
-- Dise�ador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Pr�ctica # 3
-- Dise�o: 	   	Dise�o Jer�rquico
-- Modulo:     	Registro 
-- Descripci�n: 	Ingresa un 1 l�gico cada que se activa la salida del comparador
-----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity REGISTRO is
    Port ( PULSO	: in  STD_LOGIC;
           RESET  : in  STD_LOGIC;
			  CON 	: in  STD_LOGIC_VECTOR (2 DOWNTO 0);
           REGOUT : inout STD_LOGIC_VECTOR (3 downto 0));
end REGISTRO;

architecture Behavioral of REGISTRO is

begin

process (PULSO, RESET, CON, REGOUT)
begin
	if RESET = '1' then
	    REGOUT <= (others=>'0');
	elsif CON(2)='1' then
		 REGOUT(2 downto 0) <= (others=>'0');
	elsif PULSO'event and PULSO = '1' then
	    REGOUT <= REGOUT (2 downto 0) & '1';
	end if;
end process;

end Behavioral;

