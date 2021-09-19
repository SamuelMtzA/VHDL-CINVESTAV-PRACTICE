----------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Práctica # 3
-- Diseño: 	   	Diseño Jerárquico
-- Modulo:     	Paquete 
-- Descripción: 	Contiene los componentes de la cerradura electrónica
-----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MODULOS is

COMPONENT COMPARADOR is
    Port ( DATOA, DATOB : in  STD_LOGIC_VECTOR (3 downto 0);
           CAPTURA : in  STD_LOGIC;
           COMP : out  STD_LOGIC);
end COMPONENT;

COMPONENT CONTADOR is
    Port ( CAPTURA : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           CONTEO : inout  STD_LOGIC_VECTOR (2 downto 0));
end COMPONENT;

COMPONENT MULTIPLEXOR is
    Port ( DATO0		: in  	STD_LOGIC_VECTOR (3 downto 0);
           DATO1		: in  	STD_LOGIC_VECTOR (3 downto 0);
			  DATO2		: in  	STD_LOGIC_VECTOR (3 downto 0);
			  DATO3		: in  	STD_LOGIC_VECTOR (3 downto 0);
			  CONT		: in		STD_LOGIC_VECTOR (1 downto 0);
           MUX		: out  	STD_LOGIC_VECTOR (3 downto 0));
end COMPONENT;

COMPONENT REGISTRO is
    Port ( PULSO	: in  STD_LOGIC;
           RESET  : in  STD_LOGIC;
			  CON 	: in  STD_LOGIC_VECTOR (2 DOWNTO 0);
           REGOUT : inout STD_LOGIC_VECTOR (3 downto 0));
end COMPONENT;

COMPONENT ANTIRREBOTE is
    Port ( CLK 		: in  STD_LOGIC;
           CAPTURA 	: in  STD_LOGIC;
			  CAP 		: out STD_LOGIC);
end COMPONENT;


end MODULOS;
