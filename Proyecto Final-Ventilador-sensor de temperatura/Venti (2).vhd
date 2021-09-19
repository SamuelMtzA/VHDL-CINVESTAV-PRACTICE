--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:40:48 10/16/2018
-- Design Name:   
-- Module Name:   C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/Ventilador/Venti.vhd
-- Project Name:  Ventilador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADC
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Venti IS
END Venti;
 
ARCHITECTURE behavior OF Venti IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADC
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         SPI_SCK : OUT  std_logic;
         SPI_MOSI : OUT  std_logic;
         SPI_MISO : IN  std_logic;
         AMP_CS : OUT  std_logic;
         AMP_SHDN : OUT  std_logic;
         AD_CONV : OUT  std_logic;
         DIS_SIG : OUT  std_logic_vector(3 downto 0);
         volt : INOUT  std_logic_vector(23 downto 0);
         volt1 : INOUT  std_logic_vector(23 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal SPI_MISO : std_logic := '0';

	--BiDirs
   signal volt : std_logic_vector(23 downto 0);
   signal volt1 : std_logic_vector(23 downto 0);

 	--Outputs
   signal SPI_SCK : std_logic;
   signal SPI_MOSI : std_logic;
   signal AMP_CS : std_logic;
   signal AMP_SHDN : std_logic;
   signal AD_CONV : std_logic;
   signal DIS_SIG : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADC PORT MAP (
          clk => clk,
          rst => rst,
          SPI_SCK => SPI_SCK,
          SPI_MOSI => SPI_MOSI,
          SPI_MISO => SPI_MISO,
          AMP_CS => AMP_CS,
          AMP_SHDN => AMP_SHDN,
          AD_CONV => AD_CONV,
          DIS_SIG => DIS_SIG,
          volt => volt,
          volt1 => volt1
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
