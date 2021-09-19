library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Recep is
    Port ( clk,rst,rx: in  std_logic;
           leds: inout std_logic_vector(3 downto 0));
end Recep;

architecture Arq_Recep of Recep is

signal  		modu: std_logic_vector(3 downto 0);
signal 		f: std_logic:='0';
signal 	   erx:	std_logic:='0';                         
signal 	   trx:	std_logic_vector(4 downto 0);
signal    regrx:	std_logic_vector(3 downto 0):= "0000";  			
signal    cntrx:	std_logic_vector(10 downto 0);
constant baudrx:  std_logic_vector(8 downto 0):= "100100001"; --(115200*3) bauds 
signal  clkdiv:  std_logic_vector(8 downto 0);

begin

process (rst,rx,trx)
begin
	if rst='1' then
		erx <= '0';
		f <= '0';
	elsif rx='0' then 		 -- Detecta el bit de inicio 
		erx <= '1';			    -- Habilita la recepción
		f <= '0';
	elsif trx="11011" then
		erx <= '0';				 -- Deshabilita la recepción
		f <= '1';
	end if;
end process;

process (clk,rst,cntrx,trx,erx)begin
	if (rst='1' or erx='0')then
		cntrx <= (others=>'0');
		trx   <= (others=>'0');
	elsif (clk'event and clk='1' and erx='1')then 
		   cntrx <= cntrx + 1;
			if (cntrx=baudrx)then
				trx <= trx + 1;
				cntrx<=(others=>'0');
			end if;
	end if;
end process;

process (clk,rst,trx,rx,regrx)
begin
   if rst='1' then
		regrx <= (others=>'0');
		modu  <= (others=>'0');
	elsif (clk'event and clk='1') then
		case (trx) is 
			when "00100" =>  regrx(0) <=	rx;
			when "00111" =>  regrx(1) <=	rx;
			when "01010" =>  regrx(2) <=	rx;
			when "01101" =>  regrx(3) <=	rx; 
			when "11010"  => modu     <= regrx; -- Carga código ASCII a los leds
			when others => null;
		end case;
	 end if;
end process;	

process (clk,rst,clkdiv)
begin
	if rst='1' then
	   clkdiv <= (others => '0');
	elsif clk'event and clk='1' then
		clkdiv <= clkdiv + 1 ;
	end if;
end process;

process (clkdiv,leds,f)
begin
	if f='0' then
	   leds <= "0000";
	elsif clkdiv(8)'event and clkdiv(8)='1' and f='1' then
				leds <= leds + 1;
			if leds= (modu-1) then
				leds<= "0000";
			end if;
	end if;
end process;		
end Arq_Recep;