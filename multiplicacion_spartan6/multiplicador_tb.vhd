LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
 
ENTITY multiplicador_sim IS
END multiplicador_sim;
 
ARCHITECTURE behavior OF multiplicador_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplicador
    PORT(
         A,B : in   STD_LOGIC_VECTOR (16 downto 0);
             P : out  STD_LOGIC_VECTOR (33 downto 0));
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(16 downto 0) := (others => '0');
   signal B : std_logic_vector(16 downto 0) := (others => '0');

 	--Outputs
   signal P : std_logic_vector(33 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplicador PORT MAP (
          A => A,
          B => B,
          P => P
        );
-- Stimulus process
 stim_proc: process
 begin
 A <= "00000000000000000"; B <= "00000000000000000";
 -- ------------- Current Time: 100ns
 WAIT FOR 100 ns;
 A <= "00000000000000100"; B <= "00000000000001001";
 -- -------------------------------------
 -- ------------- Current Time: 200ns
 WAIT FOR 100 ns;
 A <= "00000000000001000"; B <= "00000000000000010";
 -- -------------------------------------
 -- ------------- Current Time: 300ns
 WAIT FOR 100 ns;
 A <= "00000000000010000"; B <= "00000000100000000";
  -- -------------------------------------
 -- ------------- Current Time: 400ns
 WAIT FOR 100 ns;
 A <= "00000000010010000"; B <= "00000000110000000";
 -- -------------------------------------
 -- ------------- Current Time: 500ns
 WAIT FOR 100 ns;
 A <= "00000000001010000"; B <= "00000000110000000"; -- -------------------------------------
 -- ------------- Current Time: 600ns
 WAIT FOR 100 ns;
 A <= "00000000000011000"; B <= "00000000110000000"; -- -------------------------------------
 -- ------------- Current Time: 700ns
 WAIT FOR 100 ns;
 A <= "01000000000010000"; B <= "01000000000000000"; -- -------------------------------------
 -- ------------- Current Time: 800ns
 WAIT FOR 100 ns;
 A <= "10000000000010000"; B <= "11000000100000000";
 WAIT FOR 100 ns;

end process;

END;
