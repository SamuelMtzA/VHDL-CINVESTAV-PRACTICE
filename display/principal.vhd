library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.display_seg.ALL;
use IEEE.NUMERIC_STD.ALL;

entity principal is
port (en : in std_logic_vector (9 downto 0);
		--sal : inout std_logic_vector (3 downto 0));
		R : in std_logic_vector (3 downto 0);
		CLK : in std_logic;
		--REG : inout std_logic_vector (3 downto 0));
		entrada: in std_logic_vector(3 downto 0);
		salida:	inout std_logic_vector(6 downto 0));
		
end principal;

architecture arq_principal of principal is
signal sal : std_logic_vector (3 downto 0); 
signal REG : std_logic_vector (3 downto 0);

begin
u1: codificador port map (en=>en, sal=>sal);
u2: registro port map (R=>R, CLK=>CLK,REG=>REG);
u3: decodificador port map (entrada=>entrada, salida=>salida);

end arq_principal;

