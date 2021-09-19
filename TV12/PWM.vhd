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
	         leds : in std_logic_vector(6 downto 0 );
			  pwm_servo : out std_logic);
end PWM;



architecture arq_PWM of PWM is

component Receptor is
    port ( ent,clk,rst: in   STD_LOGIC;
			  leds:	inout STD_LOGIC_VECTOR (6 downto 0));
end component;

signal clk100K: std_logic;
signal cnt: std_logic_vector (12 downto 0);
signal aux: std_logic_vector (11 downto 0);
signal a: std_logic_vector (11 downto 0);
signal ledss: STD_LOGIC_VECTOR (6 downto 0);
signal valor: std_logic_vector (6 downto 0);
signal val: std_logic_vector (6 downto 0);
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
ledss <= leds +1;
process (ledss)
begin 
   case ledss is
	when "0000000" => valor <= "0110111"; 
	when "0000001" => valor <= "0001010"; 
	when "0000010" => valor <= "0010100";
	when "0000011" => valor <= "0011110"; 
	when "0000100" => valor <= "0101000";
	when "0000101" => valor <= "0110010";
	when "0000110" => valor <= "0111100";
	when "0000111" => valor <= "1000110";
	when "0001000" => valor <= "1010000";
	when "0001001" => valor <= "1011010";
	when others => valor <= valor;
	end case;
 
end process;

process (clk100k,valor,val,rst,a)
	begin
		if rst ='1' then
		  a <= x"091";		--1.45ms
		  val <= (others => '0');
		elsif clk100k'event and clk100k ='1' then
		     val<= valor;
			if valor  = "0010000" then
					if a = x"0EB" then	--2.35ms
					a <= x"0EB";
				else
					a <= a+val; 
				end if;
			end if;
			
			if valor  ="0010001" then
				if a = x"037" then	--0.55ms
					a <= x"037";
				else
					a <= a-val;
				end if;
			end if;
		end if;
end process;
	
motor : Receptor  Port map ( clk => clk, rst => rst, leds => leds);

	
end arq_PWM;
