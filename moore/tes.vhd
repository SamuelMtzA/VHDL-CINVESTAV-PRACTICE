--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:25:57 09/23/2018
-- Design Name:   
-- Module Name:   C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/moore/tes.vhd
-- Project Name:  moore
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MOORE
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
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MOORE
    PORT(
         CLK : IN  std_logic;
         e : IN  std_logic;
         RESET : IN  std_logic;
         s : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal e : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal s : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MOORE PORT MAP (
          CLK => CLK,
          e => e,
          RESET => RESET,
          s => s
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
	--	RESET<='1', '0' after 800 ns;
      wait for 100 ns;	
		e<='0';
		wait for 100 ns;	
		e<='1';
		wait for 100 ns;	
		e<='0';
		wait for 100 ns;	
		e<='1';
		wait for 100 ns;	
		e<='0';
		wait for 100 ns;	
		e<='1';
		wait for 100 ns;	
		e<='0';
		wait for 100 ns;	
		e<='1';
		

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;
	

END;
