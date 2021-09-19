
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MODULOS is

COMPONENT ADC is
	port(
		clk, rst:	in std_logic;
		SPI_SCK,SPI_MOSI:	out std_logic;				--Señales del bus SPI
		SPI_MISO: in  std_logic;
		AMP_CS, AMP_SHDN:	out std_logic; 			--Señales de control del Preamplificador
		AD_CONV:	out std_logic; 						--Señal de control del ADC
		DIS_SIG:	out std_logic_vector(3 downto 0); 
      volt:   inout std_logic_vector(23 downto 0):= (others => '0');
		volt1:   inout std_logic_vector(23 downto 0):= (others => '0')
		);
end COMPONENT;


COMPONENT PWM is
    Port ( clk,rst: in  STD_LOGIC;
					volt1: in  std_logic_vector(23 downto 0);
			  pwm_servo : out std_logic);
end COMPONENT;

COMPONENT Convertidor is
	GENERIC(
		NBITS  : integer :=  24; -- Cantidad de bits del número binario.
		NSALIDA: integer := 28  -- Cantidad de bits de salida en formato BCD.
	);
	PORT(
		num_bin: in  STD_LOGIC_VECTOR(NBITS-1   downto 0);
		num_bcd: INout STD_LOGIC_VECTOR(27 downto 0)
	);
end COMPONENT;

COMPONENT LCD is

    Port(
        CLK:	in      STD_LOGIC;
        RST:   in      STD_LOGIC;
        DATA:  inout STD_LOGIC_VECTOR( 0 to 3 ):=X"0";     
        LCD_E:  inout   STD_LOGIC:='0';
        LCD_RS: inout   STD_LOGIC:='0';
        LCD_RW: inout STD_LOGIC:='0';
		  H1,H2,H3,H4,H5,H6,H7: in STD_LOGIC_VECTOR (3 DOWNTO 0)
        );

end COMPONENT;



end MODULOS;

