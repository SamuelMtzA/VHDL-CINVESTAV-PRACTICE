----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:09:44 09/22/2018 
-- Design Name: 
-- Module Name:    conta - arq_cont 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity conta is
    Port ( clk,rst,ud : in  STD_LOGIC;
                    q : inout  STD_LOGIC_VECTOR (3 downto 0));
end conta;

architecture arq_cont of conta is

signal clkdiv: std_logic_vector (25 downto 0);

begin

process (clk,rst,clkdiv)
begin
	if rst='1' then
	   clkdiv <= (others => '0');
	elsif clk'event and clk='1' then
		clkdiv <= clkdiv + 1 ;
	end if;
end process;	


process (clk,rst,q,ud)
begin
	if rst='1' then
	   q <= "0000";
	elsif clk'event and clk='1' then
		if ud ='1' then
		   q <= q + 1;
		else
			q <= q - 1;
		end if;
	end if;
end process;	

end arq_cont;



