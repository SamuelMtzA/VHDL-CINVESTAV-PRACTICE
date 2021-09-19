----------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 3
-- Diseño: 	   	Diseño Jerárquico
-- Modulo:     	Cerradura 
-- Descripción: 	Módulo de mayor nivel jerárquico
-----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use Work.MODULOS.all;



entity CERRADURA is
    Port ( ENTRADA : in  STD_LOGIC_VECTOR (3 downto 0);
           RST : in  STD_LOGIC;
			  CLK	:	in STD_LOGIC;
           CAP : in  STD_LOGIC;
           LEDS : out  STD_LOGIC_VECTOR (3 downto 0));
end CERRADURA;

architecture Behavioral of CERRADURA is

SIGNAL COMPARADOR1 	: STD_LOGIC;
SIGNAL CONTADOR1		: STD_LOGIC_VECTOR (2 DOWNTO 0);
SIGNAL MULTIPLEXOR1	: STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL REGISTRO1		: STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL ANTIR1			: STD_LOGIC;
SIGNAL clkdiv: STD_LOGIC_VECTOR (15 DOWNTO 0);

begin

process (clk,rst,clkdiv)
begin
    if rst='1' then
       clkdiv <= (others => '0');
    elsif clk'event and clk='1' then
        clkdiv <= clkdiv + 1 ;
    end if;

end process;    

MODULO_1 : COMPARADOR 	PORT MAP ( DATOA=>ENTRADA, DATOB=>MULTIPLEXOR1, CAPTURA=>ANTIR1, COMP=>COMPARADOR1 );
MODULO_2 : CONTADOR		PORT MAP ( CAPTURA=>ANTIR1, RESET=>RST, CONTEO=>CONTADOR1 );
MODULO_3 : MULTIPLEXOR	PORT MAP ( DATO0=>X"A", DATO1=>X"F", DATO2=>X"8", DATO3=>X"0", CONT=>CONTADOR1(1 DOWNTO 0), MUX=>MULTIPLEXOR1 );
MODULO_4 : REGISTRO		PORT MAP ( PULSO=>COMPARADOR1, RESET=>RST, CON=>CONTADOR1, REGOUT=>REGISTRO1 );
MODULO_5 : ANTIRREBOTE 	PORT MAP ( CLK=>clkdiv(15), CAPTURA=>CAP, CAP=>ANTIR1 );
LEDS <= REGISTRO1;

end Behavioral;

