--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: multiplicador_timesim.vhd
-- /___/   /\     Timestamp: Sun Sep 16 14:48:35 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf multiplicador.pcf -rpw 100 -tpw 0 -ar Structure -tm multiplicador -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim multiplicador.ncd multiplicador_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-03-26)
-- Input file	: multiplicador.ncd
-- Output file	: C:\Users\Samuel\Desktop\Practicas_FPGa_nexys2\multiplicacion_spartan6\netgen\par\multiplicador_timesim.vhd
-- # of Entities	: 1
-- Design Name	: multiplicador
-- Xilinx	: C:\Xilinx\14.5\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity multiplicador is
  port (
    A : in STD_LOGIC_VECTOR ( 16 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 16 downto 0 ); 
    P : out STD_LOGIC_VECTOR ( 33 downto 0 ) 
  );
end multiplicador;

architecture Structure of multiplicador is
  signal B_9_IBUF_0 : STD_LOGIC; 
  signal P_4_OBUF_400 : STD_LOGIC; 
  signal P_5_OBUF_401 : STD_LOGIC; 
  signal P_6_OBUF_402 : STD_LOGIC; 
  signal P_7_OBUF_403 : STD_LOGIC; 
  signal P_8_OBUF_404 : STD_LOGIC; 
  signal P_9_OBUF_405 : STD_LOGIC; 
  signal A_10_IBUF_0 : STD_LOGIC; 
  signal A_11_IBUF_0 : STD_LOGIC; 
  signal A_12_IBUF_0 : STD_LOGIC; 
  signal A_13_IBUF_0 : STD_LOGIC; 
  signal A_14_IBUF_0 : STD_LOGIC; 
  signal A_15_IBUF_0 : STD_LOGIC; 
  signal A_16_IBUF_0 : STD_LOGIC; 
  signal B_10_IBUF_0 : STD_LOGIC; 
  signal B_11_IBUF_0 : STD_LOGIC; 
  signal B_12_IBUF_0 : STD_LOGIC; 
  signal B_13_IBUF_0 : STD_LOGIC; 
  signal B_14_IBUF_0 : STD_LOGIC; 
  signal B_15_IBUF_0 : STD_LOGIC; 
  signal B_16_IBUF_0 : STD_LOGIC; 
  signal P_10_OBUF_420 : STD_LOGIC; 
  signal P_11_OBUF_421 : STD_LOGIC; 
  signal P_12_OBUF_422 : STD_LOGIC; 
  signal P_20_OBUF_423 : STD_LOGIC; 
  signal P_13_OBUF_424 : STD_LOGIC; 
  signal P_21_OBUF_425 : STD_LOGIC; 
  signal P_14_OBUF_426 : STD_LOGIC; 
  signal P_22_OBUF_427 : STD_LOGIC; 
  signal P_30_OBUF_428 : STD_LOGIC; 
  signal P_15_OBUF_429 : STD_LOGIC; 
  signal P_23_OBUF_430 : STD_LOGIC; 
  signal P_31_OBUF_431 : STD_LOGIC; 
  signal P_16_OBUF_432 : STD_LOGIC; 
  signal P_24_OBUF_433 : STD_LOGIC; 
  signal P_32_OBUF_434 : STD_LOGIC; 
  signal P_17_OBUF_435 : STD_LOGIC; 
  signal P_25_OBUF_436 : STD_LOGIC; 
  signal P_33_OBUF_437 : STD_LOGIC; 
  signal P_18_OBUF_438 : STD_LOGIC; 
  signal P_26_OBUF_439 : STD_LOGIC; 
  signal A_0_IBUF_0 : STD_LOGIC; 
  signal P_19_OBUF_441 : STD_LOGIC; 
  signal P_27_OBUF_442 : STD_LOGIC; 
  signal A_1_IBUF_0 : STD_LOGIC; 
  signal P_28_OBUF_444 : STD_LOGIC; 
  signal A_2_IBUF_0 : STD_LOGIC; 
  signal P_29_OBUF_446 : STD_LOGIC; 
  signal A_9_IBUF_0 : STD_LOGIC; 
  signal A_8_IBUF_0 : STD_LOGIC; 
  signal A_7_IBUF_0 : STD_LOGIC; 
  signal A_6_IBUF_0 : STD_LOGIC; 
  signal A_5_IBUF_0 : STD_LOGIC; 
  signal A_4_IBUF_0 : STD_LOGIC; 
  signal A_3_IBUF_0 : STD_LOGIC; 
  signal B_8_IBUF_0 : STD_LOGIC; 
  signal B_7_IBUF_0 : STD_LOGIC; 
  signal B_6_IBUF_0 : STD_LOGIC; 
  signal B_5_IBUF_0 : STD_LOGIC; 
  signal B_4_IBUF_0 : STD_LOGIC; 
  signal B_3_IBUF_0 : STD_LOGIC; 
  signal B_2_IBUF_0 : STD_LOGIC; 
  signal B_1_IBUF_0 : STD_LOGIC; 
  signal B_0_IBUF_0 : STD_LOGIC; 
  signal P_0_OBUF_465 : STD_LOGIC; 
  signal P_1_OBUF_466 : STD_LOGIC; 
  signal P_2_OBUF_467 : STD_LOGIC; 
  signal P_3_OBUF_468 : STD_LOGIC; 
  signal B_9_IBUF_1 : STD_LOGIC; 
  signal A_10_IBUF_16 : STD_LOGIC; 
  signal A_11_IBUF_19 : STD_LOGIC; 
  signal A_12_IBUF_22 : STD_LOGIC; 
  signal A_13_IBUF_25 : STD_LOGIC; 
  signal A_14_IBUF_28 : STD_LOGIC; 
  signal A_15_IBUF_31 : STD_LOGIC; 
  signal A_16_IBUF_34 : STD_LOGIC; 
  signal B_10_IBUF_37 : STD_LOGIC; 
  signal B_11_IBUF_40 : STD_LOGIC; 
  signal B_12_IBUF_43 : STD_LOGIC; 
  signal B_13_IBUF_46 : STD_LOGIC; 
  signal B_14_IBUF_49 : STD_LOGIC; 
  signal B_15_IBUF_52 : STD_LOGIC; 
  signal B_16_IBUF_55 : STD_LOGIC; 
  signal A_0_IBUF_98 : STD_LOGIC; 
  signal A_1_IBUF_105 : STD_LOGIC; 
  signal A_2_IBUF_110 : STD_LOGIC; 
  signal Mmult_P_M34 : STD_LOGIC; 
  signal Mmult_P_M35 : STD_LOGIC; 
  signal Mmult_P_PCOUT0 : STD_LOGIC; 
  signal Mmult_P_PCOUT1 : STD_LOGIC; 
  signal Mmult_P_PCOUT2 : STD_LOGIC; 
  signal Mmult_P_PCOUT3 : STD_LOGIC; 
  signal Mmult_P_PCOUT4 : STD_LOGIC; 
  signal Mmult_P_PCOUT5 : STD_LOGIC; 
  signal Mmult_P_PCOUT6 : STD_LOGIC; 
  signal Mmult_P_PCOUT7 : STD_LOGIC; 
  signal Mmult_P_PCOUT8 : STD_LOGIC; 
  signal Mmult_P_PCOUT9 : STD_LOGIC; 
  signal Mmult_P_PCOUT10 : STD_LOGIC; 
  signal Mmult_P_PCOUT11 : STD_LOGIC; 
  signal Mmult_P_PCOUT12 : STD_LOGIC; 
  signal Mmult_P_PCOUT13 : STD_LOGIC; 
  signal Mmult_P_PCOUT14 : STD_LOGIC; 
  signal Mmult_P_PCOUT15 : STD_LOGIC; 
  signal Mmult_P_PCOUT16 : STD_LOGIC; 
  signal Mmult_P_PCOUT17 : STD_LOGIC; 
  signal Mmult_P_PCOUT18 : STD_LOGIC; 
  signal Mmult_P_PCOUT19 : STD_LOGIC; 
  signal Mmult_P_PCOUT20 : STD_LOGIC; 
  signal Mmult_P_PCOUT21 : STD_LOGIC; 
  signal Mmult_P_PCOUT22 : STD_LOGIC; 
  signal Mmult_P_PCOUT23 : STD_LOGIC; 
  signal Mmult_P_PCOUT24 : STD_LOGIC; 
  signal Mmult_P_PCOUT25 : STD_LOGIC; 
  signal Mmult_P_PCOUT26 : STD_LOGIC; 
  signal Mmult_P_PCOUT27 : STD_LOGIC; 
  signal Mmult_P_PCOUT28 : STD_LOGIC; 
  signal Mmult_P_PCOUT29 : STD_LOGIC; 
  signal Mmult_P_PCOUT30 : STD_LOGIC; 
  signal Mmult_P_PCOUT31 : STD_LOGIC; 
  signal Mmult_P_PCOUT32 : STD_LOGIC; 
  signal Mmult_P_PCOUT33 : STD_LOGIC; 
  signal Mmult_P_PCOUT34 : STD_LOGIC; 
  signal Mmult_P_PCOUT35 : STD_LOGIC; 
  signal Mmult_P_PCOUT36 : STD_LOGIC; 
  signal Mmult_P_PCOUT37 : STD_LOGIC; 
  signal Mmult_P_PCOUT38 : STD_LOGIC; 
  signal Mmult_P_PCOUT39 : STD_LOGIC; 
  signal Mmult_P_PCOUT40 : STD_LOGIC; 
  signal Mmult_P_PCOUT41 : STD_LOGIC; 
  signal Mmult_P_PCOUT42 : STD_LOGIC; 
  signal Mmult_P_PCOUT43 : STD_LOGIC; 
  signal Mmult_P_PCOUT44 : STD_LOGIC; 
  signal Mmult_P_PCOUT45 : STD_LOGIC; 
  signal Mmult_P_PCOUT46 : STD_LOGIC; 
  signal Mmult_P_PCOUT47 : STD_LOGIC; 
  signal Mmult_P_P0 : STD_LOGIC; 
  signal Mmult_P_P1 : STD_LOGIC; 
  signal Mmult_P_P2 : STD_LOGIC; 
  signal Mmult_P_P3 : STD_LOGIC; 
  signal Mmult_P_P4 : STD_LOGIC; 
  signal Mmult_P_P5 : STD_LOGIC; 
  signal Mmult_P_P6 : STD_LOGIC; 
  signal Mmult_P_P7 : STD_LOGIC; 
  signal Mmult_P_P8 : STD_LOGIC; 
  signal Mmult_P_P9 : STD_LOGIC; 
  signal Mmult_P_P10 : STD_LOGIC; 
  signal Mmult_P_P11 : STD_LOGIC; 
  signal Mmult_P_P12 : STD_LOGIC; 
  signal Mmult_P_P13 : STD_LOGIC; 
  signal Mmult_P_P14 : STD_LOGIC; 
  signal Mmult_P_P15 : STD_LOGIC; 
  signal Mmult_P_P16 : STD_LOGIC; 
  signal Mmult_P_P17 : STD_LOGIC; 
  signal Mmult_P_P18 : STD_LOGIC; 
  signal Mmult_P_P19 : STD_LOGIC; 
  signal Mmult_P_P20 : STD_LOGIC; 
  signal Mmult_P_P21 : STD_LOGIC; 
  signal Mmult_P_P22 : STD_LOGIC; 
  signal Mmult_P_P23 : STD_LOGIC; 
  signal Mmult_P_P24 : STD_LOGIC; 
  signal Mmult_P_P25 : STD_LOGIC; 
  signal Mmult_P_P26 : STD_LOGIC; 
  signal Mmult_P_P27 : STD_LOGIC; 
  signal Mmult_P_P28 : STD_LOGIC; 
  signal Mmult_P_P29 : STD_LOGIC; 
  signal Mmult_P_P30 : STD_LOGIC; 
  signal Mmult_P_P31 : STD_LOGIC; 
  signal Mmult_P_P32 : STD_LOGIC; 
  signal Mmult_P_P33 : STD_LOGIC; 
  signal Mmult_P_P34 : STD_LOGIC; 
  signal Mmult_P_P35 : STD_LOGIC; 
  signal Mmult_P_P36 : STD_LOGIC; 
  signal Mmult_P_P37 : STD_LOGIC; 
  signal Mmult_P_P38 : STD_LOGIC; 
  signal Mmult_P_P39 : STD_LOGIC; 
  signal Mmult_P_P40 : STD_LOGIC; 
  signal Mmult_P_P41 : STD_LOGIC; 
  signal Mmult_P_P42 : STD_LOGIC; 
  signal Mmult_P_P43 : STD_LOGIC; 
  signal Mmult_P_P44 : STD_LOGIC; 
  signal Mmult_P_P45 : STD_LOGIC; 
  signal Mmult_P_P46 : STD_LOGIC; 
  signal Mmult_P_P47 : STD_LOGIC; 
  signal Mmult_P_BCOUT0 : STD_LOGIC; 
  signal Mmult_P_BCOUT1 : STD_LOGIC; 
  signal Mmult_P_BCOUT2 : STD_LOGIC; 
  signal Mmult_P_BCOUT3 : STD_LOGIC; 
  signal Mmult_P_BCOUT4 : STD_LOGIC; 
  signal Mmult_P_BCOUT5 : STD_LOGIC; 
  signal Mmult_P_BCOUT6 : STD_LOGIC; 
  signal Mmult_P_BCOUT7 : STD_LOGIC; 
  signal Mmult_P_BCOUT8 : STD_LOGIC; 
  signal Mmult_P_BCOUT9 : STD_LOGIC; 
  signal Mmult_P_BCOUT10 : STD_LOGIC; 
  signal Mmult_P_BCOUT11 : STD_LOGIC; 
  signal Mmult_P_BCOUT12 : STD_LOGIC; 
  signal Mmult_P_BCOUT13 : STD_LOGIC; 
  signal Mmult_P_BCOUT14 : STD_LOGIC; 
  signal Mmult_P_BCOUT15 : STD_LOGIC; 
  signal Mmult_P_BCOUT16 : STD_LOGIC; 
  signal Mmult_P_BCOUT17 : STD_LOGIC; 
  signal Mmult_P_CARRYOUT : STD_LOGIC; 
  signal Mmult_P_CARRYOUTF : STD_LOGIC; 
  signal Mmult_P_BCIN0 : STD_LOGIC; 
  signal Mmult_P_BCIN1 : STD_LOGIC; 
  signal Mmult_P_BCIN2 : STD_LOGIC; 
  signal Mmult_P_BCIN3 : STD_LOGIC; 
  signal Mmult_P_BCIN4 : STD_LOGIC; 
  signal Mmult_P_BCIN5 : STD_LOGIC; 
  signal Mmult_P_BCIN6 : STD_LOGIC; 
  signal Mmult_P_BCIN7 : STD_LOGIC; 
  signal Mmult_P_BCIN8 : STD_LOGIC; 
  signal Mmult_P_BCIN9 : STD_LOGIC; 
  signal Mmult_P_BCIN10 : STD_LOGIC; 
  signal Mmult_P_BCIN11 : STD_LOGIC; 
  signal Mmult_P_BCIN12 : STD_LOGIC; 
  signal Mmult_P_BCIN13 : STD_LOGIC; 
  signal Mmult_P_BCIN14 : STD_LOGIC; 
  signal Mmult_P_BCIN15 : STD_LOGIC; 
  signal Mmult_P_BCIN16 : STD_LOGIC; 
  signal Mmult_P_BCIN17 : STD_LOGIC; 
  signal Mmult_P_PCIN0 : STD_LOGIC; 
  signal Mmult_P_PCIN1 : STD_LOGIC; 
  signal Mmult_P_PCIN2 : STD_LOGIC; 
  signal Mmult_P_PCIN3 : STD_LOGIC; 
  signal Mmult_P_PCIN4 : STD_LOGIC; 
  signal Mmult_P_PCIN5 : STD_LOGIC; 
  signal Mmult_P_PCIN6 : STD_LOGIC; 
  signal Mmult_P_PCIN7 : STD_LOGIC; 
  signal Mmult_P_PCIN8 : STD_LOGIC; 
  signal Mmult_P_PCIN9 : STD_LOGIC; 
  signal Mmult_P_PCIN10 : STD_LOGIC; 
  signal Mmult_P_PCIN11 : STD_LOGIC; 
  signal Mmult_P_PCIN12 : STD_LOGIC; 
  signal Mmult_P_PCIN13 : STD_LOGIC; 
  signal Mmult_P_PCIN14 : STD_LOGIC; 
  signal Mmult_P_PCIN15 : STD_LOGIC; 
  signal Mmult_P_PCIN16 : STD_LOGIC; 
  signal Mmult_P_PCIN17 : STD_LOGIC; 
  signal Mmult_P_PCIN18 : STD_LOGIC; 
  signal Mmult_P_PCIN19 : STD_LOGIC; 
  signal Mmult_P_PCIN20 : STD_LOGIC; 
  signal Mmult_P_PCIN21 : STD_LOGIC; 
  signal Mmult_P_PCIN22 : STD_LOGIC; 
  signal Mmult_P_PCIN23 : STD_LOGIC; 
  signal Mmult_P_PCIN24 : STD_LOGIC; 
  signal Mmult_P_PCIN25 : STD_LOGIC; 
  signal Mmult_P_PCIN26 : STD_LOGIC; 
  signal Mmult_P_PCIN27 : STD_LOGIC; 
  signal Mmult_P_PCIN28 : STD_LOGIC; 
  signal Mmult_P_PCIN29 : STD_LOGIC; 
  signal Mmult_P_PCIN30 : STD_LOGIC; 
  signal Mmult_P_PCIN31 : STD_LOGIC; 
  signal Mmult_P_PCIN32 : STD_LOGIC; 
  signal Mmult_P_PCIN33 : STD_LOGIC; 
  signal Mmult_P_PCIN34 : STD_LOGIC; 
  signal Mmult_P_PCIN35 : STD_LOGIC; 
  signal Mmult_P_PCIN36 : STD_LOGIC; 
  signal Mmult_P_PCIN37 : STD_LOGIC; 
  signal Mmult_P_PCIN38 : STD_LOGIC; 
  signal Mmult_P_PCIN39 : STD_LOGIC; 
  signal Mmult_P_PCIN40 : STD_LOGIC; 
  signal Mmult_P_PCIN41 : STD_LOGIC; 
  signal Mmult_P_PCIN42 : STD_LOGIC; 
  signal Mmult_P_PCIN43 : STD_LOGIC; 
  signal Mmult_P_PCIN44 : STD_LOGIC; 
  signal Mmult_P_PCIN45 : STD_LOGIC; 
  signal Mmult_P_PCIN46 : STD_LOGIC; 
  signal Mmult_P_PCIN47 : STD_LOGIC; 
  signal Mmult_P_RSTP_INT : STD_LOGIC; 
  signal Mmult_P_RSTA_INT : STD_LOGIC; 
  signal Mmult_P_CEA_INT : STD_LOGIC; 
  signal Mmult_P_CEP_INT : STD_LOGIC; 
  signal Mmult_P_CEB_INT : STD_LOGIC; 
  signal Mmult_P_CEM_INT : STD_LOGIC; 
  signal Mmult_P_RSTB_INT : STD_LOGIC; 
  signal Mmult_P_CLK_INT : STD_LOGIC; 
  signal Mmult_P_RSTM_INT : STD_LOGIC; 
  signal Mmult_P_RSTOPMODE_INT : STD_LOGIC; 
  signal Mmult_P_CEC_INT : STD_LOGIC; 
  signal Mmult_P_CEOPMODE_INT : STD_LOGIC; 
  signal Mmult_P_RSTD_INT : STD_LOGIC; 
  signal Mmult_P_CED_INT : STD_LOGIC; 
  signal Mmult_P_RSTCARRYIN_INT : STD_LOGIC; 
  signal Mmult_P_RSTC_INT : STD_LOGIC; 
  signal Mmult_P_CECARRYIN_INT : STD_LOGIC; 
  signal A_3_IBUF_276 : STD_LOGIC; 
  signal B_0_IBUF_279 : STD_LOGIC; 
  signal A_4_IBUF_282 : STD_LOGIC; 
  signal B_1_IBUF_285 : STD_LOGIC; 
  signal A_5_IBUF_288 : STD_LOGIC; 
  signal B_2_IBUF_291 : STD_LOGIC; 
  signal A_6_IBUF_294 : STD_LOGIC; 
  signal B_3_IBUF_297 : STD_LOGIC; 
  signal A_7_IBUF_300 : STD_LOGIC; 
  signal B_4_IBUF_303 : STD_LOGIC; 
  signal A_8_IBUF_306 : STD_LOGIC; 
  signal B_5_IBUF_309 : STD_LOGIC; 
  signal A_9_IBUF_312 : STD_LOGIC; 
  signal B_6_IBUF_317 : STD_LOGIC; 
  signal B_7_IBUF_322 : STD_LOGIC; 
  signal B_8_IBUF_327 : STD_LOGIC; 
  signal NlwBufferSignal_P_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_30_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_31_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_24_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_32_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_25_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_33_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_26_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_27_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_28_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_29_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_P_3_OBUF_I : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  B_9_IBUF : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_9_IBUF_1,
      I => B(9)
    );
  ProtoComp0_IMUX : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_9_IBUF_1,
      O => B_9_IBUF_0
    );
  P_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => NlwBufferSignal_P_4_OBUF_I,
      O => P(4)
    );
  P_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD1"
    )
    port map (
      I => NlwBufferSignal_P_5_OBUF_I,
      O => P(5)
    );
  P_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => NlwBufferSignal_P_6_OBUF_I,
      O => P(6)
    );
  P_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD183"
    )
    port map (
      I => NlwBufferSignal_P_7_OBUF_I,
      O => P(7)
    );
  P_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_P_8_OBUF_I,
      O => P(8)
    );
  P_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD189"
    )
    port map (
      I => NlwBufferSignal_P_9_OBUF_I,
      O => P(9)
    );
  A_10_IBUF : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_10_IBUF_16,
      I => A(10)
    );
  ProtoComp0_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_10_IBUF_16,
      O => A_10_IBUF_0
    );
  A_11_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_11_IBUF_19,
      I => A(11)
    );
  ProtoComp0_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_11_IBUF_19,
      O => A_11_IBUF_0
    );
  A_12_IBUF : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_12_IBUF_22,
      I => A(12)
    );
  ProtoComp0_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_12_IBUF_22,
      O => A_12_IBUF_0
    );
  A_13_IBUF : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_13_IBUF_25,
      I => A(13)
    );
  ProtoComp0_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_13_IBUF_25,
      O => A_13_IBUF_0
    );
  A_14_IBUF : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_14_IBUF_28,
      I => A(14)
    );
  ProtoComp0_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_14_IBUF_28,
      O => A_14_IBUF_0
    );
  A_15_IBUF : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_15_IBUF_31,
      I => A(15)
    );
  ProtoComp0_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_15_IBUF_31,
      O => A_15_IBUF_0
    );
  A_16_IBUF : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_16_IBUF_34,
      I => A(16)
    );
  ProtoComp0_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_16_IBUF_34,
      O => A_16_IBUF_0
    );
  B_10_IBUF : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_10_IBUF_37,
      I => B(10)
    );
  ProtoComp0_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_10_IBUF_37,
      O => B_10_IBUF_0
    );
  B_11_IBUF : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_11_IBUF_40,
      I => B(11)
    );
  ProtoComp0_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_11_IBUF_40,
      O => B_11_IBUF_0
    );
  B_12_IBUF : X_BUF
    generic map(
      LOC => "PAD232",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_12_IBUF_43,
      I => B(12)
    );
  ProtoComp0_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD232",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_12_IBUF_43,
      O => B_12_IBUF_0
    );
  B_13_IBUF : X_BUF
    generic map(
      LOC => "PAD251",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_13_IBUF_46,
      I => B(13)
    );
  ProtoComp0_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD251",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_13_IBUF_46,
      O => B_13_IBUF_0
    );
  B_14_IBUF : X_BUF
    generic map(
      LOC => "PAD252",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_14_IBUF_49,
      I => B(14)
    );
  ProtoComp0_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD252",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_14_IBUF_49,
      O => B_14_IBUF_0
    );
  B_15_IBUF : X_BUF
    generic map(
      LOC => "PAD253",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_15_IBUF_52,
      I => B(15)
    );
  ProtoComp0_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD253",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_15_IBUF_52,
      O => B_15_IBUF_0
    );
  B_16_IBUF : X_BUF
    generic map(
      LOC => "PAD254",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_16_IBUF_55,
      I => B(16)
    );
  ProtoComp0_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD254",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_16_IBUF_55,
      O => B_16_IBUF_0
    );
  P_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => NlwBufferSignal_P_10_OBUF_I,
      O => P(10)
    );
  P_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD195"
    )
    port map (
      I => NlwBufferSignal_P_11_OBUF_I,
      O => P(11)
    );
  P_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD196"
    )
    port map (
      I => NlwBufferSignal_P_12_OBUF_I,
      O => P(12)
    );
  P_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD206"
    )
    port map (
      I => NlwBufferSignal_P_20_OBUF_I,
      O => P(20)
    );
  P_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD197"
    )
    port map (
      I => NlwBufferSignal_P_13_OBUF_I,
      O => P(13)
    );
  P_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD207"
    )
    port map (
      I => NlwBufferSignal_P_21_OBUF_I,
      O => P(21)
    );
  P_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD198"
    )
    port map (
      I => NlwBufferSignal_P_14_OBUF_I,
      O => P(14)
    );
  P_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD208"
    )
    port map (
      I => NlwBufferSignal_P_22_OBUF_I,
      O => P(22)
    );
  P_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => NlwBufferSignal_P_30_OBUF_I,
      O => P(30)
    );
  P_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD201"
    )
    port map (
      I => NlwBufferSignal_P_15_OBUF_I,
      O => P(15)
    );
  P_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD209"
    )
    port map (
      I => NlwBufferSignal_P_23_OBUF_I,
      O => P(23)
    );
  P_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD219"
    )
    port map (
      I => NlwBufferSignal_P_31_OBUF_I,
      O => P(31)
    );
  P_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => NlwBufferSignal_P_16_OBUF_I,
      O => P(16)
    );
  P_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD210"
    )
    port map (
      I => NlwBufferSignal_P_24_OBUF_I,
      O => P(24)
    );
  P_32_OBUF : X_OBUF
    generic map(
      LOC => "PAD220"
    )
    port map (
      I => NlwBufferSignal_P_32_OBUF_I,
      O => P(32)
    );
  P_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD203"
    )
    port map (
      I => NlwBufferSignal_P_17_OBUF_I,
      O => P(17)
    );
  P_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD211"
    )
    port map (
      I => NlwBufferSignal_P_25_OBUF_I,
      O => P(25)
    );
  P_33_OBUF : X_OBUF
    generic map(
      LOC => "PAD221"
    )
    port map (
      I => NlwBufferSignal_P_33_OBUF_I,
      O => P(33)
    );
  P_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD204"
    )
    port map (
      I => NlwBufferSignal_P_18_OBUF_I,
      O => P(18)
    );
  P_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD212"
    )
    port map (
      I => NlwBufferSignal_P_26_OBUF_I,
      O => P(26)
    );
  A_0_IBUF : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_0_IBUF_98,
      I => A(0)
    );
  ProtoComp0_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_0_IBUF_98,
      O => A_0_IBUF_0
    );
  P_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD205"
    )
    port map (
      I => NlwBufferSignal_P_19_OBUF_I,
      O => P(19)
    );
  P_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD213"
    )
    port map (
      I => NlwBufferSignal_P_27_OBUF_I,
      O => P(27)
    );
  A_1_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_1_IBUF_105,
      I => A(1)
    );
  ProtoComp0_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_1_IBUF_105,
      O => A_1_IBUF_0
    );
  P_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD214"
    )
    port map (
      I => NlwBufferSignal_P_28_OBUF_I,
      O => P(28)
    );
  A_2_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_2_IBUF_110,
      I => A(2)
    );
  ProtoComp0_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_2_IBUF_110,
      O => A_2_IBUF_0
    );
  P_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => NlwBufferSignal_P_29_OBUF_I,
      O => P(29)
    );
  Mmult_P_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => Mmult_P_RSTP_INT
    );
  Mmult_P_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => Mmult_P_RSTA_INT
    );
  Mmult_P_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => Mmult_P_CEA_INT
    );
  Mmult_P_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => Mmult_P_CEP_INT
    );
  Mmult_P_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => Mmult_P_CEB_INT
    );
  Mmult_P_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => Mmult_P_CEM_INT
    );
  Mmult_P_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => Mmult_P_RSTB_INT
    );
  Mmult_P_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => Mmult_P_CLK_INT
    );
  Mmult_P_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => Mmult_P_RSTM_INT
    );
  Mmult_P_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => Mmult_P_RSTOPMODE_INT
    );
  Mmult_P_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => Mmult_P_CEC_INT
    );
  Mmult_P_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => Mmult_P_CEOPMODE_INT
    );
  Mmult_P_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => Mmult_P_RSTD_INT
    );
  Mmult_P_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => Mmult_P_CED_INT
    );
  Mmult_P_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => Mmult_P_RSTCARRYIN_INT
    );
  Mmult_P_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => Mmult_P_RSTC_INT
    );
  Mmult_P_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X1Y0",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => Mmult_P_CECARRYIN_INT
    );
  Mmult_P : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 0,
      OPMODEREG => 0,
      PREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X1Y0"
    )
    port map (
      CECARRYIN => Mmult_P_CECARRYIN_INT,
      RSTC => Mmult_P_RSTC_INT,
      RSTCARRYIN => Mmult_P_RSTCARRYIN_INT,
      CED => Mmult_P_CED_INT,
      RSTD => Mmult_P_RSTD_INT,
      CEOPMODE => Mmult_P_CEOPMODE_INT,
      CEC => Mmult_P_CEC_INT,
      RSTOPMODE => Mmult_P_RSTOPMODE_INT,
      RSTM => Mmult_P_RSTM_INT,
      CLK => Mmult_P_CLK_INT,
      RSTB => Mmult_P_RSTB_INT,
      CEM => Mmult_P_CEM_INT,
      CEB => Mmult_P_CEB_INT,
      CARRYIN => GND,
      CEP => Mmult_P_CEP_INT,
      CEA => Mmult_P_CEA_INT,
      RSTA => Mmult_P_RSTA_INT,
      RSTP => Mmult_P_RSTP_INT,
      CARRYOUTF => Mmult_P_CARRYOUTF,
      CARRYOUT => Mmult_P_CARRYOUT,
      B(17) => GND,
      B(16) => A_16_IBUF_0,
      B(15) => A_15_IBUF_0,
      B(14) => A_14_IBUF_0,
      B(13) => A_13_IBUF_0,
      B(12) => A_12_IBUF_0,
      B(11) => A_11_IBUF_0,
      B(10) => A_10_IBUF_0,
      B(9) => A_9_IBUF_0,
      B(8) => A_8_IBUF_0,
      B(7) => A_7_IBUF_0,
      B(6) => A_6_IBUF_0,
      B(5) => A_5_IBUF_0,
      B(4) => A_4_IBUF_0,
      B(3) => A_3_IBUF_0,
      B(2) => A_2_IBUF_0,
      B(1) => A_1_IBUF_0,
      B(0) => A_0_IBUF_0,
      PCIN(47) => Mmult_P_PCIN47,
      PCIN(46) => Mmult_P_PCIN46,
      PCIN(45) => Mmult_P_PCIN45,
      PCIN(44) => Mmult_P_PCIN44,
      PCIN(43) => Mmult_P_PCIN43,
      PCIN(42) => Mmult_P_PCIN42,
      PCIN(41) => Mmult_P_PCIN41,
      PCIN(40) => Mmult_P_PCIN40,
      PCIN(39) => Mmult_P_PCIN39,
      PCIN(38) => Mmult_P_PCIN38,
      PCIN(37) => Mmult_P_PCIN37,
      PCIN(36) => Mmult_P_PCIN36,
      PCIN(35) => Mmult_P_PCIN35,
      PCIN(34) => Mmult_P_PCIN34,
      PCIN(33) => Mmult_P_PCIN33,
      PCIN(32) => Mmult_P_PCIN32,
      PCIN(31) => Mmult_P_PCIN31,
      PCIN(30) => Mmult_P_PCIN30,
      PCIN(29) => Mmult_P_PCIN29,
      PCIN(28) => Mmult_P_PCIN28,
      PCIN(27) => Mmult_P_PCIN27,
      PCIN(26) => Mmult_P_PCIN26,
      PCIN(25) => Mmult_P_PCIN25,
      PCIN(24) => Mmult_P_PCIN24,
      PCIN(23) => Mmult_P_PCIN23,
      PCIN(22) => Mmult_P_PCIN22,
      PCIN(21) => Mmult_P_PCIN21,
      PCIN(20) => Mmult_P_PCIN20,
      PCIN(19) => Mmult_P_PCIN19,
      PCIN(18) => Mmult_P_PCIN18,
      PCIN(17) => Mmult_P_PCIN17,
      PCIN(16) => Mmult_P_PCIN16,
      PCIN(15) => Mmult_P_PCIN15,
      PCIN(14) => Mmult_P_PCIN14,
      PCIN(13) => Mmult_P_PCIN13,
      PCIN(12) => Mmult_P_PCIN12,
      PCIN(11) => Mmult_P_PCIN11,
      PCIN(10) => Mmult_P_PCIN10,
      PCIN(9) => Mmult_P_PCIN9,
      PCIN(8) => Mmult_P_PCIN8,
      PCIN(7) => Mmult_P_PCIN7,
      PCIN(6) => Mmult_P_PCIN6,
      PCIN(5) => Mmult_P_PCIN5,
      PCIN(4) => Mmult_P_PCIN4,
      PCIN(3) => Mmult_P_PCIN3,
      PCIN(2) => Mmult_P_PCIN2,
      PCIN(1) => Mmult_P_PCIN1,
      PCIN(0) => Mmult_P_PCIN0,
      C(47) => GND,
      C(46) => GND,
      C(45) => GND,
      C(44) => GND,
      C(43) => GND,
      C(42) => GND,
      C(41) => GND,
      C(40) => GND,
      C(39) => GND,
      C(38) => GND,
      C(37) => GND,
      C(36) => GND,
      C(35) => GND,
      C(34) => GND,
      C(33) => GND,
      C(32) => GND,
      C(31) => GND,
      C(30) => GND,
      C(29) => GND,
      C(28) => GND,
      C(27) => GND,
      C(26) => GND,
      C(25) => GND,
      C(24) => GND,
      C(23) => GND,
      C(22) => GND,
      C(21) => GND,
      C(20) => GND,
      C(19) => GND,
      C(18) => GND,
      C(17) => GND,
      C(16) => GND,
      C(15) => GND,
      C(14) => GND,
      C(13) => GND,
      C(12) => GND,
      C(11) => GND,
      C(10) => GND,
      C(9) => GND,
      C(8) => GND,
      C(7) => GND,
      C(6) => GND,
      C(5) => GND,
      C(4) => GND,
      C(3) => GND,
      C(2) => GND,
      C(1) => GND,
      C(0) => GND,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => GND,
      OPMODE(2) => GND,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => GND,
      A(16) => B_16_IBUF_0,
      A(15) => B_15_IBUF_0,
      A(14) => B_14_IBUF_0,
      A(13) => B_13_IBUF_0,
      A(12) => B_12_IBUF_0,
      A(11) => B_11_IBUF_0,
      A(10) => B_10_IBUF_0,
      A(9) => B_9_IBUF_0,
      A(8) => B_8_IBUF_0,
      A(7) => B_7_IBUF_0,
      A(6) => B_6_IBUF_0,
      A(5) => B_5_IBUF_0,
      A(4) => B_4_IBUF_0,
      A(3) => B_3_IBUF_0,
      A(2) => B_2_IBUF_0,
      A(1) => B_1_IBUF_0,
      A(0) => B_0_IBUF_0,
      BCIN(17) => Mmult_P_BCIN17,
      BCIN(16) => Mmult_P_BCIN16,
      BCIN(15) => Mmult_P_BCIN15,
      BCIN(14) => Mmult_P_BCIN14,
      BCIN(13) => Mmult_P_BCIN13,
      BCIN(12) => Mmult_P_BCIN12,
      BCIN(11) => Mmult_P_BCIN11,
      BCIN(10) => Mmult_P_BCIN10,
      BCIN(9) => Mmult_P_BCIN9,
      BCIN(8) => Mmult_P_BCIN8,
      BCIN(7) => Mmult_P_BCIN7,
      BCIN(6) => Mmult_P_BCIN6,
      BCIN(5) => Mmult_P_BCIN5,
      BCIN(4) => Mmult_P_BCIN4,
      BCIN(3) => Mmult_P_BCIN3,
      BCIN(2) => Mmult_P_BCIN2,
      BCIN(1) => Mmult_P_BCIN1,
      BCIN(0) => Mmult_P_BCIN0,
      BCOUT(17) => Mmult_P_BCOUT17,
      BCOUT(16) => Mmult_P_BCOUT16,
      BCOUT(15) => Mmult_P_BCOUT15,
      BCOUT(14) => Mmult_P_BCOUT14,
      BCOUT(13) => Mmult_P_BCOUT13,
      BCOUT(12) => Mmult_P_BCOUT12,
      BCOUT(11) => Mmult_P_BCOUT11,
      BCOUT(10) => Mmult_P_BCOUT10,
      BCOUT(9) => Mmult_P_BCOUT9,
      BCOUT(8) => Mmult_P_BCOUT8,
      BCOUT(7) => Mmult_P_BCOUT7,
      BCOUT(6) => Mmult_P_BCOUT6,
      BCOUT(5) => Mmult_P_BCOUT5,
      BCOUT(4) => Mmult_P_BCOUT4,
      BCOUT(3) => Mmult_P_BCOUT3,
      BCOUT(2) => Mmult_P_BCOUT2,
      BCOUT(1) => Mmult_P_BCOUT1,
      BCOUT(0) => Mmult_P_BCOUT0,
      P(47) => Mmult_P_P47,
      P(46) => Mmult_P_P46,
      P(45) => Mmult_P_P45,
      P(44) => Mmult_P_P44,
      P(43) => Mmult_P_P43,
      P(42) => Mmult_P_P42,
      P(41) => Mmult_P_P41,
      P(40) => Mmult_P_P40,
      P(39) => Mmult_P_P39,
      P(38) => Mmult_P_P38,
      P(37) => Mmult_P_P37,
      P(36) => Mmult_P_P36,
      P(35) => Mmult_P_P35,
      P(34) => Mmult_P_P34,
      P(33) => Mmult_P_P33,
      P(32) => Mmult_P_P32,
      P(31) => Mmult_P_P31,
      P(30) => Mmult_P_P30,
      P(29) => Mmult_P_P29,
      P(28) => Mmult_P_P28,
      P(27) => Mmult_P_P27,
      P(26) => Mmult_P_P26,
      P(25) => Mmult_P_P25,
      P(24) => Mmult_P_P24,
      P(23) => Mmult_P_P23,
      P(22) => Mmult_P_P22,
      P(21) => Mmult_P_P21,
      P(20) => Mmult_P_P20,
      P(19) => Mmult_P_P19,
      P(18) => Mmult_P_P18,
      P(17) => Mmult_P_P17,
      P(16) => Mmult_P_P16,
      P(15) => Mmult_P_P15,
      P(14) => Mmult_P_P14,
      P(13) => Mmult_P_P13,
      P(12) => Mmult_P_P12,
      P(11) => Mmult_P_P11,
      P(10) => Mmult_P_P10,
      P(9) => Mmult_P_P9,
      P(8) => Mmult_P_P8,
      P(7) => Mmult_P_P7,
      P(6) => Mmult_P_P6,
      P(5) => Mmult_P_P5,
      P(4) => Mmult_P_P4,
      P(3) => Mmult_P_P3,
      P(2) => Mmult_P_P2,
      P(1) => Mmult_P_P1,
      P(0) => Mmult_P_P0,
      PCOUT(47) => Mmult_P_PCOUT47,
      PCOUT(46) => Mmult_P_PCOUT46,
      PCOUT(45) => Mmult_P_PCOUT45,
      PCOUT(44) => Mmult_P_PCOUT44,
      PCOUT(43) => Mmult_P_PCOUT43,
      PCOUT(42) => Mmult_P_PCOUT42,
      PCOUT(41) => Mmult_P_PCOUT41,
      PCOUT(40) => Mmult_P_PCOUT40,
      PCOUT(39) => Mmult_P_PCOUT39,
      PCOUT(38) => Mmult_P_PCOUT38,
      PCOUT(37) => Mmult_P_PCOUT37,
      PCOUT(36) => Mmult_P_PCOUT36,
      PCOUT(35) => Mmult_P_PCOUT35,
      PCOUT(34) => Mmult_P_PCOUT34,
      PCOUT(33) => Mmult_P_PCOUT33,
      PCOUT(32) => Mmult_P_PCOUT32,
      PCOUT(31) => Mmult_P_PCOUT31,
      PCOUT(30) => Mmult_P_PCOUT30,
      PCOUT(29) => Mmult_P_PCOUT29,
      PCOUT(28) => Mmult_P_PCOUT28,
      PCOUT(27) => Mmult_P_PCOUT27,
      PCOUT(26) => Mmult_P_PCOUT26,
      PCOUT(25) => Mmult_P_PCOUT25,
      PCOUT(24) => Mmult_P_PCOUT24,
      PCOUT(23) => Mmult_P_PCOUT23,
      PCOUT(22) => Mmult_P_PCOUT22,
      PCOUT(21) => Mmult_P_PCOUT21,
      PCOUT(20) => Mmult_P_PCOUT20,
      PCOUT(19) => Mmult_P_PCOUT19,
      PCOUT(18) => Mmult_P_PCOUT18,
      PCOUT(17) => Mmult_P_PCOUT17,
      PCOUT(16) => Mmult_P_PCOUT16,
      PCOUT(15) => Mmult_P_PCOUT15,
      PCOUT(14) => Mmult_P_PCOUT14,
      PCOUT(13) => Mmult_P_PCOUT13,
      PCOUT(12) => Mmult_P_PCOUT12,
      PCOUT(11) => Mmult_P_PCOUT11,
      PCOUT(10) => Mmult_P_PCOUT10,
      PCOUT(9) => Mmult_P_PCOUT9,
      PCOUT(8) => Mmult_P_PCOUT8,
      PCOUT(7) => Mmult_P_PCOUT7,
      PCOUT(6) => Mmult_P_PCOUT6,
      PCOUT(5) => Mmult_P_PCOUT5,
      PCOUT(4) => Mmult_P_PCOUT4,
      PCOUT(3) => Mmult_P_PCOUT3,
      PCOUT(2) => Mmult_P_PCOUT2,
      PCOUT(1) => Mmult_P_PCOUT1,
      PCOUT(0) => Mmult_P_PCOUT0,
      M(35) => Mmult_P_M35,
      M(34) => Mmult_P_M34,
      M(33) => P_33_OBUF_437,
      M(32) => P_32_OBUF_434,
      M(31) => P_31_OBUF_431,
      M(30) => P_30_OBUF_428,
      M(29) => P_29_OBUF_446,
      M(28) => P_28_OBUF_444,
      M(27) => P_27_OBUF_442,
      M(26) => P_26_OBUF_439,
      M(25) => P_25_OBUF_436,
      M(24) => P_24_OBUF_433,
      M(23) => P_23_OBUF_430,
      M(22) => P_22_OBUF_427,
      M(21) => P_21_OBUF_425,
      M(20) => P_20_OBUF_423,
      M(19) => P_19_OBUF_441,
      M(18) => P_18_OBUF_438,
      M(17) => P_17_OBUF_435,
      M(16) => P_16_OBUF_432,
      M(15) => P_15_OBUF_429,
      M(14) => P_14_OBUF_426,
      M(13) => P_13_OBUF_424,
      M(12) => P_12_OBUF_422,
      M(11) => P_11_OBUF_421,
      M(10) => P_10_OBUF_420,
      M(9) => P_9_OBUF_405,
      M(8) => P_8_OBUF_404,
      M(7) => P_7_OBUF_403,
      M(6) => P_6_OBUF_402,
      M(5) => P_5_OBUF_401,
      M(4) => P_4_OBUF_400,
      M(3) => P_3_OBUF_468,
      M(2) => P_2_OBUF_467,
      M(1) => P_1_OBUF_466,
      M(0) => P_0_OBUF_465
    );
  A_3_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_3_IBUF_276,
      I => A(3)
    );
  ProtoComp0_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_3_IBUF_276,
      O => A_3_IBUF_0
    );
  B_0_IBUF : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_0_IBUF_279,
      I => B(0)
    );
  ProtoComp0_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_0_IBUF_279,
      O => B_0_IBUF_0
    );
  A_4_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_4_IBUF_282,
      I => A(4)
    );
  ProtoComp0_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_4_IBUF_282,
      O => A_4_IBUF_0
    );
  B_1_IBUF : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_1_IBUF_285,
      I => B(1)
    );
  ProtoComp0_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_1_IBUF_285,
      O => B_1_IBUF_0
    );
  A_5_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_5_IBUF_288,
      I => A(5)
    );
  ProtoComp0_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_5_IBUF_288,
      O => A_5_IBUF_0
    );
  B_2_IBUF : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_2_IBUF_291,
      I => B(2)
    );
  ProtoComp0_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_2_IBUF_291,
      O => B_2_IBUF_0
    );
  A_6_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_6_IBUF_294,
      I => A(6)
    );
  ProtoComp0_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_6_IBUF_294,
      O => A_6_IBUF_0
    );
  B_3_IBUF : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_3_IBUF_297,
      I => B(3)
    );
  ProtoComp0_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD337",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_3_IBUF_297,
      O => B_3_IBUF_0
    );
  A_7_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_7_IBUF_300,
      I => A(7)
    );
  ProtoComp0_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_7_IBUF_300,
      O => A_7_IBUF_0
    );
  B_4_IBUF : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_4_IBUF_303,
      I => B(4)
    );
  ProtoComp0_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_4_IBUF_303,
      O => B_4_IBUF_0
    );
  A_8_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_8_IBUF_306,
      I => A(8)
    );
  ProtoComp0_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_8_IBUF_306,
      O => A_8_IBUF_0
    );
  B_5_IBUF : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_5_IBUF_309,
      I => B(5)
    );
  ProtoComp0_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_5_IBUF_309,
      O => B_5_IBUF_0
    );
  A_9_IBUF : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_9_IBUF_312,
      I => A(9)
    );
  ProtoComp0_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_9_IBUF_312,
      O => A_9_IBUF_0
    );
  P_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => NlwBufferSignal_P_0_OBUF_I,
      O => P(0)
    );
  B_6_IBUF : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_6_IBUF_317,
      I => B(6)
    );
  ProtoComp0_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_6_IBUF_317,
      O => B_6_IBUF_0
    );
  P_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => NlwBufferSignal_P_1_OBUF_I,
      O => P(1)
    );
  B_7_IBUF : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_7_IBUF_322,
      I => B(7)
    );
  ProtoComp0_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_7_IBUF_322,
      O => B_7_IBUF_0
    );
  P_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => NlwBufferSignal_P_2_OBUF_I,
      O => P(2)
    );
  B_8_IBUF : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_8_IBUF_327,
      I => B(8)
    );
  ProtoComp0_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_8_IBUF_327,
      O => B_8_IBUF_0
    );
  P_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => NlwBufferSignal_P_3_OBUF_I,
      O => P(3)
    );
  NlwBufferBlock_P_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_4_OBUF_400,
      O => NlwBufferSignal_P_4_OBUF_I
    );
  NlwBufferBlock_P_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_5_OBUF_401,
      O => NlwBufferSignal_P_5_OBUF_I
    );
  NlwBufferBlock_P_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_6_OBUF_402,
      O => NlwBufferSignal_P_6_OBUF_I
    );
  NlwBufferBlock_P_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_7_OBUF_403,
      O => NlwBufferSignal_P_7_OBUF_I
    );
  NlwBufferBlock_P_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_8_OBUF_404,
      O => NlwBufferSignal_P_8_OBUF_I
    );
  NlwBufferBlock_P_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_9_OBUF_405,
      O => NlwBufferSignal_P_9_OBUF_I
    );
  NlwBufferBlock_P_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_10_OBUF_420,
      O => NlwBufferSignal_P_10_OBUF_I
    );
  NlwBufferBlock_P_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_11_OBUF_421,
      O => NlwBufferSignal_P_11_OBUF_I
    );
  NlwBufferBlock_P_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_12_OBUF_422,
      O => NlwBufferSignal_P_12_OBUF_I
    );
  NlwBufferBlock_P_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_20_OBUF_423,
      O => NlwBufferSignal_P_20_OBUF_I
    );
  NlwBufferBlock_P_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_13_OBUF_424,
      O => NlwBufferSignal_P_13_OBUF_I
    );
  NlwBufferBlock_P_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_21_OBUF_425,
      O => NlwBufferSignal_P_21_OBUF_I
    );
  NlwBufferBlock_P_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_14_OBUF_426,
      O => NlwBufferSignal_P_14_OBUF_I
    );
  NlwBufferBlock_P_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_22_OBUF_427,
      O => NlwBufferSignal_P_22_OBUF_I
    );
  NlwBufferBlock_P_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_30_OBUF_428,
      O => NlwBufferSignal_P_30_OBUF_I
    );
  NlwBufferBlock_P_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_15_OBUF_429,
      O => NlwBufferSignal_P_15_OBUF_I
    );
  NlwBufferBlock_P_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_23_OBUF_430,
      O => NlwBufferSignal_P_23_OBUF_I
    );
  NlwBufferBlock_P_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_31_OBUF_431,
      O => NlwBufferSignal_P_31_OBUF_I
    );
  NlwBufferBlock_P_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_16_OBUF_432,
      O => NlwBufferSignal_P_16_OBUF_I
    );
  NlwBufferBlock_P_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_24_OBUF_433,
      O => NlwBufferSignal_P_24_OBUF_I
    );
  NlwBufferBlock_P_32_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_32_OBUF_434,
      O => NlwBufferSignal_P_32_OBUF_I
    );
  NlwBufferBlock_P_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_17_OBUF_435,
      O => NlwBufferSignal_P_17_OBUF_I
    );
  NlwBufferBlock_P_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_25_OBUF_436,
      O => NlwBufferSignal_P_25_OBUF_I
    );
  NlwBufferBlock_P_33_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_33_OBUF_437,
      O => NlwBufferSignal_P_33_OBUF_I
    );
  NlwBufferBlock_P_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_18_OBUF_438,
      O => NlwBufferSignal_P_18_OBUF_I
    );
  NlwBufferBlock_P_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_26_OBUF_439,
      O => NlwBufferSignal_P_26_OBUF_I
    );
  NlwBufferBlock_P_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_19_OBUF_441,
      O => NlwBufferSignal_P_19_OBUF_I
    );
  NlwBufferBlock_P_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_27_OBUF_442,
      O => NlwBufferSignal_P_27_OBUF_I
    );
  NlwBufferBlock_P_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_28_OBUF_444,
      O => NlwBufferSignal_P_28_OBUF_I
    );
  NlwBufferBlock_P_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_29_OBUF_446,
      O => NlwBufferSignal_P_29_OBUF_I
    );
  NlwBufferBlock_P_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_0_OBUF_465,
      O => NlwBufferSignal_P_0_OBUF_I
    );
  NlwBufferBlock_P_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_1_OBUF_466,
      O => NlwBufferSignal_P_1_OBUF_I
    );
  NlwBufferBlock_P_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_2_OBUF_467,
      O => NlwBufferSignal_P_2_OBUF_I
    );
  NlwBufferBlock_P_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => P_3_OBUF_468,
      O => NlwBufferSignal_P_3_OBUF_I
    );
  NlwBlock_multiplicador_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_multiplicador_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

