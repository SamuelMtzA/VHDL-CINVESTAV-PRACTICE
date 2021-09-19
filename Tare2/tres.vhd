----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:05:32 09/03/2018 
-- Design Name: 
-- Module Name:    tres - estruc 
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
library UNISIM;
use IEEE.STD_LOGIC_1164.ALL;
use UNISIM.Vcomponents.ALL; 
entity tres is
    Port ( a : in  std_logic;
           b : in  std_logic;
           c : in  std_logic;
           y : out std_logic);
end tres;
architecture estruc of tres is
signal m: std_logic_vector (0 to 2);

begin
U0: and2 port map (m(0),a, not b);
U1: and2 port map (m(1),c,not b );
U2: and2 port map (m(2),a,c);
U3: or3 port map (y,m(0),m(1),m(2));
end estruc;

