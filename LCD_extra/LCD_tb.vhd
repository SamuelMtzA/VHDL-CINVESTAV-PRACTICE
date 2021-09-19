----------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador:		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 7
-- Diseño: 	   	Controlador del LCD
-- Modulo:     	LCD_tb
-- Descripción: 	Vectores de prueba para el LCD 
-----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY LCD_tb IS
END LCD_tb;
 
ARCHITECTURE behavior OF LCD_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LCD
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         DATA : INOUT  std_logic_vector(0 to 3);
         LCD_E : INOUT  std_logic;
         LCD_RS : INOUT  std_logic;
         LCD_RW : INOUT  std_logic;
         SF_CE0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

	--BiDirs
   signal DATA : std_logic_vector(0 to 3);
   signal LCD_E : std_logic;
   signal LCD_RS : std_logic;
   signal LCD_RW : std_logic;

 	--Outputs
   signal SF_CE0 : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LCD PORT MAP (
          CLK => CLK,
          RST => RST,
          DATA => DATA,
          LCD_E => LCD_E,
          LCD_RS => LCD_RS,
          LCD_RW => LCD_RW,
          SF_CE0 => SF_CE0
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

RST<='1', '0' after 40 ns;
     

END;
