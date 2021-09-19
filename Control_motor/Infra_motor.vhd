----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:46:08 10/07/2018 
-- Design Name: 
-- Module Name:    Infra_motor - Behavioral 
-- Project Name: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.modulos.all;


entity Infra_motor is
    Port(rst, ent, clk : in std_logic;
	        pwm_servo : out std_logic);
end Infra_motor;

architecture completo of Infra_motor is
signal leds: std_logic_vector(6 downto 0);

begin

infra : Receptor Port map(ent => ent, clk => clk, rst => rst, leds => leds);
motor : PWM Port map( clk => clk, rst => rst, leds => leds, pwm_servo => pwm_servo);

end completo;

