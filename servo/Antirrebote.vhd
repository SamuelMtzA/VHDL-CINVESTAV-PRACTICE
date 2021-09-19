-------------------------------------------------------------------------------------
-- Compa�ia: 		CINVESTAV-IPN, Departamento de Ingenieria El�ctrica
-- Dise�ador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Pr�ctica # 6
-- Dise�o: 	   	Antirrebotes
-- Modulo:     	Antirrebote
-- Descripci�n: 	Eliminaci�n de los rebotes en los interruptores
-------------------------------------------------------------------------------------
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

SIGNAL CNT: STD_LOGIC_VECTOR (10 DOWNTO 0) := (OTHERS => '0');

begin

process (CLK,CNT,CAPTURA)
  begin
    if CAPTURA = '0' then
      CNT <= "00000000000";
    elsif (CLK'event and CLK = '1') then
      if (CNT /= "11111111111") then 
		CNT <= CNT + 1; 
		end if;
    end if;
    if (CNT = "10011011000") and (CAPTURA = '1') then
		CAP <= '1'; 
	 else 
		CAP <= '0'; 
	 end if;
end process;

end Behavioral;
