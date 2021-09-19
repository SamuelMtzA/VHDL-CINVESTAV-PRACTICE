----------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 3
-- Diseño: 	   	Diseño Jerárquico
-- Modulo:     	Contador de 3 bits
-- Descripción: 	Cuenta solamente de 0 al 4
-----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CONTADOR is
    Port ( CAPTURA : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           CONTEO : inout  STD_LOGIC_VECTOR (2 downto 0));
end CONTADOR;

architecture Behavioral of CONTADOR is

begin

process (CAPTURA,RESET, CONTEO)
begin
 if RESET = '1' or CONTEO(2) = '1' then
    CONTEO <= (others =>'0');
 elsif (CAPTURA'event and CAPTURA = '0') then
    CONTEO <= CONTEO + 1;
 end if;	
 
end process;

end Behavioral;

