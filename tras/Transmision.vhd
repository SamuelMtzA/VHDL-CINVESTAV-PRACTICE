---------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 5
-- Diseño: 	   	Puerto serial RS-232
-- Modulo:     	Trans
-- Descripción: 	Transmisión a 9600 bauds
---------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Trans is
    Port ( clk,rst: in  STD_LOGIC;
			  tx : out  STD_LOGIC);
end Trans;

architecture Arq_Trans of Trans is

signal regtx:			STD_LOGIC_VECTOR( 7 downto 0);
signal cnttx:			STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
signal ttx:				STD_LOGIC_VECTOR( 3 downto 0):="0000";
signal caracter:		STD_LOGIC_VECTOR( 7 downto 0);
constant baudtx:		STD_LOGIC_VECTOR(15 downto 0):="0010100010110001"; -- 9600 bauds

begin
		
-- Reloj de transmisión
process (clk,rst,cnttx,caracter,ttx)begin
	if (rst='1')then
		cnttx<= baudtx - 1;
		ttx <= "0000";
		caracter <= "00000000";
	elsif(caracter = "00010111") then --n caracter + 1
		cnttx<= baudtx - 1;
		ttx <= "0000";
	elsif (clk'event and clk='1')then
			cnttx<=cnttx+1;
			if (cnttx=baudtx)then
				ttx<=ttx+1;
				cnttx<=(others=>'0');
				if(ttx="1010")then
					caracter<=caracter+1;
					ttx <= "0000";
				end if;
			end if;
	end if;
end process;	

-- Asignacion de Caracter
with caracter select
	regtx <=			X"43"	when "00000000", --C
						X"49"	when "00000001", --I
						X"4E"	when "00000010", --N
						X"56"	when "00000011", --V
						X"45"	when "00000100", --E
						X"53"	when "00000101", --S
						X"54"	when "00000110", --T
						X"41"	when "00000111", --A
						X"56"	when "00001000", --V
						X"2D" when "00001001", ---
						X"49" when "00001010", --I
						X"50"	when "00001011", --P
						X"4E" when "00001100", --N
						X"2D" when "00001101", --
						X"45" when "00001110", --E	
						X"51" when "00001111", --Q
						X"55" when "00010000", --U						
						X"49" when "00010001", --I	
						X"50" when "00010010", --P
						X"4F" when "00010011", --O
						X"2D" when "00010100", ---
						X"30" when "00010101", --0
						X"35" when "00010110", --5
						X"00"	when others;

-- Protocolo de transmisión
with ttx select
		tx		<=	'1'		when "0000",
					'0'		when "0001",	--bit de start
					regtx(0)	when "0010",	--inicia transmision de dato
					regtx(1)	when "0011",
					regtx(2) when "0100",
					regtx(3)	when "0101",
					regtx(4)	when "0110",
					regtx(5)	when "0111",
					regtx(6)	when "1000",
					regtx(7) when "1001",	--fin de transmision de dato
					'1'		when "1010",	--bit de stop
					'1'		when others;

end Arq_Trans;