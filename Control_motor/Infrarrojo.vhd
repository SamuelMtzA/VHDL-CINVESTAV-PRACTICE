----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:49 10/07/2018 
-- Design Name: 
-- Module Name:    Infrarrojo - Behavioral 
-- Project Name: 
-- Target Devices: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Receptor is
    port ( ent,clk,rst: in   STD_LOGIC;
			  leds:	inout STD_LOGIC_VECTOR (6 downto 0));
end Receptor;

architecture Arq_Receptor of Receptor is

signal vector:		STD_LOGIC_VECTOR (12 downto 0):= "0000000000000";	--Vector que almacena la informacion de la trama detectada
signal npulsos:	STD_LOGIC_VECTOR (3 downto 0):= "0000";				--Bandera de cuenta de pulsos para identificar una trama
signal clkdiv:		STD_LOGIC_VECTOR (12 downto 0):= "0000000000000";	--Señal de referencia de 100 us
signal nref:		STD_LOGIC_VECTOR (4 downto 0):= "00000";				--Señal que determina el tiempo de duracion de cada estado alto
signal pivote:		STD_LOGIC_VECTOR (4 downto 0):= "00000";				--Recibe la cuenta de nref para evaluar y asignar '1' o '0' al vector de datos
signal rstin:		STD_LOGIC:='0';												--Señal de reinicio de trama
signal sony:		STD_LOGIC:='0';												--Invierte la salida del receptor para leer los 12 bits correctamente

begin

-- Señal de entrada invertida (protocolo Sony standard)
sony <= not ent ;

-- Señal de referencia de 100us
process(clk,rst,clkdiv,rstin) begin

if rst='1' or clkdiv="1001110001000" or rstin ='1' then
	clkdiv <=(others => '0');
elsif clk 'event and clk = '1' then               -- Divisor de frecuencia para obtener 100 us
		clkdiv <= clkdiv + 1;                       -- Mantener este proceso en combinado 
end if;

end process; 

-- Se detecta el pulso de sincronia
process(clkdiv(12),rst,nref,rstin) begin

if rst='1' or rstin='1'  then
		rstin <='0';
elsif clkdiv(12)'event and clkdiv(12)='0' then      -- Mantener en combinado
	if nref = "01111" then
		rstin <= '1';
	end if;
end if;
 
end process;

-- Se cuenta el numero de pulsos a partir del flanco de bajada del pulso de sincronia
process (sony,rst,npulsos,rstin) begin

if rst='1' or rstin ='1' then
	   npulsos <= "0000";
elsif sony'event and sony='0' then
		npulsos <= npulsos + 1;	
end if;

end process;

-- Contador de tiempo en estado alto
process(clkdiv(12),rst,nref,sony,rstin) begin

if rst='1' or rstin ='1'  then
		nref <=(others => '0');
		pivote  <=(others => '0');
elsif clkdiv(12)'event and clkdiv(12)='0' then
	if sony = '1' then 
			nref <= nref+1;
	elsif sony = '0' then
			pivote <= nref;
			nref<=(others => '0');
	end if;
end if;
 
end process;

-- Generación del vector de datos
process (clkdiv(12),rst,pivote,rstin) 

variable i: integer range 0 to 13 := 0 ;
begin
if rst = '1' or rstin ='1' then
	vector <=(others => '0');
	i:= 0;
elsif clkdiv(12)'event and clkdiv(12)='1' and pivote > "0000" then
	if pivote  < "1000" then
			vector(i)<= '0';
			i:= i+1;
	else
			vector(i)<= '1';
			i:= i+1;
	end if;
end if;

end process;

-- Proceso de despliegue de datos en leds
process (clkdiv(12),rst,npulsos,vector) begin
if rst = '1' then
		leds <= (others => '0');
elsif clkdiv(12)'event and clkdiv(12)='0' then
	if npulsos="1101" then
		leds <= vector(7 downto 1);
	end if; 
end if;

end process;

end Arq_Receptor;