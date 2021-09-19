
-- VHDL Instantiation Created from source file REGISTRO.vhd -- 12:30:59 09/29/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT REGISTRO
	PORT(
		PULSO : IN std_logic;
		RESET : IN std_logic;
		CON : IN std_logic_vector(2 downto 0);       
		REGOUT : INOUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_REGISTRO: REGISTRO PORT MAP(
		PULSO => ,
		RESET => ,
		CON => ,
		REGOUT => 
	);


