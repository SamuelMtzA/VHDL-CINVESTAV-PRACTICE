---------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingenieria Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 5
-- Diseño: 	   	Puerto serial RS-232
-- Modulo:     	Recepcion_tb
-- Descripción: 	Simulación para la recepción a 9600 bauds
---------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Recepcion_tb IS
END Recepcion_tb;
 
ARCHITECTURE behavior OF Recepcion_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Recep
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         rx : IN  std_logic;
         leds : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal rx : std_logic := '0';

 	--Outputs
   signal leds : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Recep PORT MAP (
          clk => clk,
          rst => rst,
          rx => rx,
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
 

   -- Stimulus

		rst <= '1', '0' after 100 ns;

		rx <= '1', 
		'0' after 100 us, 
		'1' after 108.6805 us, --LSB
		'0' after 117.361  us,
		'0' after 126.0415 us,
		'0' after 134.722  us,
		'0' after 143.4025 us,
		'0' after 152.083  us,
		'1' after 160.7635 us,
		'0' after 169.444  us, --MSB
		'1' after 178.1245 us;
	
 END;
