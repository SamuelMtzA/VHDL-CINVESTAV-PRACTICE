library IEEE;
use IEEE.STD_LOGIC_1164.all;

package display_seg is

component codificador is port(
			 en : in std_logic_vector (8 downto 0);
			 sal : inout std_logic_vector (3 downto 0));
end component;

component registro is port(
			R : in std_logic_vector (3 downto 0);
			CLK : in std_logic;
			REG : inout std_logic_vector (3 downto 0));
end component;

component decodificador is port(
			entrada : in std_logic_vector (3 downto 0);
			salida : out std_logic_vector (6 downto 0));
end component;
--

end display_seg;

package body display_seg is

 
end display_seg;
