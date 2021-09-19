--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:19:44 10/07/2018
-- Design Name:   
-- Module Name:   C:/Users/hp_g301/Documents/Cinvestav/1_Cuatrimestre/Control_motor/Todo_TB.vhd
-- Project Name:  Control_motor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Todo_TB IS
END Todo_TB;
 
ARCHITECTURE behavior OF Todo_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Infra_motor
    PORT(
         rst : IN  std_logic;
         ent : IN  std_logic;
         clk : IN  std_logic;
         pwm_servo : OUT  std_logic;
         leds : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal ent : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal pwm_servo : std_logic;
   signal leds : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Infra_motor PORT MAP (
          rst => rst,
          ent => ent,
          clk => clk,
          pwm_servo => pwm_servo,
          leds => leds
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
 rst   <= '1', '0' after 60 ns;

   -- 
process
   begin
		ent <= '1';
		wait for 5.2ms;
		ent <= '0';
		wait for 2.56ms;
		ent <= '1';
		wait for 0.562ms;
		ent <= '0';
		wait for 1.2ms;
		ent <= '1';
		wait for 0.548ms;
		ent <= '0';
		wait for 0.631ms;
		ent <= '1';
		wait for 0.580ms;
		ent <= '0';
		wait for 0.650ms;
		ent <= '1';
		wait for 0.578ms;
		ent <= '0';
		wait for 0.58ms;
		ent <= '1';
		wait for 0.550ms;
		ent <= '0';
		wait for 0.680ms;
		ent <= '1';
		wait for 0.532ms;
		ent <= '0';
		wait for 0.600ms;
		ent <= '1';
		wait for 0.557ms;
		ent <= '0';
		wait for 0.590ms;
		ent <= '1'; 
		wait for 0.588ms;
		ent <= '0';
		wait for 0.647ms;
		ent <= '1';
		wait for 0.562ms;
		ent <= '0';
		wait for 0.666ms;
		ent <= '1';
		wait for 0.564ms;
		ent <= '0';
		wait for 0.676ms;
		ent <= '1';
		wait for 0.578ms;
		ent <= '0';
		wait for 0.658ms;
		ent <= '1';
		wait for 0.550ms;
		ent <= '0';
		wait for 0.679ms;
		ent <= '1';
end process;

END;
