library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PWM is
    Port ( clk,rst: in  STD_LOGIC;
				volt1: in  std_logic_vector(23 downto 0);
			  pwm_servo : out std_logic);
end PWM;

architecture arq_PWM of PWM is


signal clk100K: std_logic;
signal cnt: std_logic_vector (12 downto 0);
signal aux: std_logic_vector (11 downto 0);
signal a: std_logic_vector (11 downto 0);

begin
			
-- Periodo PWM (50% duty cycle)
process (clk,rst,cnt)
begin
	if rst='1' or cnt=X"1F3" then -- 20ns * 500 ciclos = referencia 10us
	   cnt <= (others => '0');
		clk100K <= '1';
	elsif clk'event and clk='1' then
		cnt <= cnt + 1 ;
		if cnt= X"1C1" then	--20ns * 249 ciclos = 1/2 Periodo
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

process (clk100k,volt1,rst,a)
	begin
			if clk100k'event and clk100k ='1' then
			if volt1 < "000010010010011111000000" then
				a <= x"000";
			elsif (volt1 >= "0000010010010011111000000" and volt1 < "000011000011010100000000") then
				a <= x"118";
			elsif (volt1 >=  "000011000011010100000000" and volt1 < "000011000011010100000000") then
				a <= x"12c";
			elsif (volt1 >=  "000011000011010100000000" and volt1 < "000100100100111110000000") then
				a <= x"140";
			elsif (volt1 >=  "000100100100111110000000" and volt1 < "000101010101110011000000") then
				a <= x"154";
			elsif (volt1 >=  "000101010101110011000000" and volt1 < "000110000110101000000000") then 
			   a <= x"168";			   
			elsif (volt1 >=  "000110000110101000000000" and volt1 < "000111101000010010000000") then 
			   a <= x"17c";
			elsif (volt1 >=  "000111101000010010000000" and volt1 < "001000011001000111000000") then 
			   a <= x"190";
			elsif (volt1 >=  "001000011001000111000000" and volt1 < "001001001001111100000000") then
			   a <= x"1a4";
			elsif (volt1 >=  "001001001001111100000000" and volt1 < "001001111010110001000000") then
			   a <= x"1ae";
			elsif (volt1 >=  "001001111010110001000000" ) then 
				a <= x"1c0";
			else 
			   a<=a;
			end if;
			
		end if;
end process;
	
end arq_PWM;
