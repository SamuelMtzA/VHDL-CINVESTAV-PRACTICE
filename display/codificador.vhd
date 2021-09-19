library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity codificador is
port (en : in std_logic_vector (9 downto 0);
			 sal : inout std_logic_vector (3 downto 0));
end codificador;

architecture arq_cod of codificador is

begin
	with en select
		sal <= 	 "0000" when "0000000001",
					 "0001" when "0000000010",
					 "0010" when "0000000100",
					 "0011" when "0000001000",
					 "0100" when "0000010000",
					 "0101" when "0000100000",
					 "0110" when "0001000000",
					 "0111" when "0010000000",
					 "1000" when "0100000000",
					 "1001" when others;

end arq_cod;

