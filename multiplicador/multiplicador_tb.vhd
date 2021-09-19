LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY multiplicador_sim IS
END multiplicador_sim;
 
ARCHITECTURE behavior OF multiplicador_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplicador
    PORT(
         A : IN  std_logic_vector(16 downto 0);
         B : IN  std_logic_vector(16 downto 0);
         P : OUT  std_logic_vector(33 downto 0)
        );
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
					 A <= "00"; B <= "00";
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                A <= "00"; B <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                A <= "00"; B <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                A <= "00"; B <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                A <= "01"; B <= "00";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                A <= "01"; B <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                A <= "01"; B <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                A <= "01"; B <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                A <= "10"; B <= "00";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                A <= "10"; B <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                A <= "10"; B <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                A <= "10"; B <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                A <= "11"; B <= "00";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                A <= "11"; B <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                A <= "11"; B <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                A <= "11"; B <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;

   end process;

END;
