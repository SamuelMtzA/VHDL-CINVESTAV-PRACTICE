----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:13:11 02/17/2018 
-- Design Name: 
-- Module Name:    CAND - Behavioral 
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

entity CAND is
    Port ( a,b : in  STD_LOGIC; 
           c : out  STD_LOGIC);
end CAND;

architecture Behavioral of CAND is

begin

	c<= a and b;


end Behavioral;

