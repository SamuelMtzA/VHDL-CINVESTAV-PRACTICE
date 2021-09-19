library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LCD is

    Port(
        CLK:	in      STD_LOGIC;
        RST:   in      STD_LOGIC;
		  H1,H2,H3,H4,H5,H6,H7: in STD_LOGIC_VECTOR (3 DOWNTO 0);
        DATA:  inout STD_LOGIC_VECTOR( 0 to 3 ):=X"0";     
        LCD_E:  inout   STD_LOGIC:='0';
        LCD_RS: inout   STD_LOGIC:='0';
        LCD_RW: inout STD_LOGIC:='0'
        );

end LCD;

architecture Behavioral of LCD is

	 signal clkdiv: std_logic_vector (23 downto 0);
	 signal q: std_logic_vector(3 downto 0);
    signal CNTR:    STD_LOGIC_VECTOR( 0 to 23 ) := X"000000";   
    signal index:   integer:=0;
    type ROM_TYPE is array( 0 to 88 ) of STD_LOGIC_VECTOR( 0 to 31 );  	 
    
signal ROM: ROM_TYPE:= (  -- Inicialización 
                          X"380B71B0", -- 15ms   0
                          X"3000000C", -- 230ns
                          X"380320C8", -- 4.1ms 
                          X"3000000C", -- 230ns
                          X"38001388", -- 100us
                          X"3000000C", -- 230ns 
                          X"280007D0", -- 40us 
                          X"2000000C", -- 230ns
                          -- Configuración 
                          -- Function Set 0x28
                          X"280007D0", -- 40us  8   
                          X"2000000C", -- 230ns 
                          X"88000032", -- 1us 
                          X"8000000C", -- 230ns 
                          -- Entry Mode 0x06
                          X"080007D0", -- 40us   12
                          X"0000000C", -- 230ns 
                          X"68000032", -- 1us
                          X"6000000C", -- 230ns
                          -- Display On 0x0C
                          X"080007D0", -- 40us   16
                          X"0000000C", -- 230ns
                          X"C8000032", -- 1us
                          X"C000000C", -- 230ns
                          -- Clear Display 0x01
                          X"080007D0", -- 40us    20
                          X"0000000C", -- 230ns
                          X"18000032", -- 1us
                          X"1000000C", -- 230ns
                          X"10014050", -- 1.64ms
								  -- Seleccionar DDRAM
                          X"880007D0", -- 40us 25
                          X"8000000C", -- 230ns
                          X"08000032", -- 1us
                          X"0000000C", -- 230ns
                          -- Escribiendo datos
                          X"5CFFFFFF", -- 335ms 29
                          X"5400000C", -- 230ns
                          X"4C000032", -- 1us
                          X"4400000C",  -- 230ns--T
								  
								  X"4CFFFFFF", -- 335ms  33
                          X"4400000C", -- 230ns
                          X"5C000032", -- 1us
                          X"5400000C",  -- 230ns--E
								  
								  X"4CFFFFFF", -- 335ms 37
                          X"4400000C", -- 230ns
                          X"DC000032", -- 1us
                          X"D400000C",  -- 230ns--M
								  
								  X"5CFFFFFF", -- 335ms  41
                          X"5400000C", -- 230ns
                          X"0C000032", -- 1us
                          X"0400000C",  -- 230ns--P
								 
 								  X"3CFFFFFF", -- 335ms  45
                          X"3400000C", -- 230ns
                          X"AC000032", -- 1us
                          X"A400000C",  -- 230ns--------------------------------
								  
								  -- Seleccionar DDRAM
                          X"880007D0", -- 40us   49
                          X"8000000C", -- 230ns
                          X"88000032", -- 1us
                          X"8000000C", -- 230ns
                          -- Escribiendo datos
                          X"DC00F000", -- 335ms  53
                          X"D400000C", -- 230ns
                          X"FC000032", -- 1us
                          X"F400000C",  -- 230ns
								  -- Seleccionar DDRAM
                          X"880007D0", -- 40us   57
                          X"8000000C", -- 230ns
                          X"98000032", -- 1us
                          X"9000000C", -- 230ns
                          -- Escribiendo datos
                          X"4C00F000", -- 335ms  61
                          X"4400000C", -- 230ns
                          X"3C000032", -- 1us
                          X"3400000C",  -- 230ns	
								  ------------------------------------
								  
								  -- Seleccionar DDRAM
                          X"880007D0", -- 40us   49 65
                          X"8000000C", -- 230ns
                          X"58000032", -- 1us
                          X"5000000C", -- 230ns
                          -- Escribiendo datos
                          X"3C00F000", -- 335ms  53 69
                          X"3400000C", -- 230ns
                          X"1C000032", -- 1us
                          X"1400000C",  -- 230ns
								  -- Seleccionar DDRAM
                          X"880007D0", -- 40us   57 73
                          X"8000000C", -- 230ns
                          X"68000032", -- 1us
                          X"6000000C", -- 230ns
                          -- Escribiendo datos
                          X"3C00F000", -- 335ms  61  77
                          X"3400000C", -- 230ns
                          X"1C000032", -- 1us
                          X"1400000C",  -- 230ns		  
								  -- Seleccionar DDRAM
                          X"880007D0", -- 40us   65 81
                          X"8000000C", -- 230ns
                          X"78000032", -- 1us
                          X"7000000C", -- 230ns
                          -- Escribiendo datos
                          X"3C00F000", -- 335ms   69 85
                          X"3400000C", -- 230ns
                          X"1C000032", -- 1us
                          X"1400000C"  -- 230ns
						

                          );
begin
process(CLK,RST,CNTR,index,q) is
    begin
    if RST = '1' then
        INDEX <=0;
        CNTR <= (others=>'0');
    elsif rising_edge( CLK ) then
    
            if CNTR >= ROM(index)(8 to 31) then
                        
                CNTR <= (others=>'0');
                LCD_E   <= ROM(index)(4);
                LCD_RS  <= ROM(index)(5);
                LCD_RW  <= ROM(index)(6);
					 
					 if(index <70)then
						DATA(0 to 3) <= ROM(index)(0 to 3);
						LCD_RS <= ROM(index)(5);
					 elsif (index <73) then 
						DATA(0 to 3) <= H1;
						LCD_RS <= ROM(index)(5);	
					 elsif (index <78) then 
						DATA(0 to 3) <= ROM(index)(0 to 3);
						LCD_RS <= ROM(index)(5);
					 elsif (index <81) then 			
						DATA(0 to 3) <= H2;
						LCD_RS <= ROM(index)(5);	
					 elsif (index <86) then 
						DATA(0 to 3) <= ROM(index)(0 to 3);
						LCD_RS <= ROM(index)(5);	
					 else  			
						DATA(0 to 3) <= H3;
						LCD_RS <= ROM(index)(5);	
		           end if;
                if index < ROM'high then 
                        index <= index + 1;
                else    
                        index <=65;
                end if;                                 
            else            
                CNTR <= CNTR + 1;                                                               
            end if;                 
    end if;
end process;                    
end Behavioral;    

