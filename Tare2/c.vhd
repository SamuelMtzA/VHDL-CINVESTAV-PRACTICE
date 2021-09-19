----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:19:58 09/02/2018 
-- Design Name: 
-- Module Name:    dos - fun_datos 
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
use work.compuertas.ALL; 
entity tres is
    Port ( a : in  bit;
           b : in  bit;
           c : in  bit;
           y : out  bit);
end tres;
architecture estruc of tres is
signal m: bit_vector (0 to 2);

begin
U0: and2 port map (a, not b,m(0));
U1: and2 port map (c,not b, m(1));
U2: and2 port map (a,c,m(2));
U3: or3 port map (m(0),m(1),m(2),y);
end estruc;

