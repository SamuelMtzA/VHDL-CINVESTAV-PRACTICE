------------------------------------------------------------------------------
-- Compañia		: 	CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador	:	M. en C. Luis Martin Flores Nava
-- Proyecto		:  Práctica # 9
-- Diseño		: 	Controlador del ADC
-- Módulo		:  ADC
-- Descripción	: 	Control del ADC y del Amplificador
------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ADC is
	port(
		clk, rst:	in std_logic;
		SEL:	in std_logic_vector(1 downto 0);
		LEDS:	out std_logic_vector(6 downto 0):= (others => '0'); 
		SPI_SCK,SPI_MOSI:	out std_logic;				--Señales del bus SPI
		SPI_MISO: in  std_logic;
		AMP_CS, AMP_SHDN:	out std_logic; 			--Señales de control del Preamplificador
		AD_CONV:	out std_logic; 						--Señal de control del ADC
		DIS_SIG:	out std_logic_vector(3 downto 0) 
		);
		end ADC;
architecture ADC_Arq of ADC is
	
	type estados is (Inicio, Config_Gan, Conversion, Resultado);
	signal sig_estado:	estados;
	signal enable: std_logic:='0';
	signal gan: std_logic_vector(0 to 7);
	signal conv: std_logic_vector(33 downto 0):= (others => '0');
	
begin
	DIS_SIG <= X"F";
	AMP_SHDN <= rst;
	gan <= X"11"; -- Ganancia canal B, Ganancia Canal A 
				
	process(clk, gan, conv, sig_estado, SEL, rst) 
		variable cnt,i: integer:= 0;
	begin
		if (clk'event and clk = '1') then
			case sig_estado is
				when Inicio =>
					if cnt < 300 then
						AMP_CS 	<= '1';
						SPI_SCK	<=	'0';
						SPI_MOSI <= '0';
						AD_CONV	<= '0';
						cnt := cnt + 1;
						sig_estado <= Inicio;
					else 
						cnt := 0;
						sig_estado <= Config_Gan;
					end if;
		
				when Config_Gan =>
					AMP_CS <= '0';
					cnt := cnt + 1;
					if i<8 then
						if cnt < 6 then
							SPI_MOSI <= gan(i);	
						elsif cnt < 12 then
							SPI_SCK <= '1';
						elsif cnt < 15 then
							SPI_SCK <= '0';
						else
							cnt :=0;
							i := i+1;
						end if;
						sig_estado <= Config_Gan;
					else 
						i := 0;
						AMP_CS <= '1';
						SPI_MOSI <= '0';
						cnt := 0;
						sig_estado <= Conversion;
					end if;
					
				when Conversion =>
					cnt := cnt + 1;
					if i<34 then
						if cnt <= 2  then
							if i = 0 then
								AD_CONV <= '1';
							end if;
						elsif cnt < 4 then
							if i = 0 then
								AD_CONV <= '0';
							end if;
						elsif cnt < 6 then
							SPI_SCK <= '1';
						elsif cnt < 9 then
							conv (i) <= SPI_MISO;
							--conv <= "ZZ11100001111000ZZ00110011001100ZZ";
						elsif cnt < 10 then
							SPI_SCK <= '0';
						else
							cnt := 0;
							i := i+1;
						end if;
						sig_estado <= Conversion;
					else 
						i := 0;
						cnt := 0;	
						sig_estado <= Resultado;
					end if;	
					
				when Resultado =>
					cnt := cnt + 1;
					if cnt < 500  and enable = '1' then
						case SEL is
							when "00" => LEDS <= conv(31 downto 25); 	--LSB canal 1
							when "01" => LEDS <= conv(24 downto 18);	--MSB canal 1
							when "10" => LEDS <= conv(15 downto 9);	--LSB canal 0
							when "11" => LEDS <= conv(8 downto 2);		--MSB canal 0
							when others => LEDS <= (others => '0');
						end case;
						sig_estado <= Resultado;
					else 
						i := 0;
						enable <= '1';
						cnt := 0;
						sig_estado <= Conversion;
					end if;
				
				end case;

			if rst = '1' then
				cnt := 0;
				sig_estado <= Inicio;
				LEDS <= (others => '0');
			end if;
			
		end if;
	end process;	
end ADC_Arq;					