-------------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingenieria Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 6
-- Diseño: 	   	Control del servomotor
-- Modulo:     	PWM
-- Descripción: 	Control de un servomotor por PWM con movimientos de +- 5°
-------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PWM is
    Port ( clk,rst,btderecha,btizquierda : in  STD_LOGIC;
			  pwm_servo : out std_logic);
end PWM;

architecture arq_PWM of PWM is

component  ANTIRREBOTE is
    Port ( CLK 		: in  STD_LOGIC;
           CAPTURA 	: in  STD_LOGIC;
			  CAP 		: out STD_LOGIC);
end component;

signal clk100K: std_logic;
signal cnt: std_logic_vector (12 downto 0);
signal aux: std_logic_vector (11 downto 0);
signal a: std_logic_vector (11 downto 0);

signal DER: std_logic;
signal IZQ: std_logic;
begin
			
-- Periodo PWM (50% duty cycle)
process (clk,rst,cnt)
begin
	if rst='1' or cnt=X"1F3" then -- 20ns * 500 ciclos = referencia 10us
	   cnt <= (others => '0');
		clk100K <= '1';
	elsif clk'event and clk='1' then
		cnt <= cnt + 1 ;
		if cnt= X"0F9" then	--20ns * 249 ciclos = 1/2 Periodo
			clk100K <= '0';
		end if;
	end if;
end process;	

process (clk100K,rst,aux)
begin
	if rst='1' or aux=X"5DC" then  -- Tiempo (15ms)
	   aux <= (others => '0');
		pwm_servo <= '1';
	elsif clk100K'event and clk100K='1' then
		aux <= aux + 1 ;
		if aux = a then
			pwm_servo <= '0';
		end if;
	end if;
end process;

process (clk100k,DER,IZQ,rst,a)
	begin
		if rst ='1' then
		  a <= x"091";		--1.45ms
		elsif clk100k'event and clk100k ='1' then
			if DER = '1' then
					if a = x"0EB" then	--2.35ms
					a <= x"0EB";
				else
					a <= a+5; 
				end if;
			end if;
			
			if IZQ ='1' then
				if a = x"037" then	--0.55ms
					a <= x"037";
				else
					a <= a-5;
				end if;
			end if;
		end if;
end process;
	
ant1: ANTIRREBOTE port map (clk100k,btderecha,DER);
ant2: ANTIRREBOTE port map (clk100k,btizquierda,IZQ);
end arq_PWM;
