--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:01:09 10/08/2018
-- Design Name:   
-- Module Name:   C:/Users/Samuel/Desktop/Control_motor/s.vhd
-- Project Name:  Control_motor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Infra_motor
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
 
ENTITY s IS
END s;
 
ARCHITECTURE behavior OF s IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Infra_motor
    PORT(
         rst : IN  std_logic;
         ent : IN  std_logic;
         clk : IN  std_logic;
         pwm_servo : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal ent : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal pwm_servo : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Infra_motor PORT MAP (
          rst => rst,
          ent => ent,
          clk => clk,
          pwm_servo => pwm_servo
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
