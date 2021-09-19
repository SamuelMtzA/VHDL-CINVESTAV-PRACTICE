----------------------------------------------------------------------------------
-- Compañia: 		CINVESTAV-IPN, Departamento de Ingeniería Eléctrica
-- Diseñador: 		M. en C. Luis Martin Flores Nava
-- Proyecto:   	Extraclase de la Práctica # 7
-- Diseño: 	   	Controlador del LCD
-- Modulo:     	LCD
-- Descripción: 	Despliega un mensaje y lo desplaza a la izquierda 
-----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LCD is
	Port(
		CLK:		in		STD_LOGIC;
		RST:		in		STD_LOGIC;
		DATA:		inout STD_LOGIC_VECTOR( 0 to 3 ):=X"0";		
		LCD_E:	inout	STD_LOGIC:='0';
		LCD_RS:	inout	STD_LOGIC:='0';
		LCD_RW:	inout STD_LOGIC:='0';
		SF_CE0:	out	STD_LOGIC
		);
end LCD;

architecture Behavioral of LCD is

	signal CNTR:		STD_LOGIC_VECTOR( 0 to 23 )		:= X"000000";   
	signal index: 		integer:=0;							
																 --C I N V E S T A V - I P N
	constant msg : STD_LOGIC_VECTOR (0 to 111):= X"43494E564553544156B049504E18";
	-- Tengamos una definición tipo ROM! 
   -- D Y C0 C1 C2 C3 C4 C5
   type ROM_TYPE is array( 0 to 32 ) of STD_LOGIC_VECTOR( 0 to 31 );   		
	
	signal ROM: ROM_TYPE:= ( 	
								  -- Inicialización
								  X"380B71B0", -- Esperar 15ms 
                          X"3000000C", -- 240ns  
                          X"380320C8", -- 4.1ms 
                          X"3000000C", -- 240ns 
                          X"38001388", -- 100us
                          X"3000000C", -- 240ns  
                          X"280007D0", -- 40us 
                          X"2000000C", -- 240ns 
                          -- Function Set 0x28
                          X"280007D0", -- 40us 
                          X"2000000C", -- 240ns  
                          X"88000032", -- 1us 
                          X"8000000C", -- 240ns 
                          -- Entry Mode 0x06
                          X"080007D0", -- 40us  
                          X"0000000C", -- 240ns 
                          X"68000032", -- 1us
                          X"6000000C", -- 240ns
                          -- Display On 0x0C
                          X"080007D0", -- 40us
                          X"0000000C", -- 240ns
                          X"C8000032", -- 1us
                          X"C000000C", -- 240ns
                          -- Finalmente Clear Display 0x01
                          X"080007D0", -- 40us
                          X"0000000C", -- 240ns
                          X"18000032", -- 1us
                          X"1000000C", -- 240ns
                          X"10014050", -- 1.64ms
                          -- Seleccionar DDRAM
                          X"880007D0", -- 40us
                          X"8000000C", -- 230ns
                          X"28000032", -- 1us
                          X"2000000C", -- 230ns
                          -- Escribiendo datos
                          X"4CFFFFFF", -- 335ms
                          X"4400000C", -- 240ns
                          X"1C000032", -- 1us
                          X"1400000C"  -- 240ns
									);
begin
	SF_CE0 <= '1';  -- Deshabilitar acceso a StrataFlash
	
process(CLK,RST,index,CNTR) is
		variable i: integer:=0;
	begin
	if RST = '1' then
		INDEX <=0;
		CNTR <= (others=>'0');
	elsif rising_edge( CLK ) then
			
			if CNTR >= ROM(index)(8 to 31) then
				CNTR <= (others=>'0');
				LCD_E		<= ROM(index)(4);
				LCD_RW 	<= ROM(index)(6);
				
				if(index <29)then
						DATA(0 to 3) <= ROM(index)(0 to 3);
						LCD_RS <= ROM(index)(5);
				else 
						if(index = 29 or index = 31)then
								if(i<26)then
										LCD_RS <='1';
								else
										LCD_RS <= '0';
								end if;	
								DATA(0 to 3) <= msg(4*i to 4*i+3);		
								i:=i+1;
						else 
								DATA(0 to 3) <= Data(0 to 3);
								LCD_RS <= LCD_RS;
						end if;
					
						if(i=28)then
						i:=26;
						end if;
				end if;
				
				if index < ROM'high then 
						index <= index + 1;
				else	
						index <=29;
				end if;									
			else			
				CNTR <= CNTR + 1;																
			end if;					
	end if;
end process;					
end Behavioral;
