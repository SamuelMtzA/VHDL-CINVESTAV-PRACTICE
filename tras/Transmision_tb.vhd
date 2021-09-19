----------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 5
-- Diseño: 	   	Puerto serial RS-232
-- Modulo:     	Transmision_tb 
-- Descripción: 	Simulación de la transmisión a 9600 bauds
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Transmision_tb IS
END Transmision_tb;
 
ARCHITECTURE behavior OF Transmision_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Trans
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         tx : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal tx : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Trans PORT MAP (
          clk => clk,
          rst => rst,
          tx => tx
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
      rst     <= '1', '0' after 30 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
