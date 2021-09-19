----------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 2
-- Diseño: 	   	Circuitos Lógicos Secuenciales
-- Modulo:     	Contador 
-- Descripción: 	Contador de 4 bits, con reset y control de ascendente/descendente
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity contador is
    Port ( clk,rst,ud : in  STD_LOGIC;
                    q : inout  STD_LOGIC_VECTOR (3 downto 0));
end contador;

architecture Arq_contador of contador is

signal clkdiv: std_logic_vector (26 downto 0);
signal cont: std_logic_vector (3 downto 0);
begin

process (clk,rst,clkdiv)
begin
	if rst='1' then
	   clkdiv <= (others => '0');
	elsif clk'event and clk='1' then
		clkdiv <= clkdiv + 1 ;
	end if;
end process;	

process (clk,rst,q,ud,cont)
begin
	if rst='1' then
	   q <= "0001";
		cont<=q;
	elsif clk'event and clk='1' then
		if ud ='1' then
			if(cont(0) = '1')then
				q <= cont;
				cont<= cont+1;
					else
				cont<=cont+1;
			end if;
		else
			if(cont(0) = '1')then
				q <= cont;
				cont<= cont-1;
				else
				cont<=cont-1;
			end if;
		end if;
	end if;
end process;	

end Arq_contador;

