---------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 8
-- Diseño: 	   	Convertidor Digital-Analógico
-- Modulo:     	DAC
-- Descripción: 	Convierte valores digitales a su correspondiente Analógico
---------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DAC is
    Port ( CLK,RST : in  STD_LOGIC;
           SPI_MOSI,DAC_CLR : out  STD_LOGIC;
			  SPI_SCK,DAC_CS : inout STD_LOGIC;
           SPI_SS_B,AMP_CS,AD_CONV,SF_CE0,FPGA_INIT_B : out  STD_LOGIC);
end DAC;

architecture Arq of DAC is

signal cnt:   std_logic_vector (11 downto 0)  := (others => '0');
signal reg:   std_logic_vector (23 downto 0)  := (others => '0');


begin
-- Desabilitar otros dispositivos que comparten el ducto SPI
	SPI_SS_B    <= '1';
	AMP_CS 	   <= '1';
	AD_CONV	   <= '0';
	SF_CE0	   <= '1';
	FPGA_INIT_B <= '1';
	

-- Generación de la señal DAC_CLR
DAC_CLR  <= '0' when rst='1' else '1';


-- Generación de la señal RAMPA
process (DAC_CS,rst,cnt) begin
	if rst='1' then 
		cnt <= (others => '0');
	elsif DAC_CS'event and DAC_CS='1' then
		cnt <= cnt + 1;
	end if;
end process;

-- Protocolo de comunicación
reg <= "0011" & "0000" & cnt(11 downto 0) & "0000" ;

process(clk, rst, reg) 
		variable aux,i: integer:= 0; --comenzar con 0
	begin
		if (clk'event and clk = '1') then
				aux := aux + 1;
					if aux < 8 then
							DAC_CS <= '1';
					elsif	aux < 10 then
							DAC_CS <= '0';
					elsif i<24 then
						if aux < 12 then
							SPI_MOSI <= reg(23-i);	
						elsif aux < 18 then
							SPI_SCK <= '1';
						elsif aux < 21 then
							SPI_SCK <= '0';
						else
							aux :=10;
							i := i+1;
						end if;
					else 
						i := 0;
						aux := 0;
						SPI_MOSI <= '0';
					end if;
		end if;			
end process;					

end Arq;

