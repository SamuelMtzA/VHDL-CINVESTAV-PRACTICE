----------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 3
-- Diseño: 	   	Diseño Jerárquico
-- Modulo:     	Multiplexor 
-- Descripción: 	Envia al comparador cada uno de los dígitos de la clave
-----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity MULTIPLEXOR is
    Port ( DATO0		: in  	STD_LOGIC_VECTOR (3 downto 0);
           DATO1		: in  	STD_LOGIC_VECTOR (3 downto 0);
			  DATO2		: in  	STD_LOGIC_VECTOR (3 downto 0);
			  DATO3		: in  	STD_LOGIC_VECTOR (3 downto 0);
			  CONT		: in		STD_LOGIC_VECTOR (1 downto 0);
           MUX		: out  	STD_LOGIC_VECTOR (3 downto 0));
end MULTIPLEXOR;	

architecture Behavioral of MULTIPLEXOR is
begin

MUX	<=		DATO0	when	CONT 	= "00" 	else
				DATO1 when	CONT 	= "01" 	else
				DATO2	when	CONT 	= "10" 	else
				DATO3;

end Behavioral;

