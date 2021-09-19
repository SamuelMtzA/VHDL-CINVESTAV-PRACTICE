library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro is
port( R : in std_logic_vector (3 downto 0);
		CLK : in std_logic;
		 REG : inout std_logic_vector (3 downto 0));
end registro;

architecture arq_regis of registro is

begin
process (R, CLK, REG)
		begin
			if (CLK'event and CLK='1') then
					REG <= R;
				else
					REG <= REG;
			end if;
	end process;
end arq_regis;