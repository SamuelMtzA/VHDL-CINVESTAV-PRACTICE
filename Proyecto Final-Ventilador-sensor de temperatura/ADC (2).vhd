
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ADC is
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
		end ADC;
architecture ADC_Arq of ADC is
	
	type estados is (Inicio, Config_Gan, Conversion, Resultado);
	signal vnoc: std_logic_vector(13 downto 0):= (others => '0'); 
	signal sig_estado:	estados;
	signal enable: std_logic:='0';
	signal gan: std_logic_vector(0 to 7);
	signal conv: std_logic_vector(33 downto 0):= (others => '0');	
	
	
	
begin
	DIS_SIG <= X"F";
	AMP_SHDN <= rst;
	gan <= X"11"; -- Ganancia canal B, Ganancia Canal A 			
	process(clk, gan, conv, sig_estado, rst) 
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
               vnoc <=conv(2)&conv(3)&conv(4)&conv(5)&conv(6)&conv(7)&conv(8)&conv(9)&conv(10)&conv(11)&conv(12)&conv(13)&conv(14)&conv(15);
					if vnoc < "10000000000000" then
						volt <= "000110010010110101010000" -((vnoc)*(x"099"));
						volt1<= volt;
					else
						volt<= "001011000100000000100000" -(('0'& vnoc(12 downto 0))*(x"099"));
						 volt1<= volt;

					end if;	
				
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
				vnoc <= (others => '0');
			end if;
			
		end if;
	end process;
	
end ADC_Arq;	

