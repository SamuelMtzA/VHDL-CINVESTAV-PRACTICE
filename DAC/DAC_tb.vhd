---------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 8
-- Diseño: 	   	Convertidor Digital-Analógico
-- Modulo:     	DAC_sim_vhd
-- Descripción: 	Vectores de prueba para el DAC
---------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY DAC_sim_vhd IS
END DAC_sim_vhd;

ARCHITECTURE behavior OF DAC_sim_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT DAC
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;
		SPI_MOSI : OUT std_logic;
		SPI_SCK : INOUT std_logic;
		DAC_CS : INOUT std_logic;
		DAC_CLR : OUT std_logic;
		SPI_SS_B : OUT std_logic;
		AMP_CS : OUT std_logic;
		AD_CONV : OUT std_logic;
		SF_CE0 : OUT std_logic;
		FPGA_INIT_B : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL CLK :  std_logic := '0';
	SIGNAL RST :  std_logic := '0';

	--Outputs
	SIGNAL SPI_MOSI :  std_logic;
	SIGNAL SPI_SCK :  std_logic;
	SIGNAL DAC_CS :  std_logic;
	SIGNAL DAC_CLR :  std_logic;
	SIGNAL SPI_SS_B :  std_logic;
	SIGNAL AMP_CS :  std_logic;
	SIGNAL AD_CONV :  std_logic;
	SIGNAL SF_CE0 :  std_logic;
	SIGNAL FPGA_INIT_B :  std_logic;
	
	CONSTANT periodo : time := 20 ns;
	CONSTANT ciclo_util : real := 0.5;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: DAC PORT MAP(
		CLK => CLK,
		RST => RST,
		SPI_MOSI => SPI_MOSI,
		SPI_SCK => SPI_SCK,
		DAC_CS => DAC_CS,
		DAC_CLR => DAC_CLR,
		SPI_SS_B => SPI_SS_B,
		AMP_CS => AMP_CS,
		AD_CONV => AD_CONV,
		SF_CE0 => SF_CE0,
		FPGA_INIT_B => FPGA_INIT_B
	);

RST <= '1', '0' after 30 ns;

PROCESS -- proceso para clock de 50 MHz 
   BEGIN
   LOOP
       CLK <= '0';
       WAIT FOR (periodo - (periodo * ciclo_util ));
       CLK <= '1';
       WAIT FOR (periodo * ciclo_util );
   END LOOP;
END PROCESS;

END;
