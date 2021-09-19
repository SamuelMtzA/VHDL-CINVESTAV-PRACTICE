----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:50:37 09/02/2018 
-- Design Name: 
-- Module Name:    Compuertas - Behavioral 
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

entity Compuertas is 
 Port ( A,B,C,D : in  STD_LOGIC; 
           F : out  STD_LOGIC);
end Compuertas;

architecture Behavioral of Compuertas is

begin
	c<= (not(not((A and B)and (A and (not C))) ) );

end Behavioral;

