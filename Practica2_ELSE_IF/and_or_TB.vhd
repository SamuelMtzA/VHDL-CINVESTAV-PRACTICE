--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:02:34 02/17/2018
-- Design Name:   
-- Module Name:   C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/Practica2_ELSE_IF/and_or_TB.vhd
-- Project Name:  Practica2_ELSE_IF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: And_Or
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY and_or_TB IS
END and_or_TB;
 
ARCHITECTURE funcional OF and_or_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT And_Or
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal c : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: And_Or PORT MAP (
          a => a,
          b => b,
          c => c
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
begin
	a<= '0'; b<= '0'; wait for 250 ns;
	a<= '1'; b<= '0'; wait for 250 ns;
	a<= '0'; b<= '1'; wait for 250 ns;
	a<= '1'; b<= '1'; wait for 250 ns;
wait;
end process;

END;
