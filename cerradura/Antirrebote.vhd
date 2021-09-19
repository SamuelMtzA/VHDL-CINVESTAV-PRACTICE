----------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 3
-- Diseño: 	   	Diseño Jerárquico
-- Modulo:     	Antirrebotes 
-- Descripción: 	Eliminación de ruido de los interruptores
-----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity ANTIRREBOTE is
    Port ( CLK 		: in  STD_LOGIC;
           CAPTURA 	: in  STD_LOGIC;
			  CAP 		: out STD_LOGIC);
end ANTIRREBOTE;

architecture Behavioral of ANTIRREBOTE is

SIGNAL CNT: STD_LOGIC_VECTOR (1 DOWNTO 0) := (OTHERS => '0');

begin

process (CLK,CNT,CAPTURA)
  begin
    if CAPTURA = '0' then
      CNT <= "00";
    elsif (CLK'event and CLK = '1') then
      if (CNT /= "11") then 
		CNT <= CNT + 1; 
		end if;
    end if;
    if (CNT = "10") and (CAPTURA = '1') then
		CAP <= '1'; 
	 else 
		CAP <= '0'; 
	 end if;
end process;

end Behavioral;

