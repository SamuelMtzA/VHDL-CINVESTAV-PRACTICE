--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: Recep_timesim.vhd
-- /___/   /\     Timestamp: Wed Oct 03 19:01:51 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf Recep.pcf -rpw 100 -tpw 0 -ar Structure -tm Recep -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Recep.ncd Recep_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-03-26)
-- Input file	: Recep.ncd
-- Output file	: C:\Users\Samuel\Desktop\Practicas_FPGa_nexys2\RECEPT\netgen\par\Recep_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Recep
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

entity Recep is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    rx : in STD_LOGIC := 'X'; 
    leds : inout STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end Recep;

architecture Structure of Recep is
  signal Q_n0120_inv : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal rx_IBUF_0 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal Q_n0080_0 : STD_LOGIC; 
  signal erx_433 : STD_LOGIC; 
  signal leds_0_436 : STD_LOGIC; 
  signal leds_1_437 : STD_LOGIC; 
  signal leds_3_GND_5_o_equal_19_o41_438 : STD_LOGIC; 
  signal f_439 : STD_LOGIC; 
  signal leds_3_GND_5_o_equal_19_o4 : STD_LOGIC; 
  signal leds_3_444 : STD_LOGIC; 
  signal leds_2_445 : STD_LOGIC; 
  signal f_inv : STD_LOGIC; 
  signal erx_G : STD_LOGIC; 
  signal rst_erx_OR_9_o : STD_LOGIC; 
  signal Mcount_cntrx_lut_0_Q_449 : STD_LOGIC; 
  signal cntrx_10_GND_5_o_equal_3_o_inv : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal Mcount_cntrx_cy_3_Q_456 : STD_LOGIC; 
  signal Mcount_cntrx_cy_7_Q_460 : STD_LOGIC; 
  signal Mcount_clkdiv_cy_3_Q_465 : STD_LOGIC; 
  signal Mcount_clkdiv_cy_7_Q_470 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal rst_GND_5_o_AND_2_o_bdd0 : STD_LOGIC; 
  signal f_D_481 : STD_LOGIC; 
  signal erx_D_482 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal Mcount_cntrx_lut_0_rt_32 : STD_LOGIC; 
  signal cntrx_1_rt_27 : STD_LOGIC; 
  signal Mcount_cntrx_lut_2_Q_19 : STD_LOGIC; 
  signal Mcount_cntrx : STD_LOGIC; 
  signal Mcount_cntrx1 : STD_LOGIC; 
  signal Mcount_cntrx2 : STD_LOGIC; 
  signal Mcount_cntrx3 : STD_LOGIC; 
  signal Mcount_cntrx_lut_3_Q_3 : STD_LOGIC; 
  signal Mcount_cntrx_lut_4_Q_70 : STD_LOGIC; 
  signal Mcount_cntrx_lut_5_Q_61 : STD_LOGIC; 
  signal cntrx_6_rt_56 : STD_LOGIC; 
  signal Mcount_cntrx4 : STD_LOGIC; 
  signal Mcount_cntrx5 : STD_LOGIC; 
  signal Mcount_cntrx6 : STD_LOGIC; 
  signal Mcount_cntrx7 : STD_LOGIC; 
  signal Mcount_cntrx_lut_7_Q_40 : STD_LOGIC; 
  signal Mcount_cntrx_lut_8_Q_84 : STD_LOGIC; 
  signal Mcount_cntrx8 : STD_LOGIC; 
  signal clkdiv_1_rt_108 : STD_LOGIC; 
  signal clkdiv_2_rt_104 : STD_LOGIC; 
  signal ProtoComp9_CYINITGND_0 : STD_LOGIC; 
  signal clkdiv_3_rt_93 : STD_LOGIC; 
  signal clkdiv_4_rt_140 : STD_LOGIC; 
  signal clkdiv_5_rt_136 : STD_LOGIC; 
  signal clkdiv_6_rt_132 : STD_LOGIC; 
  signal clkdiv_7_rt_121 : STD_LOGIC; 
  signal clkdiv_8_rt_152 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_155 : STD_LOGIC; 
  signal rx_IBUF_166 : STD_LOGIC; 
  signal rst_IBUF_169 : STD_LOGIC; 
  signal Mcount_leds2 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal leds_3_GND_5_o_equal_19_o41_pack_15 : STD_LOGIC; 
  signal Mcount_leds1 : STD_LOGIC; 
  signal Mcount_leds : STD_LOGIC; 
  signal leds_0_pack_13 : STD_LOGIC; 
  signal Mcount_leds3 : STD_LOGIC; 
  signal trx_3_dpot1_308 : STD_LOGIC; 
  signal trx_4_dpot1_300 : STD_LOGIC; 
  signal Q_n0080 : STD_LOGIC; 
  signal f_D_pack_3 : STD_LOGIC; 
  signal erx_D_pack_2 : STD_LOGIC; 
  signal regrx_0_pack_3 : STD_LOGIC; 
  signal regrx_2_pack_5 : STD_LOGIC; 
  signal N18_pack_14 : STD_LOGIC; 
  signal trx_0_rstpot_381 : STD_LOGIC; 
  signal trx_1_rstpot_380 : STD_LOGIC; 
  signal trx_2_rstpot_366 : STD_LOGIC; 
  signal NlwBufferSignal_cntrx_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntrx_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntrx_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntrx_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntrx_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntrx_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntrx_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntrx_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cntrx_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_leds_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_leds_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_leds_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_leds_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_leds_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_leds_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_leds_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_leds_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_modu_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_modu_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_modu_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_modu_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_modu_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_modu_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_modu_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_modu_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_trx_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_trx_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_f_CLK : STD_LOGIC; 
  signal NlwBufferSignal_f_IN : STD_LOGIC; 
  signal NlwBufferSignal_erx_CLK : STD_LOGIC; 
  signal NlwBufferSignal_erx_IN : STD_LOGIC; 
  signal NlwBufferSignal_regrx_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_regrx_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_regrx_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_regrx_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_trx_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_trx_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_trx_0_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Mcount_cntrx_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cntrx_10_2_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_cntrx_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cntrx_10_7_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_cntrx_xor_8_S_3_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_cntrx_10_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cntrx_10_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_cntrx_10_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_cntrx_10_17_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cntrx_10_16_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_cntrx_10_15_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_cntrx_10_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_clkdiv_xor_8_S_3_UNCONNECTED : STD_LOGIC; 
  signal regrx : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal trx : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal cntrx : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal modu : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal clkdiv : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Mcount_clkdiv_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Q_n0091 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  cntrx_3 : X_FF
    generic map(
      LOC => "SLICE_X32Y85",
      INIT => '0'
    )
    port map (
      CE => erx_433,
      CLK => NlwBufferSignal_cntrx_3_CLK,
      I => Mcount_cntrx3,
      O => cntrx(3),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  Mcount_cntrx_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y85",
      INIT => X"FFFFFFDF00000000"
    )
    port map (
      ADR0 => cntrx(5),
      ADR2 => cntrx(8),
      ADR1 => cntrx(6),
      ADR5 => cntrx(3),
      ADR3 => N6,
      ADR4 => N01,
      O => Mcount_cntrx_lut_3_Q_3
    );
  cntrx_2 : X_FF
    generic map(
      LOC => "SLICE_X32Y85",
      INIT => '0'
    )
    port map (
      CE => erx_433,
      CLK => NlwBufferSignal_cntrx_2_CLK,
      I => Mcount_cntrx2,
      O => cntrx(2),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  Mcount_cntrx_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y85"
    )
    port map (
      CI => '0',
      CYINIT => cntrx_10_GND_5_o_equal_3_o_inv,
      CO(3) => Mcount_cntrx_cy_3_Q_456,
      CO(2) => NLW_Mcount_cntrx_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_cntrx_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_cntrx_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_cntrx3,
      O(2) => Mcount_cntrx2,
      O(1) => Mcount_cntrx1,
      O(0) => Mcount_cntrx,
      S(3) => Mcount_cntrx_lut_3_Q_3,
      S(2) => Mcount_cntrx_lut_2_Q_19,
      S(1) => cntrx_1_rt_27,
      S(0) => Mcount_cntrx_lut_0_rt_32
    );
  Mcount_cntrx_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y85",
      INIT => X"FFFF0000FFBF0000"
    )
    port map (
      ADR1 => cntrx(5),
      ADR2 => cntrx(8),
      ADR0 => cntrx(6),
      ADR4 => cntrx(2),
      ADR3 => N6,
      ADR5 => N01,
      O => Mcount_cntrx_lut_2_Q_19
    );
  cntrx_1 : X_FF
    generic map(
      LOC => "SLICE_X32Y85",
      INIT => '0'
    )
    port map (
      CE => erx_433,
      CLK => NlwBufferSignal_cntrx_1_CLK,
      I => Mcount_cntrx1,
      O => cntrx(1),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  cntrx_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X32Y85",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cntrx(1),
      ADR3 => '1',
      ADR5 => '1',
      O => cntrx_1_rt_27
    );
  cntrx_10_2_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X32Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_cntrx_10_2_B5LUT_O_UNCONNECTED
    );
  cntrx_0 : X_FF
    generic map(
      LOC => "SLICE_X32Y85",
      INIT => '0'
    )
    port map (
      CE => erx_433,
      CLK => NlwBufferSignal_cntrx_0_CLK,
      I => Mcount_cntrx,
      O => cntrx(0),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  Mcount_cntrx_lut_0_rt : X_LUT6
    generic map(
      LOC => "SLICE_X32Y85",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Mcount_cntrx_lut_0_Q_449,
      ADR5 => '1',
      O => Mcount_cntrx_lut_0_rt_32
    );
  cntrx_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X32Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_cntrx_10_A5LUT_O_UNCONNECTED
    );
  cntrx_7 : X_FF
    generic map(
      LOC => "SLICE_X32Y86",
      INIT => '0'
    )
    port map (
      CE => erx_433,
      CLK => NlwBufferSignal_cntrx_7_CLK,
      I => Mcount_cntrx7,
      O => cntrx(7),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  Mcount_cntrx_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y86",
      INIT => X"FFFDFFFF00000000"
    )
    port map (
      ADR0 => cntrx(5),
      ADR4 => cntrx(8),
      ADR1 => cntrx(6),
      ADR5 => cntrx(7),
      ADR2 => N6,
      ADR3 => N01,
      O => Mcount_cntrx_lut_7_Q_40
    );
  cntrx_6 : X_FF
    generic map(
      LOC => "SLICE_X32Y86",
      INIT => '0'
    )
    port map (
      CE => erx_433,
      CLK => NlwBufferSignal_cntrx_6_CLK,
      I => Mcount_cntrx6,
      O => cntrx(6),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  Mcount_cntrx_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y86"
    )
    port map (
      CI => Mcount_cntrx_cy_3_Q_456,
      CYINIT => '0',
      CO(3) => Mcount_cntrx_cy_7_Q_460,
      CO(2) => NLW_Mcount_cntrx_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_cntrx_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_cntrx_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Mcount_cntrx7,
      O(2) => Mcount_cntrx6,
      O(1) => Mcount_cntrx5,
      O(0) => Mcount_cntrx4,
      S(3) => Mcount_cntrx_lut_7_Q_40,
      S(2) => cntrx_6_rt_56,
      S(1) => Mcount_cntrx_lut_5_Q_61,
      S(0) => Mcount_cntrx_lut_4_Q_70
    );
  cntrx_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X32Y86",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cntrx(6),
      ADR3 => '1',
      ADR5 => '1',
      O => cntrx_6_rt_56
    );
  cntrx_10_7_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X32Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_cntrx_10_7_C5LUT_O_UNCONNECTED
    );
  cntrx_5 : X_FF
    generic map(
      LOC => "SLICE_X32Y86",
      INIT => '0'
    )
    port map (
      CE => erx_433,
      CLK => NlwBufferSignal_cntrx_5_CLK,
      I => Mcount_cntrx5,
      O => cntrx(5),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  Mcount_cntrx_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y86",
      INIT => X"FFFF0000FFDF0000"
    )
    port map (
      ADR2 => cntrx(0),
      ADR1 => cntrx(1),
      ADR0 => cntrx(8),
      ADR4 => cntrx(5),
      ADR3 => cntrx(6),
      ADR5 => N01,
      O => Mcount_cntrx_lut_5_Q_61
    );
  cntrx_4 : X_FF
    generic map(
      LOC => "SLICE_X32Y86",
      INIT => '0'
    )
    port map (
      CE => erx_433,
      CLK => NlwBufferSignal_cntrx_4_CLK,
      I => Mcount_cntrx4,
      O => cntrx(4),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  Mcount_cntrx_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y86",
      INIT => X"AAAAAAAAAAAAAA2A"
    )
    port map (
      ADR1 => cntrx(5),
      ADR2 => cntrx(8),
      ADR3 => cntrx(6),
      ADR0 => cntrx(4),
      ADR5 => N6,
      ADR4 => N01,
      O => Mcount_cntrx_lut_4_Q_70
    );
  Mcount_cntrx_xor_8_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y87"
    )
    port map (
      CI => Mcount_cntrx_cy_7_Q_460,
      CYINIT => '0',
      CO(3) => NLW_Mcount_cntrx_xor_8_CO_3_UNCONNECTED,
      CO(2) => NLW_Mcount_cntrx_xor_8_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_cntrx_xor_8_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_cntrx_xor_8_CO_0_UNCONNECTED,
      DI(3) => NLW_Mcount_cntrx_xor_8_DI_3_UNCONNECTED,
      DI(2) => NLW_Mcount_cntrx_xor_8_DI_2_UNCONNECTED,
      DI(1) => NLW_Mcount_cntrx_xor_8_DI_1_UNCONNECTED,
      DI(0) => NLW_Mcount_cntrx_xor_8_DI_0_UNCONNECTED,
      O(3) => NLW_Mcount_cntrx_xor_8_O_3_UNCONNECTED,
      O(2) => NLW_Mcount_cntrx_xor_8_O_2_UNCONNECTED,
      O(1) => NLW_Mcount_cntrx_xor_8_O_1_UNCONNECTED,
      O(0) => Mcount_cntrx8,
      S(3) => NLW_Mcount_cntrx_xor_8_S_3_UNCONNECTED,
      S(2) => NLW_Mcount_cntrx_xor_8_S_2_UNCONNECTED,
      S(1) => NLW_Mcount_cntrx_xor_8_S_1_UNCONNECTED,
      S(0) => Mcount_cntrx_lut_8_Q_84
    );
  cntrx_8 : X_FF
    generic map(
      LOC => "SLICE_X32Y87",
      INIT => '0'
    )
    port map (
      CE => erx_433,
      CLK => NlwBufferSignal_cntrx_8_CLK,
      I => Mcount_cntrx8,
      O => cntrx(8),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  Mcount_cntrx_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y87",
      INIT => X"AAAAAAAAAA8AAAAA"
    )
    port map (
      ADR2 => cntrx(0),
      ADR1 => cntrx(1),
      ADR4 => cntrx(5),
      ADR0 => cntrx(8),
      ADR3 => cntrx(6),
      ADR5 => N01,
      O => Mcount_cntrx_lut_8_Q_84
    );
  clkdiv_3 : X_FF
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_3_CLK,
      I => Result(3),
      O => clkdiv(3),
      RST => rst_IBUF_0,
      SET => GND
    );
  clkdiv_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => clkdiv(3),
      ADR3 => '1',
      ADR5 => '1',
      O => clkdiv_3_rt_93
    );
  cntrx_10_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_cntrx_10_13_D5LUT_O_UNCONNECTED
    );
  ProtoComp9_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X30Y84"
    )
    port map (
      O => ProtoComp9_CYINITGND_0
    );
  clkdiv_2 : X_FF
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_2_CLK,
      I => Result(2),
      O => clkdiv(2),
      RST => rst_IBUF_0,
      SET => GND
    );
  Mcount_clkdiv_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y84"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp9_CYINITGND_0,
      CO(3) => Mcount_clkdiv_cy_3_Q_465,
      CO(2) => NLW_Mcount_clkdiv_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_clkdiv_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_clkdiv_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Result(3),
      O(2) => Result(2),
      O(1) => Result(1),
      O(0) => Result(0),
      S(3) => clkdiv_3_rt_93,
      S(2) => clkdiv_2_rt_104,
      S(1) => clkdiv_1_rt_108,
      S(0) => Mcount_clkdiv_lut(0)
    );
  clkdiv_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => clkdiv(2),
      ADR3 => '1',
      ADR5 => '1',
      O => clkdiv_2_rt_104
    );
  cntrx_10_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_cntrx_10_12_C5LUT_O_UNCONNECTED
    );
  clkdiv_1 : X_FF
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_1_CLK,
      I => Result(1),
      O => clkdiv(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  clkdiv_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => clkdiv(1),
      ADR3 => '1',
      ADR5 => '1',
      O => clkdiv_1_rt_108
    );
  cntrx_10_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_cntrx_10_11_B5LUT_O_UNCONNECTED
    );
  clkdiv_0 : X_FF
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_0_CLK,
      I => Result(0),
      O => clkdiv(0),
      RST => rst_IBUF_0,
      SET => GND
    );
  Mcount_clkdiv_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => clkdiv(0),
      ADR3 => '1',
      ADR5 => '1',
      O => Mcount_clkdiv_lut(0)
    );
  N0_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y84",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_A5LUT_O_UNCONNECTED
    );
  clkdiv_7 : X_FF
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_7_CLK,
      I => Result(7),
      O => clkdiv(7),
      RST => rst_IBUF_0,
      SET => GND
    );
  clkdiv_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => clkdiv(7),
      ADR3 => '1',
      ADR5 => '1',
      O => clkdiv_7_rt_121
    );
  cntrx_10_17_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_cntrx_10_17_D5LUT_O_UNCONNECTED
    );
  clkdiv_6 : X_FF
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_6_CLK,
      I => Result(6),
      O => clkdiv(6),
      RST => rst_IBUF_0,
      SET => GND
    );
  Mcount_clkdiv_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y85"
    )
    port map (
      CI => Mcount_clkdiv_cy_3_Q_465,
      CYINIT => '0',
      CO(3) => Mcount_clkdiv_cy_7_Q_470,
      CO(2) => NLW_Mcount_clkdiv_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_clkdiv_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_clkdiv_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(7),
      O(2) => Result(6),
      O(1) => Result(5),
      O(0) => Result(4),
      S(3) => clkdiv_7_rt_121,
      S(2) => clkdiv_6_rt_132,
      S(1) => clkdiv_5_rt_136,
      S(0) => clkdiv_4_rt_140
    );
  clkdiv_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => clkdiv(6),
      ADR3 => '1',
      ADR5 => '1',
      O => clkdiv_6_rt_132
    );
  cntrx_10_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_cntrx_10_16_C5LUT_O_UNCONNECTED
    );
  clkdiv_5 : X_FF
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_5_CLK,
      I => Result(5),
      O => clkdiv(5),
      RST => rst_IBUF_0,
      SET => GND
    );
  clkdiv_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => clkdiv(5),
      ADR3 => '1',
      ADR5 => '1',
      O => clkdiv_5_rt_136
    );
  cntrx_10_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_cntrx_10_15_B5LUT_O_UNCONNECTED
    );
  clkdiv_4 : X_FF
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_4_CLK,
      I => Result(4),
      O => clkdiv(4),
      RST => rst_IBUF_0,
      SET => GND
    );
  clkdiv_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => clkdiv(4),
      ADR3 => '1',
      ADR5 => '1',
      O => clkdiv_4_rt_140
    );
  cntrx_10_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_cntrx_10_14_A5LUT_O_UNCONNECTED
    );
  Mcount_clkdiv_xor_8_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y86"
    )
    port map (
      CI => Mcount_clkdiv_cy_7_Q_470,
      CYINIT => '0',
      CO(3) => NLW_Mcount_clkdiv_xor_8_CO_3_UNCONNECTED,
      CO(2) => NLW_Mcount_clkdiv_xor_8_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_clkdiv_xor_8_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_clkdiv_xor_8_CO_0_UNCONNECTED,
      DI(3) => NLW_Mcount_clkdiv_xor_8_DI_3_UNCONNECTED,
      DI(2) => NLW_Mcount_clkdiv_xor_8_DI_2_UNCONNECTED,
      DI(1) => NLW_Mcount_clkdiv_xor_8_DI_1_UNCONNECTED,
      DI(0) => NLW_Mcount_clkdiv_xor_8_DI_0_UNCONNECTED,
      O(3) => NLW_Mcount_clkdiv_xor_8_O_3_UNCONNECTED,
      O(2) => NLW_Mcount_clkdiv_xor_8_O_2_UNCONNECTED,
      O(1) => NLW_Mcount_clkdiv_xor_8_O_1_UNCONNECTED,
      O(0) => Result(8),
      S(3) => NLW_Mcount_clkdiv_xor_8_S_3_UNCONNECTED,
      S(2) => NLW_Mcount_clkdiv_xor_8_S_2_UNCONNECTED,
      S(1) => NLW_Mcount_clkdiv_xor_8_S_1_UNCONNECTED,
      S(0) => clkdiv_8_rt_152
    );
  clkdiv_8 : X_FF
    generic map(
      LOC => "SLICE_X30Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_8_CLK,
      I => Result(8),
      O => clkdiv(8),
      RST => rst_IBUF_0,
      SET => GND
    );
  clkdiv_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y86",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => clkdiv(8),
      ADR4 => '1',
      ADR3 => '1',
      O => clkdiv_8_rt_152
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 115 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_155,
      I => clk
    );
  ProtoComp12_IMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_155,
      O => clk_BUFGP_IBUFG_0
    );
  leds_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => NlwBufferSignal_leds_0_OBUF_I,
      O => leds(0)
    );
  leds_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => NlwBufferSignal_leds_1_OBUF_I,
      O => leds(1)
    );
  leds_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => NlwBufferSignal_leds_2_OBUF_I,
      O => leds(2)
    );
  leds_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => NlwBufferSignal_leds_3_OBUF_I,
      O => leds(3)
    );
  rx_IBUF : X_BUF
    generic map(
      LOC => "PAD46",
      PATHPULSE => 115 ps
    )
    port map (
      O => rx_IBUF_166,
      I => rx
    );
  ProtoComp12_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD46",
      PATHPULSE => 115 ps
    )
    port map (
      I => rx_IBUF_166,
      O => rx_IBUF_0
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 115 ps
    )
    port map (
      O => rst_IBUF_169,
      I => rst
    );
  ProtoComp12_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 115 ps
    )
    port map (
      I => rst_IBUF_169,
      O => rst_IBUF_0
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y4",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  leds_3_GND_5_o_equal_19_o43_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y77",
      INIT => X"F08822440FFFFFFF"
    )
    port map (
      ADR1 => modu(0),
      ADR0 => modu(1),
      ADR5 => leds_3_444,
      ADR4 => leds_1_437,
      ADR2 => leds_2_445,
      ADR3 => leds_0_436,
      O => N26
    );
  leds_2_leds_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_3_GND_5_o_equal_19_o41_pack_15,
      O => leds_3_GND_5_o_equal_19_o41_438
    );
  leds_2_leds_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_0_pack_13,
      O => leds_0_436
    );
  Mcount_leds_xor_2_11 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y78"
    )
    port map (
      IA => N35,
      IB => N36,
      O => Mcount_leds2,
      SEL => leds_3_GND_5_o_equal_19_o41_438
    );
  Mcount_leds_xor_2_11_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"0F0DF0F0F0F0F0F0"
    )
    port map (
      ADR2 => leds_2_445,
      ADR5 => leds_1_437,
      ADR4 => leds_0_436,
      ADR0 => leds_3_GND_5_o_equal_19_o4,
      ADR3 => modu(0),
      ADR1 => modu(1),
      O => N35
    );
  leds_2 : X_FF
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => '0'
    )
    port map (
      CE => f_439,
      CLK => NlwBufferSignal_leds_2_CLK,
      I => Mcount_leds2,
      O => leds_2_445,
      RST => f_inv,
      SET => GND
    );
  Mcount_leds_xor_2_11_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"1E57A0801E57A0A0"
    )
    port map (
      ADR2 => leds_1_437,
      ADR1 => modu(1),
      ADR3 => modu(0),
      ADR4 => leds_2_445,
      ADR0 => leds_0_436,
      ADR5 => leds_3_GND_5_o_equal_19_o4,
      O => N36
    );
  leds_3_GND_5_o_equal_19_o41 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"1144882211448822"
    )
    port map (
      ADR2 => '1',
      ADR0 => modu(2),
      ADR1 => modu(3),
      ADR3 => leds_3_444,
      ADR4 => leds_2_445,
      ADR5 => '1',
      O => leds_3_GND_5_o_equal_19_o4
    );
  leds_3_GND_5_o_equal_19_o42 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"88224411"
    )
    port map (
      ADR2 => '1',
      ADR0 => modu(2),
      ADR1 => modu(3),
      ADR3 => leds_3_444,
      ADR4 => leds_2_445,
      O => leds_3_GND_5_o_equal_19_o41_pack_15
    );
  leds_1 : X_FF
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => '0'
    )
    port map (
      CE => f_439,
      CLK => NlwBufferSignal_leds_1_CLK,
      I => Mcount_leds1,
      O => leds_1_437,
      RST => f_inv,
      SET => GND
    );
  Mcount_leds_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"15558AAA15558AAA"
    )
    port map (
      ADR3 => modu(1),
      ADR1 => modu(0),
      ADR0 => leds_0_436,
      ADR4 => leds_1_437,
      ADR2 => leds_3_GND_5_o_equal_19_o41_438,
      ADR5 => '1',
      O => Mcount_leds1
    );
  Mcount_leds_xor_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => X"15555515"
    )
    port map (
      ADR3 => modu(1),
      ADR1 => modu(0),
      ADR0 => leds_0_436,
      ADR4 => leds_1_437,
      ADR2 => leds_3_GND_5_o_equal_19_o41_438,
      O => Mcount_leds
    );
  leds_0 : X_FF
    generic map(
      LOC => "SLICE_X32Y78",
      INIT => '0'
    )
    port map (
      CE => f_439,
      CLK => NlwBufferSignal_leds_0_CLK,
      I => Mcount_leds,
      O => leds_0_pack_13,
      RST => f_inv,
      SET => GND
    );
  leds_3_GND_5_o_equal_19_o43_SW6 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"E1A841285F7FFFFF"
    )
    port map (
      ADR3 => modu(0),
      ADR1 => modu(1),
      ADR5 => leds_3_444,
      ADR0 => leds_0_436,
      ADR4 => leds_2_445,
      ADR2 => leds_1_437,
      O => N27
    );
  leds_3_GND_5_o_equal_19_o43_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"C0C000003F3FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR5 => leds_3_444,
      ADR2 => leds_2_445,
      ADR1 => leds_1_437,
      ADR4 => leds_0_436,
      O => N24
    );
  leds_3_GND_5_o_equal_19_o43_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"AB57555555555555"
    )
    port map (
      ADR2 => modu(0),
      ADR1 => modu(1),
      ADR0 => leds_3_444,
      ADR5 => leds_0_436,
      ADR4 => leds_1_437,
      ADR3 => leds_2_445,
      O => N25
    );
  leds_3 : X_FF
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => '0'
    )
    port map (
      CE => f_439,
      CLK => NlwBufferSignal_leds_3_CLK,
      I => Mcount_leds3,
      O => leds_3_444,
      RST => f_inv,
      SET => GND
    );
  Mcount_leds_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y78",
      INIT => X"0A5F0A5F1111BBBB"
    )
    port map (
      ADR0 => leds_3_GND_5_o_equal_19_o4,
      ADR5 => leds_3_GND_5_o_equal_19_o41_438,
      ADR1 => N24,
      ADR2 => N27,
      ADR3 => N26,
      ADR4 => N25,
      O => Mcount_leds3
    );
  modu_3 : X_FF
    generic map(
      LOC => "SLICE_X33Y85",
      INIT => '0'
    )
    port map (
      CE => Q_n0080_0,
      CLK => NlwBufferSignal_modu_3_CLK,
      I => NlwBufferSignal_modu_3_IN,
      O => modu(3),
      RST => rst_IBUF_0,
      SET => GND
    );
  modu_2 : X_FF
    generic map(
      LOC => "SLICE_X33Y85",
      INIT => '0'
    )
    port map (
      CE => Q_n0080_0,
      CLK => NlwBufferSignal_modu_2_CLK,
      I => NlwBufferSignal_modu_2_IN,
      O => modu(2),
      RST => rst_IBUF_0,
      SET => GND
    );
  cntrx_10_GND_5_o_equal_3_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y85",
      INIT => X"FFFFFFFFFFFFFF7F"
    )
    port map (
      ADR1 => cntrx(0),
      ADR3 => cntrx(1),
      ADR2 => cntrx(8),
      ADR0 => cntrx(5),
      ADR4 => cntrx(6),
      ADR5 => N01,
      O => cntrx_10_GND_5_o_equal_3_o_inv
    );
  modu_1 : X_FF
    generic map(
      LOC => "SLICE_X33Y85",
      INIT => '0'
    )
    port map (
      CE => Q_n0080_0,
      CLK => NlwBufferSignal_modu_1_CLK,
      I => NlwBufferSignal_modu_1_IN,
      O => modu(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  cntrx_10_GND_5_o_equal_3_o_10_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y85",
      INIT => X"FFFFFFFFFFFFFFCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => cntrx(4),
      ADR3 => cntrx(2),
      ADR5 => cntrx(7),
      ADR1 => cntrx(3),
      O => N01
    );
  modu_0 : X_FF
    generic map(
      LOC => "SLICE_X33Y85",
      INIT => '0'
    )
    port map (
      CE => Q_n0080_0,
      CLK => NlwBufferSignal_modu_0_CLK,
      I => NlwBufferSignal_modu_0_IN,
      O => modu(0),
      RST => rst_IBUF_0,
      SET => GND
    );
  Mcount_cntrx_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X33Y85",
      INIT => X"AAAAAA8AAAAAAAAA"
    )
    port map (
      ADR0 => cntrx(0),
      ADR1 => cntrx(1),
      ADR5 => cntrx(8),
      ADR2 => cntrx(5),
      ADR3 => cntrx(6),
      ADR4 => N01,
      O => Mcount_cntrx_lut_0_Q_449
    );
  trx_4_trx_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Q_n0080,
      O => Q_n0080_0
    );
  Q_n0120_inv21 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y86",
      INIT => X"0402080404020804"
    )
    port map (
      ADR2 => trx(4),
      ADR1 => trx(2),
      ADR3 => trx(0),
      ADR0 => trx(3),
      ADR4 => trx(1),
      ADR5 => '1',
      O => Q_n0120_inv
    );
  Q_n00801 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y86",
      INIT => X"00200000"
    )
    port map (
      ADR2 => trx(4),
      ADR1 => trx(2),
      ADR3 => trx(0),
      ADR0 => trx(3),
      ADR4 => trx(1),
      O => Q_n0080
    );
  trx_4_dpot1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y86",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR1 => cntrx(8),
      ADR0 => erx_433,
      ADR2 => trx(3),
      ADR3 => trx(0),
      ADR4 => trx(1),
      ADR5 => trx(2),
      O => N33
    );
  trx_4 : X_FF
    generic map(
      LOC => "SLICE_X33Y86",
      INIT => '0'
    )
    port map (
      CE => cntrx(5),
      CLK => NlwBufferSignal_trx_4_CLK,
      I => trx_4_dpot1_300,
      O => trx(4),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  trx_4_dpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y86",
      INIT => X"F0F0F0F0F0F0F0B4"
    )
    port map (
      ADR1 => cntrx(0),
      ADR0 => cntrx(1),
      ADR3 => cntrx(6),
      ADR2 => trx(4),
      ADR4 => N01,
      ADR5 => N33,
      O => trx_4_dpot1_300
    );
  trx_3 : X_FF
    generic map(
      LOC => "SLICE_X33Y86",
      INIT => '0'
    )
    port map (
      CE => cntrx(5),
      CLK => NlwBufferSignal_trx_3_CLK,
      I => trx_3_dpot1_308,
      O => trx(3),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  trx_3_dpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y86",
      INIT => X"FF00FF00FF00DF20"
    )
    port map (
      ADR0 => trx(2),
      ADR2 => cntrx(0),
      ADR1 => cntrx(1),
      ADR3 => trx(3),
      ADR5 => N31,
      ADR4 => N01,
      O => trx_3_dpot1_308
    );
  f_f_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => f_D_pack_3,
      O => f_D_481
    );
  f_G : X_LUT6
    generic map(
      LOC => "SLICE_X33Y87",
      INIT => X"FFFFAAFFFFFFAAFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => rx_IBUF_0,
      ADR0 => rst_IBUF_0,
      ADR4 => rst_GND_5_o_AND_2_o_bdd0,
      ADR5 => '1',
      O => erx_G
    );
  f_D : X_LUT5
    generic map(
      LOC => "SLICE_X33Y87",
      INIT => X"55000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => rx_IBUF_0,
      ADR0 => rst_IBUF_0,
      ADR4 => rst_GND_5_o_AND_2_o_bdd0,
      O => f_D_pack_3
    );
  f : X_LATCHE
    generic map(
      LOC => "SLICE_X33Y87",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_f_CLK,
      I => NlwBufferSignal_f_IN,
      O => f_439,
      RST => GND,
      SET => GND
    );
  rst_GND_5_o_AND_2_o41 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y87",
      INIT => X"0080000000000000"
    )
    port map (
      ADR2 => trx(0),
      ADR0 => rx_IBUF_0,
      ADR1 => trx(1),
      ADR3 => trx(2),
      ADR5 => trx(3),
      ADR4 => trx(4),
      O => rst_GND_5_o_AND_2_o_bdd0
    );
  erx_erx_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => erx_D_pack_2,
      O => erx_D_482
    );
  rst_erx_OR_9_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y88",
      INIT => X"F5F5F5F5F5F5F5F5"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => erx_433,
      ADR2 => rst_IBUF_0,
      ADR5 => '1',
      O => rst_erx_OR_9_o
    );
  erx_D : X_LUT5
    generic map(
      LOC => "SLICE_X33Y88",
      INIT => X"00000F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => rx_IBUF_0,
      ADR3 => '1',
      ADR2 => rst_IBUF_0,
      O => erx_D_pack_2
    );
  erx : X_LATCHE
    generic map(
      LOC => "SLICE_X33Y88",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_erx_CLK,
      I => NlwBufferSignal_erx_IN,
      O => erx_433,
      RST => GND,
      SET => GND
    );
  f_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y78",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => f_439,
      O => f_inv
    );
  regrx_3_regrx_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => regrx_2_pack_5,
      O => regrx(2)
    );
  regrx_3_regrx_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => regrx_0_pack_3,
      O => regrx(0)
    );
  regrx_3 : X_FF
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => '0'
    )
    port map (
      CE => Q_n0120_inv,
      CLK => NlwBufferSignal_regrx_3_CLK,
      I => Q_n0091(3),
      O => regrx(3),
      RST => rst_IBUF_0,
      SET => GND
    );
  Mmux_n009141 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => X"FF3FC000FF3FC000"
    )
    port map (
      ADR0 => '1',
      ADR1 => trx(2),
      ADR2 => trx(3),
      ADR4 => regrx(3),
      ADR3 => rx_IBUF_0,
      ADR5 => '1',
      O => Q_n0091(3)
    );
  Mmux_n009131 : X_LUT5
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => X"BA8ABA8A"
    )
    port map (
      ADR0 => regrx(2),
      ADR1 => trx(2),
      ADR2 => trx(3),
      ADR4 => '1',
      ADR3 => rx_IBUF_0,
      O => Q_n0091(2)
    );
  regrx_2 : X_FF
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => '0'
    )
    port map (
      CE => Q_n0120_inv,
      CLK => NlwBufferSignal_regrx_2_CLK,
      I => Q_n0091(2),
      O => regrx_2_pack_5,
      RST => rst_IBUF_0,
      SET => GND
    );
  regrx_1 : X_FF
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => '0'
    )
    port map (
      CE => Q_n0120_inv,
      CLK => NlwBufferSignal_regrx_1_CLK,
      I => Q_n0091(1),
      O => regrx(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  Mmux_n009121 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => X"FFF300C0FFF300C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => trx(3),
      ADR1 => trx(1),
      ADR4 => regrx(1),
      ADR2 => rx_IBUF_0,
      ADR5 => '1',
      O => Q_n0091(1)
    );
  Mmux_n009111 : X_LUT5
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => X"AAB8AAB8"
    )
    port map (
      ADR0 => regrx(0),
      ADR3 => trx(3),
      ADR1 => trx(1),
      ADR4 => '1',
      ADR2 => rx_IBUF_0,
      O => Q_n0091(0)
    );
  regrx_0 : X_FF
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => '0'
    )
    port map (
      CE => Q_n0120_inv,
      CLK => NlwBufferSignal_regrx_0_CLK,
      I => Q_n0091(0),
      O => regrx_0_pack_3,
      RST => rst_IBUF_0,
      SET => GND
    );
  cntrx_10_GND_5_o_equal_3_o_10_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => X"FF00FFFFFF00FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => cntrx(0),
      ADR3 => cntrx(1),
      O => N6
    );
  trx_2_trx_2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N18_pack_14,
      O => N18
    );
  cntrx_10_GND_5_o_equal_3_o_10_SW6 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => X"FF7FFF7FFF7FFF7F"
    )
    port map (
      ADR4 => '1',
      ADR3 => cntrx(6),
      ADR2 => cntrx(8),
      ADR1 => cntrx(5),
      ADR0 => erx_433,
      ADR5 => '1',
      O => N16
    );
  cntrx_10_GND_5_o_equal_3_o_10_SW7 : X_LUT5
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => X"FF7FFFFF"
    )
    port map (
      ADR4 => trx(0),
      ADR3 => cntrx(6),
      ADR2 => cntrx(8),
      ADR1 => cntrx(5),
      ADR0 => erx_433,
      O => N18_pack_14
    );
  trx_2 : X_FF
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_trx_2_CLK,
      I => trx_2_rstpot_366,
      O => trx(2),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  trx_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => X"FFFF0000FFBF0040"
    )
    port map (
      ADR1 => trx(1),
      ADR2 => cntrx(0),
      ADR0 => cntrx(1),
      ADR4 => trx(2),
      ADR3 => N18,
      ADR5 => N01,
      O => trx_2_rstpot_366
    );
  trx_1 : X_FF
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_trx_1_CLK,
      I => trx_1_rstpot_380,
      O => trx(1),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  trx_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => X"F0F0F0B4F0F0F0F0"
    )
    port map (
      ADR1 => trx(0),
      ADR5 => cntrx(0),
      ADR3 => cntrx(1),
      ADR2 => trx(1),
      ADR0 => N16,
      ADR4 => N01,
      O => trx_1_rstpot_380
    );
  trx_0 : X_FF
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_trx_0_CLK,
      I => trx_0_rstpot_381,
      O => trx(0),
      RST => rst_erx_OR_9_o,
      SET => GND
    );
  trx_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => X"FF00FF00EF10FF00"
    )
    port map (
      ADR4 => cntrx(0),
      ADR0 => cntrx(1),
      ADR2 => cntrx(8),
      ADR3 => trx(0),
      ADR5 => N14,
      ADR1 => N01,
      O => trx_0_rstpot_381
    );
  cntrx_10_GND_5_o_equal_3_o_10_rstpot_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y86",
      INIT => X"FFFFFFFF5FFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => trx(1),
      ADR5 => cntrx(6),
      ADR3 => trx(0),
      ADR4 => cntrx(8),
      ADR0 => erx_433,
      O => N31
    );
  cntrx_10_GND_5_o_equal_3_o_10_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y86",
      INIT => X"FFFF0F0FFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => cntrx(5),
      ADR2 => erx_433,
      ADR4 => cntrx(6),
      O => N14
    );
  NlwBufferBlock_cntrx_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cntrx_3_CLK
    );
  NlwBufferBlock_cntrx_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cntrx_2_CLK
    );
  NlwBufferBlock_cntrx_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cntrx_1_CLK
    );
  NlwBufferBlock_cntrx_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cntrx_0_CLK
    );
  NlwBufferBlock_cntrx_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cntrx_7_CLK
    );
  NlwBufferBlock_cntrx_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cntrx_6_CLK
    );
  NlwBufferBlock_cntrx_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cntrx_5_CLK
    );
  NlwBufferBlock_cntrx_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cntrx_4_CLK
    );
  NlwBufferBlock_cntrx_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cntrx_8_CLK
    );
  NlwBufferBlock_clkdiv_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_clkdiv_3_CLK
    );
  NlwBufferBlock_clkdiv_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_clkdiv_2_CLK
    );
  NlwBufferBlock_clkdiv_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_clkdiv_1_CLK
    );
  NlwBufferBlock_clkdiv_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_clkdiv_0_CLK
    );
  NlwBufferBlock_clkdiv_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_clkdiv_7_CLK
    );
  NlwBufferBlock_clkdiv_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_clkdiv_6_CLK
    );
  NlwBufferBlock_clkdiv_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_clkdiv_5_CLK
    );
  NlwBufferBlock_clkdiv_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_clkdiv_4_CLK
    );
  NlwBufferBlock_clkdiv_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_clkdiv_8_CLK
    );
  NlwBufferBlock_leds_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_0_436,
      O => NlwBufferSignal_leds_0_OBUF_I
    );
  NlwBufferBlock_leds_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_1_437,
      O => NlwBufferSignal_leds_1_OBUF_I
    );
  NlwBufferBlock_leds_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_2_445,
      O => NlwBufferSignal_leds_2_OBUF_I
    );
  NlwBufferBlock_leds_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_3_444,
      O => NlwBufferSignal_leds_3_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_leds_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clkdiv(8),
      O => NlwBufferSignal_leds_2_CLK
    );
  NlwBufferBlock_leds_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clkdiv(8),
      O => NlwBufferSignal_leds_1_CLK
    );
  NlwBufferBlock_leds_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clkdiv(8),
      O => NlwBufferSignal_leds_0_CLK
    );
  NlwBufferBlock_leds_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clkdiv(8),
      O => NlwBufferSignal_leds_3_CLK
    );
  NlwBufferBlock_modu_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_modu_3_CLK
    );
  NlwBufferBlock_modu_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => regrx(3),
      O => NlwBufferSignal_modu_3_IN
    );
  NlwBufferBlock_modu_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_modu_2_CLK
    );
  NlwBufferBlock_modu_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => regrx(2),
      O => NlwBufferSignal_modu_2_IN
    );
  NlwBufferBlock_modu_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_modu_1_CLK
    );
  NlwBufferBlock_modu_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => regrx(1),
      O => NlwBufferSignal_modu_1_IN
    );
  NlwBufferBlock_modu_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_modu_0_CLK
    );
  NlwBufferBlock_modu_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => regrx(0),
      O => NlwBufferSignal_modu_0_IN
    );
  NlwBufferBlock_trx_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_trx_4_CLK
    );
  NlwBufferBlock_trx_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_trx_3_CLK
    );
  NlwBufferBlock_f_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => erx_G,
      O => NlwBufferSignal_f_CLK
    );
  NlwBufferBlock_f_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => f_D_481,
      O => NlwBufferSignal_f_IN
    );
  NlwBufferBlock_erx_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => erx_G,
      O => NlwBufferSignal_erx_CLK
    );
  NlwBufferBlock_erx_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => erx_D_482,
      O => NlwBufferSignal_erx_IN
    );
  NlwBufferBlock_regrx_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_regrx_3_CLK
    );
  NlwBufferBlock_regrx_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_regrx_2_CLK
    );
  NlwBufferBlock_regrx_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_regrx_1_CLK
    );
  NlwBufferBlock_regrx_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_regrx_0_CLK
    );
  NlwBufferBlock_trx_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_trx_2_CLK
    );
  NlwBufferBlock_trx_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_trx_1_CLK
    );
  NlwBufferBlock_trx_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_trx_0_CLK
    );
  NlwBlock_Recep_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_Recep_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

