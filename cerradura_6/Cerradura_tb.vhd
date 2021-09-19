LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY Cerradura_sim IS
END Cerradura_sim;
 
ARCHITECTURE behavior OF Cerradura_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CERRADURA
    PORT(
         ENTRADA : IN  std_logic_vector(3 downto 0);
         RST : IN  std_logic;
         CLK : IN  std_logic;
         CAP : IN  std_logic;
         LEDS : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENTRADA : std_logic_vector(3 downto 0) := (others => '0');
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
   signal CAP : std_logic := '0';

 	--Outputs
   signal LEDS : std_logic_vector(3 downto 0);
	
	-- Clock period and duty_cycle definitions
 
	CONSTANT periodo : time := 10 ns;
	CONSTANT ciclo_util : real := 0.5;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CERRADURA PORT MAP (
          ENTRADA => ENTRADA,
          RST => RST,
          CLK => CLK,
          CAP => CAP,
          LEDS => LEDS
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
	
	rst     <= '1', '0' after 80 ns;
	
	entrada <= 	X"0", 
					X"A" after 500 ns, 
					X"F" after 20.5 us, 
					X"8" after 40.5 us, 
					X"0" after 60.5 us;
					
	cap     <=  '0', 
					'1' after 600 ns, -- Primer pulso
					'0' after 1.6 us,
					'1' after 1.62 us,-- inicia rebote
					'0' after 1.64 us,
					'1' after 1.69 us,
					'0' after 1.71 us,
					'1' after 1.76 us,
					'0' after 1.78 us,
					'1' after 1.83 us,
					'0' after 1.85 us,-- termina rebote
					'1' after 20.6 us,-- Segundo pulso 
					'0' after 21.6 us,
					'1' after 21.62 us,-- inicia rebote
					'0' after 21.64 us,
					'1' after 21.69 us,
					'0' after 21.71 us,
					'1' after 21.76 us,
					'0' after 21.78 us,
					'1' after 21.83 us,
					'0' after 21.85 us,-- termina rebote
					'1' after 40.6 us,-- Tercer pulso 
					'0' after 41.6 us,
					'1' after 41.62 us,-- inicia rebote
					'0' after 41.64 us,
					'1' after 41.69 us,
					'0' after 41.71 us,
					'1' after 41.76 us,
					'0' after 41.78 us,
					'1' after 41.83 us,
					'0' after 41.85 us,-- termina rebote
					'1' after 60.6 us,-- Cuarto pulso 
					'0' after 61.6 us,
					'1' after 61.62 us,-- inicia rebote
					'0' after 61.64 us,
					'1' after 61.69 us,
					'0' after 61.71 us,
					'1' after 61.76 us,
					'0' after 61.78 us,
					'1' after 61.83 us,
					'0' after 61.85 us;-- termina rebote

END;
