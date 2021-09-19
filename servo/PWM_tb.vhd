-------------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingenieria Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 6
-- Diseño: 	   	Control de un servomotor con PWM
-- Modulo:     	PWM_tb
-- Descripción: 	Vectores de prueba para el servomotor 
-------------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY PWM_tb IS
END PWM_tb;
 
ARCHITECTURE behavior OF PWM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PWM
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         btderecha : IN  std_logic;
         btizquierda : IN  std_logic;
         pwm_servo : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal btderecha : std_logic := '0';
   signal btizquierda : std_logic := '0';

 	--Outputs
   signal pwm_servo : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PWM PORT MAP (
          clk => clk,
          rst => rst,
          btderecha => btderecha,
          btizquierda => btizquierda,
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
	
		rst <= '1','0' after 60 ns;
		btderecha <= '0', '1' after 60 ms, '0' after 80 ms;
		btizquierda <= '0', '1' after 140 ms, '0' after 160 ms;


END;
