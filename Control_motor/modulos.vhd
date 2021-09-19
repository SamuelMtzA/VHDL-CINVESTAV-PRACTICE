--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package modulos is

component PWM is
      Port ( clk,rst: in  STD_LOGIC;
	        leds : in std_logic_vector(6 downto 0);
			  pwm_servo : out std_logic);
end component;

component Receptor is
    port ( ent,clk,rst: in   STD_LOGIC;
			 leds:	inout STD_LOGIC_VECTOR (6 downto 0));
end component;
 
 
end modulos;
