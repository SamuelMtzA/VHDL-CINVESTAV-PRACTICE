----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:43:40 10/07/2018 
-- Design Name: 
-- Module Name:    PWM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PWM is
    Port ( clk,rst: in  STD_LOGIC;
	        leds : in std_logic_vector(6 downto 0);
			  pwm_servo : out std_logic);
end PWM;

architecture arq_PWM of PWM is

signal clk100K: std_logic;
signal cnt: std_logic_vector (12 downto 0);
signal aux: std_logic_vector (11 downto 0);
signal a: std_logic_vector (11 downto 0);
signal n : std_logic_vector(6 downto 0);
signal valor  : std_logic_vector(6 downto 0);
signal ledss : std_logic_vector(6 downto 0);

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

ledss <= (leds + 1);
Process(ledss)
begin 
   case  ledss is
	when "0000000" => valor <= "0110111"; --55
	when "0000001" => valor <= "0001010"; --65
	when "0000010" => valor <= "0010100";--075
	when "0000011" => valor <= "0011110"; --85
	when "0000100" => valor <= "0101000";--95
	when "0000101" => valor <= "0110010";--105
	when "0000110" => valor <= "0111100";--115
	when "0000111" => valor <= "1000110";--125
	when "0001000" => valor <= "1010000";--135
	when "0001001" => valor <= "1011010";--145
	when others => valor <= --055
	end case;
end process;

 

process (clk100k, valor, n, rst, a, ledss)
	begin
		if rst ='1' then
		  a <= x"091";		--1.45ms
		  n <= (others => '0');
		elsif (clk100k'event and clk100k ='1') then
		       n <= valor;
			if ledss = "0010001" then
					if a = x"0EB" then	--2.35ms
					     a <= X"0EB";
				   else 
					     a <= a - n;
						  n <= (others => '0');
					
				   end if;
			end if;
			
			if ledss  = "0010010" then
				if a = x"037" then	--0.55ms
					a <= x"037";
				else
					a <= a + n;
					n <= (others => '0');
				end if;
			end if;
		end if;
end process;

	
end arq_PWM;