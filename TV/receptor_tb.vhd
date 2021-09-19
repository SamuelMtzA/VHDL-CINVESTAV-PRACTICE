-------------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingenieria Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 6
-- Diseño: 	   	Lector de mando infrarrojo
-- Modulo:     	Receptor_sim
-- Descripción: 	Simulación de la recepción del código SONY de 12 bits
-------------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY receptor_sim IS
END receptor_sim;
 
ARCHITECTURE behavior OF receptor_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Receptor
    PORT(
         ent : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         leds : OUT  std_logic_vector(6 downto 0)
         );
    END COMPONENT;
    

   --Inputs
   signal ent : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
	signal leds : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Receptor PORT MAP (
          ent => ent,
          clk => clk,
          rst => rst,
          leds=> leds
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
 rst   <= '1', '0' after 30 ns;

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
