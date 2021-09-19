LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
use ieee.NUMERIC_STD.ALL; 
 
ENTITY convertidor_sim IS
END convertidor_sim;
 
ARCHITECTURE behavior OF convertidor_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT convertidor
    PORT(
         b : IN  bit_vector(3 downto 0);
         g : OUT  bit_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal b : bit_vector(3 downto 0) := "0000";

 	--Outputs
   signal g : bit_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: convertidor PORT MAP (
          b => b,
          g => g
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
					 b <= "0000";
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                b <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                b <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                b <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                b <= "0100";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                b <= "0101";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                b <= "0110";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                b <= "0111";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                b <= "1000";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                b <= "1001";
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                b <= "1010";
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                b <= "1011";
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                b <= "1100";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                b <= "1101";
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                b <= "1110";
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                b <= "1111";
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;

   end process;

END;
