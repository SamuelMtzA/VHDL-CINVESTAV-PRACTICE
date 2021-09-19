library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decodificador is
	port( entrada: in std_logic_vector(3 downto 0);
			salida:	inout std_logic_vector(6 downto 0));
end decodificador;

architecture arq_deco of decodificador is

begin 
	with entrada select
	salida<= "1001111" when "0000",
				"0010010" when "0001",
				"0000110" when "0010",
				"1001100" when "0011",
				"0100100" when "0100",
				"0100000" when "0101",
				"0001110" when "0110",
				"0000000" when "0111",
				"0001100" when "1000",
				"0001100" when "1001",
				"0000001" when others;

end arq_deco;

