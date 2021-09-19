library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity dado is
	port (clk, rst, btn: in std_logic;
		   d: out std_logic_vector(2 downto 0));
end;

architecture Arq_dado of dado is
	--type estados is (S1,S2,S3,S4,S5,S6);
	type estados is (S1,S2,S3,S4,S5,S6,S7,S8,S9,S10);
	signal presente, futuro : estados;
begin

process (clk,rst,btn)
	begin
	   if rst = '1' then
		   presente <= S1;
		elsif clk'event and clk = '1' and btn = '1' then
			presente <= futuro;
		end if;
end process;

process (presente)
	begin
	case presente is
		when S1 =>	d <= "001"; futuro<=S2;
		when S2 =>	d <= "010"; futuro<=S3;
		when S3 =>	d <= "011"; futuro<=S4;
		when S4 =>	d <= "100"; futuro<=S5;
		when S5 =>	d <= "101"; futuro<=S6;
		when S6 =>	d <= "110"; futuro<=S1;
		when S7 =>	d <= "001"; futuro<=S4;
		when S8 =>	d <= "001"; futuro<=S5;
		when S9 =>	d <= "001"; futuro<=S6;
		when S10 =>	d <= "001"; futuro<=S1;
		when others => null;
	end case;
end process;
 
end Arq_dado;