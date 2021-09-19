-----------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador:		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 9
-- Diseño: 	   	Controlador del ADC
-- Modulo:     	ADC_tb
-- Descripción: 	Vectores de prueba para el ADC 
-----------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ADC_tb IS
END ADC_tb;
 
ARCHITECTURE behavior OF ADC_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADC
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         SEL : IN  std_logic_vector(1 downto 0);
         LEDS : OUT  std_logic_vector(6 downto 0);
         SPI_SCK : OUT  std_logic;
         SPI_MOSI : OUT  std_logic;
         SPI_MISO : IN  std_logic;
         AMP_CS : OUT  std_logic;
         AMP_SHDN : OUT  std_logic;
         AD_CONV : OUT  std_logic;
         DIS_SIG : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal SEL : std_logic_vector(1 downto 0) := (others => '0');
   signal SPI_MISO : std_logic := '0';

 	--Outputs
   signal LEDS : std_logic_vector(6 downto 0);
   signal SPI_SCK : std_logic;
   signal SPI_MOSI : std_logic;
   signal AMP_CS : std_logic;
   signal AMP_SHDN : std_logic;
   signal AD_CONV : std_logic;
   signal DIS_SIG : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADC PORT MAP (
          clk => clk,
          rst => rst,
          SEL => SEL,
          LEDS => LEDS,
          SPI_SCK => SPI_SCK,
          SPI_MOSI => SPI_MOSI,
          SPI_MISO => SPI_MISO,
          AMP_CS => AMP_CS,
          AMP_SHDN => AMP_SHDN,
          AD_CONV => AD_CONV,
          DIS_SIG => DIS_SIG
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

   rst <= '1','0' after 100 ns;
	SEL <= "11", "10" after 30 us,"00" after 60 us,"01" after 90 us;

END;
