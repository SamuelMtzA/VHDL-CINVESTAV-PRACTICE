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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LCD is

	Port(
		CLK:		in		STD_LOGIC;
		RST:		in		STD_LOGIC;
		DATA:		inout STD_LOGIC_VECTOR( 0 to 3 );		
		LCD_E:	inout	STD_LOGIC;
		LCD_RS:	inout	STD_LOGIC;
		LCD_RW:	inout STD_LOGIC;
		SF_CE0:	out	STD_LOGIC
		);

end LCD;

architecture Behavioral of LCD is
	
	signal CNTR:		STD_LOGIC_VECTOR( 0 to 23 )		:= X"000000";   
	signal index:		INTEGER		:= 0;	

	-- Tengamos una definición tipo ROM 
    -- D Y C0 C1 C2 C3 C4 C5
    type ROM_TYPE is array( 0 to 84) of STD_LOGIC_VECTOR( 0 to 31 );   
	
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
									X"8000000C", -- 240ns 
									X"28000032", -- 1us
									X"2000000C", -- 240ns 
									-- Escribiendo datos
									X"4CFFFFFF", -- 335ms	--	C
									X"4400000C", -- 240ns 
									X"3C000032", -- 1us
									X"3400000C", -- 240ns 
											
									X"4CFFFFFF", -- 350ms 	--	I
									X"4400000C", -- 240ns  
									X"9C000032", -- 1us 
									X"9400000C", -- 240ns  
									
									X"4CFFFFFF", -- 350ms 	--	N
									X"4400000C", -- 240ns  
									X"EC000032", -- 1us
									X"E400000C", -- 240ns 
									
									X"5CFFFFFF", -- 350ms 	--	V
									X"5400000C", -- 240ns  
									X"6C000032", -- 1us 
									X"6400000C", -- 240ns 
									
									X"4CFFFFFF", -- 350ms 	--	E
									X"4400000C", -- 240ns  
									X"5C000032", -- 1us 
									X"5400000C", -- 240ns 
									
									X"5CFFFFFF", -- 350ms	--	S
									X"5400000C", -- 240ns 
									X"3C000032", -- 1us
									X"3400000C", -- 240ns 
									
									X"5CFFFFFF", -- 350ms 	--	T
									X"5400000C", -- 240ns  
									X"4C000032", -- 1us 
									X"4400000C", -- 240ns  
									
									X"4CFFFFFF", -- 350ms 	--	A
									X"4400000C", -- 240ns 
									X"1C000032", -- 1us 
									X"1400000C", -- 240ns 
									
									X"5CFFFFFF", -- 350ms	--	V
									X"5400000C", -- 240ns 
									X"6C000032", -- 1us 
									X"6400000C", -- 240ns 
									
									X"BCFFFFFF", -- 350ms 	-- -
									X"B400000C", -- 240ns 
									X"0C000032", -- 1us 
									X"0400000C", -- 240ns 
															
									X"4CFFFFFF", -- 350ms 	-- I
									X"4400000C", -- 240ns 
									X"9C000032", -- 1us 
									X"9400000C", -- 240ns
									
									X"5CFFFFFF", -- 350ms 	--	P
									X"5400000C", -- 240ns 
									X"0C000032", -- 1us 
									X"0400000C", -- 240ns 
									
									X"4CFFFFFF", -- 350ms 	--	N
									X"4400000C", -- 240ns
									X"EC000032", -- 1us 
									X"E400000C", -- 240ns	
									
									X"18FFFFFF", -- 335ms 	-- shift left
									X"1000000C", -- 240ns 
									X"88000032", -- 1us
									X"8000000C"  -- 240ns 
									
									);	
	
begin
    SF_CE0 <= '1';  -- Inhabilitar acceso a StrataFlash
	 
process(CLK,RST,CNTR,index) is
    begin
    if RST = '1' then
        index <=0;
        CNTR <= (others=>'0');
    elsif rising_edge( CLK ) then
    
            if CNTR >= ROM(index)(8 to 31) then
                        
                CNTR <= (others=>'0');
                DATA(0 to 3) <= ROM(index)(0 to 3);
                LCD_E   <= ROM(index)(4);
                LCD_RS  <= ROM(index)(5);
                LCD_RW  <= ROM(index)(6);
                        
                if index < ROM'high then 
                        index <= index + 1;
                else    
                        index <=81;
                end if;                                 
            else            
                CNTR <= CNTR + 1;                                                               
            end if;                 
    end if;
end process;                  					
	
end Behavioral;

