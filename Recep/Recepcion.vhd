---------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingenieria Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 5
-- Diseño: 	   	Puerto serial RS-232
-- Modulo:     	Recep
-- Descripción: 	Recepción a 115200 bauds
---------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Recep is
    Port ( clk,rst,rx: in  std_logic;
           leds: out std_logic_vector(7 downto 0));
end Recep;

architecture Arq_Recep of Recep is

signal 	   erx:	std_logic:='0';                         
signal 	   trx:	std_logic_vector(4 downto 0);
signal    regrx:	std_logic_vector(7 downto 0):= "00000000";  			
signal    cntrx:	std_logic_vector(10 downto 0);
constant baudrx:  std_logic_vector(8 downto 0):= "100100001"; --(115200*3) bauds 

begin

process (rst,rx,trx)
begin
	if rst='1' then
		erx <= '0';
	elsif rx='0' then 		 -- Detecta el bit de inicio 
		erx <= '1';			    -- Habilita la recepción
	elsif trx="11011" then
		erx <= '0';				 -- Deshabilita la recepción
	end if;
end process;

process (clk,rst,cntrx,trx,erx)begin
	if (rst='1' or erx='0')then
		cntrx <= (others=>'0');
		trx   <= (others=>'0');
	elsif (clk'event and clk='1' and erx='1')then 
		   cntrx <= cntrx + 1;
			if (cntrx=baudrx)then
				trx <= trx + 1;
				cntrx<=(others=>'0');
			end if;
	end if;
end process;

process (clk,rst,trx,rx,regrx)
begin
   if rst='1' then
		regrx <= (others=>'0');
		leds  <= (others=>'0');
	elsif (clk'event and clk='1') then
		case (trx) is 
			when "00100" =>  regrx(0) <=	rx;
			when "00111" =>  regrx(1) <=	rx;
			when "01010" =>  regrx(2) <=	rx;
			when "01101" =>  regrx(3) <=	rx; 
			when "10000" =>  regrx(4) <=	rx;
			when "10011" =>  regrx(5) <=	rx;
			when "10110" =>  regrx(6) <=	rx;
			when "11001" =>  regrx(7) <=	rx;
			when "11010"  => leds     <= regrx; -- Carga código ASCII a los leds
			when others => null;
		end case;
	 end if;
end process;	

end Arq_Recep;