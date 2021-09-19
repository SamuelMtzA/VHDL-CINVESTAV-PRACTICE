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
signal n : std_logic_vector(11 downto 0);
signal s : std_logic_vector(11 downto 0):="000010010001";
signal ledss : std_logic_vector(10 downto 0);

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
   case ledss is
	when "00000000000" => s <= "000000110111";
	when "00000000001" => s <= "000000001010";
	when "00000000010" => s <= "000000010100";
	when "00000000011" => s <= "000000011110";
	when "00000000100" => s <= "000000101000";
	when "00000000101" => s <= "000000110010";
	when "00000000110" => s <= "000000111100";
	when "00000000111" => s <= "000001000110";
	when "00000001000" => s <= "000001010000";
	when "00000001001" => s <= "000001011010";
	when others => s <= s;
	end case;
end process;


process (clk100k, s, n, rst, a, ledss)
	begin
		if rst ='1' then
		  a <= x"091";		--1.45ms
		  n <= (others => '0');
		elsif (clk100k'event and clk100k ='1') then
		       n <= s;
			if ledss = "00000010001" then
					if a = x"0EB" then	--2.35ms
					     a <= X"0EB";
				   else 
					     a <= a - n;
						  n <= (others => '0');
					
				   end if;
			end if;
			
			if ledss = "00000010010" then
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