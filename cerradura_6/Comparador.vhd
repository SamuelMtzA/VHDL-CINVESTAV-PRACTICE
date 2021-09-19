----------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 3
-- Diseño: 	   	Diseño Jerárquico
-- Modulo:     	Comparador 
-- Descripción: 	Compara dos datos de 4 bits y si son igual responde con un 1
-----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity COMPARADOR is
    Port ( DATOA, DATOB : in  STD_LOGIC_VECTOR (3 downto 0);
           CAPTURA : in  STD_LOGIC;
           COMP : out  STD_LOGIC);
end COMPARADOR;

architecture Behavioral of COMPARADOR is

begin

process (CAPTURA, DATOA, DATOB)
begin
  if CAPTURA ='1' and (DATOA = DATOB) then
		COMP <= '1'; 
  else  
      COMP <= '0';
  end if;
end process;	

end Behavioral;

