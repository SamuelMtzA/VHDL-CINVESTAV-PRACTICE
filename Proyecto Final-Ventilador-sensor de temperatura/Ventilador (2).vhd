library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use Work.MODULOS.all;

entity Volante is
	port(
		clk, rst:	in std_logic;
		
		 SPI_SCK,SPI_MOSI:	out std_logic;				--Señales del bus SPI
		 SPI_MISO: in  std_logic;
		 AMP_CS, AMP_SHDN:	out std_logic; 			--Señales de control del Preamplificador
		 AD_CONV:	out std_logic; 						--Señal de control del ADC
		 DIS_SIG:	out std_logic_vector(3 downto 0);	
	    pwm_servo : out std_logic  ;
		 DATA:  inout STD_LOGIC_VECTOR( 0 to 3 ):=X"0";     
       LCD_E:  inout   STD_LOGIC:='0';
       LCD_RS: inout   STD_LOGIC:='0';
       LCD_RW: inout STD_LOGIC:='0'
--       SF_CE0: out STD_LOGIC
		);
		
end Volante;

architecture arq_Volante of Volante is

signal volt1 : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL H1,H2,H3,H4,H5,H6,H7	: STD_LOGIC_VECTOR(3 downto 0);
SIGNAL VBCD :STD_LOGIC_VECTOR(23 DOWNTO 0);

			  
begin

MODULO_1 : ADC	PORT MAP (clk=>clk,rst=>rst,SPI_SCK=>SPI_SCK,SPI_MOSI=>SPI_MOSI,SPI_MISO=>SPI_MISO,AMP_CS=>AMP_CS,AMP_SHDN=>AMP_SHDN,
AD_CONV=>AD_CONV,DIS_SIG=>DIS_SIG,volt1=>volt1,volt=>VBCD);

MODULO_2 : PWM PORT MAP (clk=>clk,rst=>rst,volt1=>volt1,pwm_servo=>pwm_servo);

MODULO_3: Convertidor PORT MAP (num_bin=>VBCD,num_bcd(27 downto 24)=>H1,num_bcd(23 downto 20)=>H2,num_bcd(19 downto 16)=>H3,
num_bcd(15 downto 12)=>H4,num_bcd(11 downto 8)=>H5,num_bcd(7 downto 4)=>H6,num_bcd(3 downto 0)=>H7);

MODULO_4: LCD PORT MAP (CLK=>clk,RST=>rst,DATA=>DATA,LCD_E=>LCD_E,LCD_RS=>LCD_RS,LCD_RW=>LCD_RW,H1=>H1,H2=>H2,H3=>H3,H4=>H4,H5=>H5,H6=>H6,H7=>H7);

end arq_Volante;

