----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:43:09 10/01/2013 
-- Design Name: 
-- Module Name:    And_Or - Funcional 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity And_Or is
    Port ( a,b : in  STD_LOGIC;
           c : out  STD_LOGIC_VECTOR (1 downto 0));
end And_Or;

architecture Funcional of And_Or is
begin
	process(a,b)
	begin
	--Compuerta OR
		if (a='0' and b ='0') then
			c(0)<='0';--menos significativo
		else
			c(0)<='1';--menos significativo
		end if;
	--Compuerta AND
		if (a='0' or b ='0') then
			c(1)<='0';--mas significativo
		else
			c(1)<='1';
		end if;
	end process;
end Funcional;

