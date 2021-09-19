LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY dado_sim IS
END dado_sim;
 
ARCHITECTURE behavior OF dado_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dado
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         btn : IN  std_logic;
         d : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal btn : std_logic := '0';

 	--Outputs
   signal d : std_logic_vector(2 downto 0);

   -- Clock period and duty_cycle definitions
 
	CONSTANT periodo : time := 20 ns;
	CONSTANT ciclo_util : real := 0.5;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dado PORT MAP (
          clk => clk,
          rst => rst,
          btn => btn,
          d => d
        );

   -- Clock process definitions
   clk_process :process
   begin
   LOOP
       clk <= '0';
       WAIT FOR (periodo - (periodo * ciclo_util ));
       clk <= '1';
       WAIT FOR (periodo * ciclo_util );
   END LOOP;
   end process;
	
	  rst <= '1', '0' after 80 ns;
	  btn <= '0', '1' after 500 ns, '0' after 2500 ns, '1' after 6 us, '0' after 8 us;
 


END;