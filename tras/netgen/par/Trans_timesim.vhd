--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: Trans_timesim.vhd
-- /___/   /\     Timestamp: Tue Oct 02 18:57:07 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf Trans.pcf -rpw 100 -tpw 0 -ar Structure -tm Trans -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Trans.ncd Trans_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-03-26)
-- Input file	: Trans.ncd
-- Output file	: C:\Users\Samuel\Desktop\Practicas_FPGa_nexys2\tras\netgen\par\Trans_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Trans
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

entity Trans is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    tx : out STD_LOGIC 
  );
end Trans;

architecture Structure of Trans is
  signal cnttx_0_563 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_0_0 : STD_LOGIC; 
  signal cnttx_1_565 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_1_0 : STD_LOGIC; 
  signal cnttx_2_567 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_2_0 : STD_LOGIC; 
  signal Madd_cnttx_15_GND_5_o_add_1_OUT_cy_3_Q_569 : STD_LOGIC; 
  signal cnttx_3_570 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_3_0 : STD_LOGIC; 
  signal cnttx_4 : STD_LOGIC; 
  signal cnttx_13_LD_574 : STD_LOGIC; 
  signal cnttx_4_P_4_575 : STD_LOGIC; 
  signal cnttx_4_C_4_576 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_4_0 : STD_LOGIC; 
  signal cnttx_5 : STD_LOGIC; 
  signal cnttx_5_P_5_579 : STD_LOGIC; 
  signal cnttx_5_C_5_580 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_5_0 : STD_LOGIC; 
  signal cnttx_6_582 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_6_0 : STD_LOGIC; 
  signal Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_Q_584 : STD_LOGIC; 
  signal cnttx_7 : STD_LOGIC; 
  signal cnttx_7_P_7_586 : STD_LOGIC; 
  signal cnttx_7_C_7_587 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_7_0 : STD_LOGIC; 
  signal cnttx_8_589 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_8_0 : STD_LOGIC; 
  signal cnttx_9_591 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_9_0 : STD_LOGIC; 
  signal cnttx_10_593 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_10_0 : STD_LOGIC; 
  signal Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_Q_595 : STD_LOGIC; 
  signal cnttx_11 : STD_LOGIC; 
  signal cnttx_11_P_11_597 : STD_LOGIC; 
  signal cnttx_11_C_11_598 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_11_0 : STD_LOGIC; 
  signal cnttx_12_600 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_12_0 : STD_LOGIC; 
  signal cnttx_13 : STD_LOGIC; 
  signal cnttx_13_P_13_603 : STD_LOGIC; 
  signal cnttx_13_C_13_604 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_13_0 : STD_LOGIC; 
  signal Result_0_0 : STD_LOGIC; 
  signal Result_1_0 : STD_LOGIC; 
  signal Result_2_0 : STD_LOGIC; 
  signal Result_3_0 : STD_LOGIC; 
  signal Result_4_0 : STD_LOGIC; 
  signal Result_5_0 : STD_LOGIC; 
  signal Result_6_0 : STD_LOGIC; 
  signal Result_7_0 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal tx_OBUF_624 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal Mmux_tx311_0 : STD_LOGIC; 
  signal Mmux_tx314_0 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_equal_3_o_15_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_equal_3_o_15_1_633 : STD_LOGIC; 
  signal caracter_7_rst_OR_42_o_634 : STD_LOGIC; 
  signal Q_n0123_inv1_635 : STD_LOGIC; 
  signal Q_n0123_inv2_636 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_equal_3_o_15_21 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_5_Q : STD_LOGIC; 
  signal Mmux_tx315_641 : STD_LOGIC; 
  signal Mmux_tx34_642 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_11_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_equal_3_o_15_1_rstpot_644 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_4_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_7_Q : STD_LOGIC; 
  signal ttx_2_dpot_650 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_13_Q : STD_LOGIC; 
  signal Mmux_tx31 : STD_LOGIC; 
  signal Mmux_tx32_653 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_equal_3_o_15_2_656 : STD_LOGIC; 
  signal ttx_3_dpot_657 : STD_LOGIC; 
  signal Mmux_tx33_658 : STD_LOGIC; 
  signal ttx_0_dpot_659 : STD_LOGIC; 
  signal ttx_1_dpot_660 : STD_LOGIC; 
  signal Mmux_tx35_661 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal cnttx_6_rt_11 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_4_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_5_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_6_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_7_Q : STD_LOGIC; 
  signal cnttx_8_rt_45 : STD_LOGIC; 
  signal cnttx_9_rt_42 : STD_LOGIC; 
  signal cnttx_10_rt_39 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_8_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_9_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_10_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_11_Q : STD_LOGIC; 
  signal cnttx_12_rt_59 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_12_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_13_Q : STD_LOGIC; 
  signal caracter_1_rt_75 : STD_LOGIC; 
  signal caracter_2_rt_72 : STD_LOGIC; 
  signal ProtoComp0_CYINITGND_0 : STD_LOGIC; 
  signal caracter_3_rt_63 : STD_LOGIC; 
  signal caracter_4_rt_98 : STD_LOGIC; 
  signal caracter_5_rt_95 : STD_LOGIC; 
  signal caracter_6_rt_92 : STD_LOGIC; 
  signal caracter_7_rt_85 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_105 : STD_LOGIC; 
  signal rst_IBUF_110 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_12_Q : STD_LOGIC; 
  signal caracter_1_dpot_153 : STD_LOGIC; 
  signal caracter_0_dpot_141 : STD_LOGIC; 
  signal caracter_4_dpot_194 : STD_LOGIC; 
  signal caracter_3_dpot_184 : STD_LOGIC; 
  signal caracter_2_dpot_171 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_equal_3_o_15_pack_4 : STD_LOGIC; 
  signal ProtoComp46_CYINITGND_0 : STD_LOGIC; 
  signal cnttx_3_rt_242 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_3_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_0_Q : STD_LOGIC; 
  signal Madd_cnttx_15_GND_5_o_add_1_OUT_lut_0_Q : STD_LOGIC; 
  signal cnttx_1_rt_230 : STD_LOGIC; 
  signal cnttx_2_rt_227 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_2_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_add_1_OUT_1_Q : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal Mmux_tx311 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_8_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_9_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_10_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_6_Q : STD_LOGIC; 
  signal caracter_5_dpot_356 : STD_LOGIC; 
  signal caracter_6_dpot_346 : STD_LOGIC; 
  signal caracter_7_dpot_340 : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_0_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_1_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_2_Q : STD_LOGIC; 
  signal cnttx_15_GND_5_o_mux_9_OUT_3_Q : STD_LOGIC; 
  signal ttx_3_dpot1_433 : STD_LOGIC; 
  signal ttx_2_dpot1_424 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal Mmux_tx314 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal ttx_0_dpot1_525 : STD_LOGIC; 
  signal ttx_1_dpot1_513 : STD_LOGIC; 
  signal NlwBufferSignal_tx_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_caracter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_caracter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_caracter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_caracter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_caracter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_7_C_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_11_C_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_11_C_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_4_C_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_4_C_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_5_C_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_5_C_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_11_P_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_7_P_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_7_P_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_13_P_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_4_P_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_5_P_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_13_LD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_caracter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_caracter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_caracter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ttx_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ttx_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_13_C_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cnttx_13_C_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_ttx_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ttx_0_CLK : STD_LOGIC; 
  signal NLW_Mram_n01127_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_8_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_19_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_caracter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_caracter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_caracter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_18_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_17_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_caracter_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_caracter_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_caracter_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_caracter_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_caracter_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_22_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_21_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_20_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Mram_n01127_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mram_n01127_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal caracter : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcount_caracter_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal ttx : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Mcount_caracter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_7_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_7_0
    );
  Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_6_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_6_0
    );
  Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_5_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_5_0
    );
  Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_4_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_4_0
    );
  cnttx_71 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y85",
      INIT => X"F3C0F3C0F3C0F3C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => cnttx_13_LD_574,
      ADR2 => cnttx_7_P_7_586,
      ADR3 => cnttx_7_C_7_587,
      ADR5 => '1',
      O => cnttx_7
    );
  Mram_n01127_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_9_D5LUT_O_UNCONNECTED
    );
  Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y85"
    )
    port map (
      CI => Madd_cnttx_15_GND_5_o_add_1_OUT_cy_3_Q_569,
      CYINIT => '0',
      CO(3) => Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_Q_584,
      CO(2) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => cnttx_15_GND_5_o_add_1_OUT_7_Q,
      O(2) => cnttx_15_GND_5_o_add_1_OUT_6_Q,
      O(1) => cnttx_15_GND_5_o_add_1_OUT_5_Q,
      O(0) => cnttx_15_GND_5_o_add_1_OUT_4_Q,
      S(3) => cnttx_7,
      S(2) => cnttx_6_rt_11,
      S(1) => cnttx_5,
      S(0) => cnttx_4
    );
  cnttx_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y85",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => cnttx_6_582,
      ADR5 => '1',
      O => cnttx_6_rt_11
    );
  Mram_n01127_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_8_C5LUT_O_UNCONNECTED
    );
  cnttx_51 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y85",
      INIT => X"F5F5A0A0F5F5A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => cnttx_13_LD_574,
      ADR2 => cnttx_5_P_5_579,
      ADR4 => cnttx_5_C_5_580,
      ADR5 => '1',
      O => cnttx_5
    );
  Mram_n01127_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_7_B5LUT_O_UNCONNECTED
    );
  cnttx_41 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y85",
      INIT => X"FCFC3030FCFC3030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => cnttx_13_LD_574,
      ADR4 => cnttx_4_P_4_575,
      ADR2 => cnttx_4_C_4_576,
      ADR5 => '1',
      O => cnttx_4
    );
  Mram_n01127_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_6_A5LUT_O_UNCONNECTED
    );
  Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_11_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_11_0
    );
  Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_10_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_10_0
    );
  Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_9_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_9_0
    );
  Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_8_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_8_0
    );
  cnttx_111 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y86",
      INIT => X"FF00F0F0FF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => cnttx_13_LD_574,
      ADR3 => cnttx_11_P_11_597,
      ADR2 => cnttx_11_C_11_598,
      ADR5 => '1',
      O => cnttx_11
    );
  Mram_n01127_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_13_D5LUT_O_UNCONNECTED
    );
  Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y86"
    )
    port map (
      CI => Madd_cnttx_15_GND_5_o_add_1_OUT_cy_7_Q_584,
      CYINIT => '0',
      CO(3) => Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_Q_595,
      CO(2) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => cnttx_15_GND_5_o_add_1_OUT_11_Q,
      O(2) => cnttx_15_GND_5_o_add_1_OUT_10_Q,
      O(1) => cnttx_15_GND_5_o_add_1_OUT_9_Q,
      O(0) => cnttx_15_GND_5_o_add_1_OUT_8_Q,
      S(3) => cnttx_11,
      S(2) => cnttx_10_rt_39,
      S(1) => cnttx_9_rt_42,
      S(0) => cnttx_8_rt_45
    );
  cnttx_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y86",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cnttx_10_593,
      ADR5 => '1',
      O => cnttx_10_rt_39
    );
  Mram_n01127_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_12_C5LUT_O_UNCONNECTED
    );
  cnttx_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y86",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => cnttx_9_591,
      ADR5 => '1',
      O => cnttx_9_rt_42
    );
  Mram_n01127_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_11_B5LUT_O_UNCONNECTED
    );
  cnttx_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y86",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cnttx_8_589,
      ADR5 => '1',
      O => cnttx_8_rt_45
    );
  Mram_n01127_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_10_A5LUT_O_UNCONNECTED
    );
  cnttx_13_cnttx_13_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_13_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_13_0
    );
  cnttx_13_cnttx_13_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_12_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_12_0
    );
  Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y87"
    )
    port map (
      CI => Madd_cnttx_15_GND_5_o_add_1_OUT_cy_11_Q_595,
      CYINIT => '0',
      CO(3) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_CO_3_UNCONNECTED,
      CO(2) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_CO_0_UNCONNECTED,
      DI(3) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_DI_3_UNCONNECTED,
      DI(2) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_DI_2_UNCONNECTED,
      DI(1) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_O_3_UNCONNECTED,
      O(2) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_O_2_UNCONNECTED,
      O(1) => cnttx_15_GND_5_o_add_1_OUT_13_Q,
      O(0) => cnttx_15_GND_5_o_add_1_OUT_12_Q,
      S(3) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_S_3_UNCONNECTED,
      S(2) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_xor_13_S_2_UNCONNECTED,
      S(1) => cnttx_13,
      S(0) => cnttx_12_rt_59
    );
  cnttx_131 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y87",
      INIT => X"FFFF5555AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => cnttx_13_LD_574,
      ADR4 => cnttx_13_P_13_603,
      ADR5 => cnttx_13_C_13_604,
      O => cnttx_13
    );
  cnttx_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y87",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => cnttx_12_600,
      ADR5 => '1',
      O => cnttx_12_rt_59
    );
  Mram_n01127_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_14_A5LUT_O_UNCONNECTED
    );
  Mcount_caracter_cy_3_Mcount_caracter_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(3),
      O => Result_3_0
    );
  Mcount_caracter_cy_3_Mcount_caracter_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(2),
      O => Result_2_0
    );
  Mcount_caracter_cy_3_Mcount_caracter_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(1),
      O => Result_1_0
    );
  Mcount_caracter_cy_3_Mcount_caracter_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(0),
      O => Result_0_0
    );
  caracter_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y86",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => caracter(3),
      ADR5 => '1',
      O => caracter_3_rt_63
    );
  Mram_n01127_19_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_19_D5LUT_O_UNCONNECTED
    );
  ProtoComp0_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X22Y86"
    )
    port map (
      O => ProtoComp0_CYINITGND_0
    );
  Mcount_caracter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y86"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp0_CYINITGND_0,
      CO(3) => Mcount_caracter_cy(3),
      CO(2) => NLW_Mcount_caracter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_caracter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_caracter_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Result(3),
      O(2) => Result(2),
      O(1) => Result(1),
      O(0) => Result(0),
      S(3) => caracter_3_rt_63,
      S(2) => caracter_2_rt_72,
      S(1) => caracter_1_rt_75,
      S(0) => Mcount_caracter_lut(0)
    );
  caracter_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y86",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => caracter(2),
      ADR5 => '1',
      O => caracter_2_rt_72
    );
  Mram_n01127_18_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_18_C5LUT_O_UNCONNECTED
    );
  caracter_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y86",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => caracter(1),
      ADR5 => '1',
      O => caracter_1_rt_75
    );
  Mram_n01127_17_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_17_B5LUT_O_UNCONNECTED
    );
  Mcount_caracter_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y86",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => caracter(0),
      ADR5 => '1',
      O => Mcount_caracter_lut(0)
    );
  N0_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y86",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_2_A5LUT_O_UNCONNECTED
    );
  Result_7_Result_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(7),
      O => Result_7_0
    );
  Result_7_Result_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(6),
      O => Result_6_0
    );
  Result_7_Result_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(5),
      O => Result_5_0
    );
  Result_7_Result_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(4),
      O => Result_4_0
    );
  caracter_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y87",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => caracter(7),
      O => caracter_7_rt_85
    );
  Mcount_caracter_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y87"
    )
    port map (
      CI => Mcount_caracter_cy(3),
      CYINIT => '0',
      CO(3) => NLW_Mcount_caracter_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_Mcount_caracter_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_caracter_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_caracter_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_Mcount_caracter_xor_7_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(7),
      O(2) => Result(6),
      O(1) => Result(5),
      O(0) => Result(4),
      S(3) => caracter_7_rt_85,
      S(2) => caracter_6_rt_92,
      S(1) => caracter_5_rt_95,
      S(0) => caracter_4_rt_98
    );
  caracter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y87",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => caracter(6),
      ADR5 => '1',
      O => caracter_6_rt_92
    );
  Mram_n01127_22_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_22_C5LUT_O_UNCONNECTED
    );
  caracter_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y87",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => caracter(5),
      ADR5 => '1',
      O => caracter_5_rt_95
    );
  Mram_n01127_21_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_21_B5LUT_O_UNCONNECTED
    );
  caracter_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y87",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => caracter(4),
      ADR5 => '1',
      O => caracter_4_rt_98
    );
  Mram_n01127_20_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_20_A5LUT_O_UNCONNECTED
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 115 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_105,
      I => clk
    );
  ProtoComp5_IMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_105,
      O => clk_BUFGP_IBUFG_0
    );
  tx_OBUF : X_OBUF
    generic map(
      LOC => "PAD45"
    )
    port map (
      I => NlwBufferSignal_tx_OBUF_I,
      O => tx
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 115 ps
    )
    port map (
      O => rst_IBUF_110,
      I => rst
    );
  ProtoComp5_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 115 ps
    )
    port map (
      I => rst_IBUF_110,
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
  caracter_7_rst_OR_42_o_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y87",
      INIT => X"00000000000F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => caracter(5),
      ADR2 => caracter(6),
      ADR3 => caracter(7),
      ADR4 => caracter(1),
      O => N4
    );
  caracter_7_rst_OR_42_o : X_LUT6
    generic map(
      LOC => "SLICE_X21Y87",
      INIT => X"CECCCCCCCCCCCCCC"
    )
    port map (
      ADR1 => rst_IBUF_0,
      ADR5 => caracter(4),
      ADR2 => caracter(3),
      ADR0 => caracter(2),
      ADR3 => caracter(0),
      ADR4 => N4,
      O => caracter_7_rst_OR_42_o_634
    );
  cnttx_12 : X_FF
    generic map(
      LOC => "SLICE_X23Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_12_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_12_Q,
      O => cnttx_12_600,
      RST => caracter_7_rst_OR_42_o_634,
      SET => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y85",
      INIT => X"FFFF0000F3FF0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => cnttx_10_593,
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR5 => cnttx_12_600,
      ADR1 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR4 => cnttx_15_GND_5_o_add_1_OUT_12_0,
      O => cnttx_15_GND_5_o_mux_9_OUT_12_Q
    );
  cnttx_15_GND_5_o_equal_3_o_15_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y86",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => cnttx_2_567,
      ADR5 => cnttx_1_565,
      ADR4 => cnttx_3_570,
      ADR1 => cnttx_6_582,
      ADR0 => cnttx_8_589,
      ADR2 => cnttx_9_591,
      O => cnttx_15_GND_5_o_equal_3_o_15_2_656
    );
  caracter_1 : X_FF
    generic map(
      LOC => "SLICE_X23Y86",
      INIT => '0'
    )
    port map (
      CE => Q_n0123_inv1_635,
      CLK => NlwBufferSignal_caracter_1_CLK,
      I => caracter_1_dpot_153,
      O => caracter(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  caracter_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y86",
      INIT => X"FFFF0000BAFFAA00"
    )
    port map (
      ADR2 => caracter(0),
      ADR1 => Q_n0123_inv2_636,
      ADR0 => Result_1_0,
      ADR4 => caracter(1),
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR5 => N12,
      O => caracter_1_dpot_153
    );
  cnttx_15_GND_5_o_equal_3_o_15_3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y86",
      INIT => X"FFFFFFFFFF33FF33"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => cnttx_12_600,
      ADR3 => cnttx_10_593,
      ADR1 => cnttx_15_GND_5_o_equal_3_o_15_2_656,
      O => N12
    );
  caracter_0 : X_FF
    generic map(
      LOC => "SLICE_X23Y86",
      INIT => '0'
    )
    port map (
      CE => Q_n0123_inv1_635,
      CLK => NlwBufferSignal_caracter_0_CLK,
      I => caracter_0_dpot_141,
      O => caracter(0),
      RST => rst_IBUF_0,
      SET => GND
    );
  caracter_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y86",
      INIT => X"AAAACECCAAAAAAAA"
    )
    port map (
      ADR3 => caracter(1),
      ADR1 => Result_0_0,
      ADR2 => Q_n0123_inv2_636,
      ADR0 => caracter(0),
      ADR5 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR4 => N12,
      O => caracter_0_dpot_141
    );
  caracter_4 : X_FF
    generic map(
      LOC => "SLICE_X23Y87",
      INIT => '0'
    )
    port map (
      CE => Q_n0123_inv1_635,
      CLK => NlwBufferSignal_caracter_4_CLK,
      I => caracter_4_dpot_194,
      O => caracter(4),
      RST => rst_IBUF_0,
      SET => GND
    );
  caracter_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y87",
      INIT => X"CCCCCCCCCCCCACCC"
    )
    port map (
      ADR4 => cnttx_10_593,
      ADR0 => Result_4_0,
      ADR2 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR1 => caracter(4),
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR5 => N16,
      O => caracter_4_dpot_194
    );
  caracter_3 : X_FF
    generic map(
      LOC => "SLICE_X23Y87",
      INIT => '0'
    )
    port map (
      CE => Q_n0123_inv1_635,
      CLK => NlwBufferSignal_caracter_3_CLK,
      I => caracter_3_dpot_184,
      O => caracter(3),
      RST => rst_IBUF_0,
      SET => GND
    );
  caracter_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y87",
      INIT => X"FFFF0000FFBF4000"
    )
    port map (
      ADR0 => cnttx_10_593,
      ADR3 => Result_3_0,
      ADR2 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR4 => caracter(3),
      ADR1 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR5 => N16,
      O => caracter_3_dpot_184
    );
  cnttx_15_GND_5_o_equal_3_o_15_3_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y87",
      INIT => X"FFFF0000FFFFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => caracter(1),
      ADR3 => caracter(0),
      ADR4 => cnttx_12_600,
      ADR5 => Q_n0123_inv2_636,
      O => N16
    );
  caracter_2 : X_FF
    generic map(
      LOC => "SLICE_X23Y87",
      INIT => '0'
    )
    port map (
      CE => Q_n0123_inv1_635,
      CLK => NlwBufferSignal_caracter_2_CLK,
      I => caracter_2_dpot_171,
      O => caracter(2),
      RST => rst_IBUF_0,
      SET => GND
    );
  caracter_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y87",
      INIT => X"AAAAACAAAAAAAAAA"
    )
    port map (
      ADR2 => cnttx_10_593,
      ADR1 => Result_2_0,
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR0 => caracter(2),
      ADR5 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR4 => N16,
      O => caracter_2_dpot_171
    );
  cnttx_7_C_7_cnttx_7_C_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_equal_3_o_15_pack_4,
      O => cnttx_15_GND_5_o_equal_3_o_15_Q
    );
  cnttx_15_GND_5_o_equal_3_o_15_1 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y83"
    )
    port map (
      IA => N34,
      IB => N35,
      O => cnttx_15_GND_5_o_equal_3_o_15_pack_4,
      SEL => cnttx_13_LD_574
    );
  cnttx_15_GND_5_o_equal_3_o_15_1_F : X_LUT6
    generic map(
      LOC => "SLICE_X24Y83",
      INIT => X"8000000000000000"
    )
    port map (
      ADR5 => cnttx_4_C_4_576,
      ADR4 => cnttx_0_563,
      ADR2 => cnttx_7_C_7_587,
      ADR1 => cnttx_5_C_5_580,
      ADR3 => cnttx_13_C_13_604,
      ADR0 => cnttx_11_C_11_598,
      O => N34
    );
  cnttx_15_GND_5_o_equal_3_o_15_1_G : X_LUT6
    generic map(
      LOC => "SLICE_X24Y83",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => cnttx_4_P_4_575,
      ADR5 => cnttx_0_563,
      ADR0 => cnttx_7_P_7_586,
      ADR2 => cnttx_5_P_5_579,
      ADR4 => cnttx_13_P_13_603,
      ADR3 => cnttx_11_P_11_597,
      O => N35
    );
  cnttx_7_C_7 : X_FF
    generic map(
      LOC => "SLICE_X24Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_7_C_7_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_7_Q,
      O => cnttx_7_C_7_587,
      RST => GND,
      SET => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT141 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y83",
      INIT => X"FFFF0000CFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => cnttx_12_600,
      ADR5 => cnttx_10_593,
      ADR2 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR4 => cnttx_15_GND_5_o_add_1_OUT_7_0,
      O => cnttx_15_GND_5_o_mux_9_OUT_7_Q
    );
  cnttx_11_C_11 : X_FF
    generic map(
      LOC => "SLICE_X24Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_11_C_11_CLK,
      I => NlwBufferSignal_cnttx_11_C_11_IN,
      O => cnttx_11_C_11_598,
      RST => GND,
      SET => GND
    );
  cnttx_4_C_4_cnttx_4_C_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_3_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_3_0
    );
  cnttx_4_C_4_cnttx_4_C_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_2_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_2_0
    );
  cnttx_4_C_4_cnttx_4_C_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_1_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_1_0
    );
  cnttx_4_C_4_cnttx_4_C_4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_add_1_OUT_0_Q,
      O => cnttx_15_GND_5_o_add_1_OUT_0_0
    );
  cnttx_4_C_4 : X_FF
    generic map(
      LOC => "SLICE_X24Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_4_C_4_CLK,
      I => NlwBufferSignal_cnttx_4_C_4_IN,
      O => cnttx_4_C_4_576,
      RST => GND,
      SET => GND
    );
  cnttx_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y84",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => cnttx_3_570,
      ADR5 => '1',
      O => cnttx_3_rt_242
    );
  Mram_n01127_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_5_D5LUT_O_UNCONNECTED
    );
  ProtoComp46_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X24Y84"
    )
    port map (
      O => ProtoComp46_CYINITGND_0
    );
  cnttx_5_C_5 : X_FF
    generic map(
      LOC => "SLICE_X24Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_5_C_5_CLK,
      I => NlwBufferSignal_cnttx_5_C_5_IN,
      O => cnttx_5_C_5_580,
      RST => GND,
      SET => GND
    );
  Madd_cnttx_15_GND_5_o_add_1_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y84"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp46_CYINITGND_0,
      CO(3) => Madd_cnttx_15_GND_5_o_add_1_OUT_cy_3_Q_569,
      CO(2) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_cnttx_15_GND_5_o_add_1_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => cnttx_15_GND_5_o_add_1_OUT_3_Q,
      O(2) => cnttx_15_GND_5_o_add_1_OUT_2_Q,
      O(1) => cnttx_15_GND_5_o_add_1_OUT_1_Q,
      O(0) => cnttx_15_GND_5_o_add_1_OUT_0_Q,
      S(3) => cnttx_3_rt_242,
      S(2) => cnttx_2_rt_227,
      S(1) => cnttx_1_rt_230,
      S(0) => Madd_cnttx_15_GND_5_o_add_1_OUT_lut_0_Q
    );
  cnttx_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y84",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => cnttx_2_567,
      ADR5 => '1',
      O => cnttx_2_rt_227
    );
  Mram_n01127_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_4_C5LUT_O_UNCONNECTED
    );
  cnttx_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y84",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => cnttx_1_565,
      ADR5 => '1',
      O => cnttx_1_rt_230
    );
  Mram_n01127_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mram_n01127_3_B5LUT_O_UNCONNECTED
    );
  Madd_cnttx_15_GND_5_o_add_1_OUT_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y84",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => cnttx_0_563,
      ADR5 => '1',
      O => Madd_cnttx_15_GND_5_o_add_1_OUT_lut_0_Q
    );
  N0_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y84",
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
  Mmux_tx311_Mmux_tx311_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mmux_tx311,
      O => Mmux_tx311_0
    );
  Mmux_tx312 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y88"
    )
    port map (
      IA => N30,
      IB => N31,
      O => Mmux_tx311,
      SEL => caracter(1)
    );
  Mmux_tx312_F : X_LUT6
    generic map(
      LOC => "SLICE_X24Y88",
      INIT => X"773333FF57DC10FF"
    )
    port map (
      ADR1 => caracter(0),
      ADR5 => ttx(3),
      ADR2 => caracter(2),
      ADR3 => ttx(2),
      ADR4 => caracter(3),
      ADR0 => ttx(1),
      O => N30
    );
  Mmux_tx312_G : X_LUT6
    generic map(
      LOC => "SLICE_X24Y88",
      INIT => X"FFFFFFFFC2BB478F"
    )
    port map (
      ADR1 => caracter(0),
      ADR3 => ttx(2),
      ADR2 => ttx(1),
      ADR4 => caracter(3),
      ADR0 => caracter(2),
      ADR5 => ttx(3),
      O => N31
    );
  cnttx_11_P_11 : X_FF
    generic map(
      LOC => "SLICE_X25Y83",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_11_P_11_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_11_Q,
      O => cnttx_11_P_11_597,
      SET => caracter_7_rst_OR_42_o_634,
      RST => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y83",
      INIT => X"FFFF0000F5FF0000"
    )
    port map (
      ADR1 => '1',
      ADR2 => cnttx_12_600,
      ADR5 => cnttx_10_593,
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR0 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR4 => cnttx_15_GND_5_o_add_1_OUT_11_0,
      O => cnttx_15_GND_5_o_mux_9_OUT_11_Q
    );
  cnttx_7_P_7 : X_FF
    generic map(
      LOC => "SLICE_X25Y83",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_7_P_7_CLK,
      I => NlwBufferSignal_cnttx_7_P_7_IN,
      O => cnttx_7_P_7_586,
      SET => caracter_7_rst_OR_42_o_634,
      RST => GND
    );
  cnttx_13_P_13 : X_FF
    generic map(
      LOC => "SLICE_X25Y84",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_13_P_13_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_13_Q,
      O => cnttx_13_P_13_603,
      SET => caracter_7_rst_OR_42_o_634,
      RST => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y84",
      INIT => X"FBFBFFFF00000000"
    )
    port map (
      ADR3 => '1',
      ADR2 => cnttx_12_600,
      ADR0 => cnttx_10_593,
      ADR4 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR1 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR5 => cnttx_15_GND_5_o_add_1_OUT_13_0,
      O => cnttx_15_GND_5_o_mux_9_OUT_13_Q
    );
  cnttx_4_P_4 : X_FF
    generic map(
      LOC => "SLICE_X25Y84",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_4_P_4_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_4_Q,
      O => cnttx_4_P_4_575,
      SET => caracter_7_rst_OR_42_o_634,
      RST => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT111 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y84",
      INIT => X"FAFFFFFF00000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => cnttx_12_600,
      ADR2 => cnttx_10_593,
      ADR4 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR5 => cnttx_15_GND_5_o_add_1_OUT_4_0,
      O => cnttx_15_GND_5_o_mux_9_OUT_4_Q
    );
  cnttx_5_P_5 : X_FF
    generic map(
      LOC => "SLICE_X25Y84",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_5_P_5_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_5_Q,
      O => cnttx_5_P_5_579,
      SET => caracter_7_rst_OR_42_o_634,
      RST => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT121 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y84",
      INIT => X"FFF50000FFFF0000"
    )
    port map (
      ADR1 => '1',
      ADR3 => cnttx_12_600,
      ADR2 => cnttx_10_593,
      ADR0 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR5 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR4 => cnttx_15_GND_5_o_add_1_OUT_5_0,
      O => cnttx_15_GND_5_o_mux_9_OUT_5_Q
    );
  cnttx_13_LD : X_LATCHE
    generic map(
      LOC => "SLICE_X25Y85",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_cnttx_13_LD_CLK,
      I => '1',
      O => cnttx_13_LD_574,
      RST => GND,
      SET => GND
    );
  cnttx_15_GND_5_o_equal_3_o_15_3_rstpot_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y85",
      INIT => X"00000000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => ttx(2),
      ADR3 => ttx(1),
      O => N6
    );
  cnttx_10 : X_FF
    generic map(
      LOC => "SLICE_X25Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_10_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_10_Q,
      O => cnttx_10_593,
      RST => caracter_7_rst_OR_42_o_634,
      SET => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y86",
      INIT => X"FCFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => cnttx_12_600,
      ADR4 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR1 => cnttx_10_593,
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR5 => cnttx_15_GND_5_o_add_1_OUT_10_0,
      O => cnttx_15_GND_5_o_mux_9_OUT_10_Q
    );
  cnttx_9 : X_FF
    generic map(
      LOC => "SLICE_X25Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_9_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_9_Q,
      O => cnttx_9_591,
      RST => caracter_7_rst_OR_42_o_634,
      SET => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT161 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y86",
      INIT => X"AAAAAAAAAAAA0AAA"
    )
    port map (
      ADR1 => '1',
      ADR5 => cnttx_12_600,
      ADR4 => cnttx_10_593,
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR2 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR0 => cnttx_15_GND_5_o_add_1_OUT_9_0,
      O => cnttx_15_GND_5_o_mux_9_OUT_9_Q
    );
  cnttx_8 : X_FF
    generic map(
      LOC => "SLICE_X25Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_8_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_8_Q,
      O => cnttx_8_589,
      RST => caracter_7_rst_OR_42_o_634,
      SET => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT151 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y86",
      INIT => X"FAFFFFFF00000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => cnttx_12_600,
      ADR2 => cnttx_10_593,
      ADR4 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR5 => cnttx_15_GND_5_o_add_1_OUT_8_0,
      O => cnttx_15_GND_5_o_mux_9_OUT_8_Q
    );
  cnttx_6 : X_FF
    generic map(
      LOC => "SLICE_X25Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_6_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_6_Q,
      O => cnttx_6_582,
      RST => caracter_7_rst_OR_42_o_634,
      SET => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT131 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y86",
      INIT => X"FFFFAFFF00000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => cnttx_12_600,
      ADR4 => cnttx_10_593,
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR2 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR5 => cnttx_15_GND_5_o_add_1_OUT_6_0,
      O => cnttx_15_GND_5_o_mux_9_OUT_6_Q
    );
  Q_n0123_inv2 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y87",
      INIT => X"FFFEFFFFFFFFFFFF"
    )
    port map (
      ADR2 => caracter(6),
      ADR1 => caracter(5),
      ADR0 => caracter(7),
      ADR4 => caracter(4),
      ADR5 => caracter(2),
      ADR3 => caracter(3),
      O => Q_n0123_inv2_636
    );
  caracter_7 : X_FF
    generic map(
      LOC => "SLICE_X25Y87",
      INIT => '0'
    )
    port map (
      CE => Q_n0123_inv1_635,
      CLK => NlwBufferSignal_caracter_7_CLK,
      I => caracter_7_dpot_340,
      O => caracter(7),
      RST => rst_IBUF_0,
      SET => GND
    );
  caracter_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y87",
      INIT => X"CCCCCCCCDCCC8CCC"
    )
    port map (
      ADR0 => cnttx_10_593,
      ADR4 => Result_7_0,
      ADR2 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR1 => caracter(7),
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR5 => N16,
      O => caracter_7_dpot_340
    );
  caracter_6 : X_FF
    generic map(
      LOC => "SLICE_X25Y87",
      INIT => '0'
    )
    port map (
      CE => Q_n0123_inv1_635,
      CLK => NlwBufferSignal_caracter_6_CLK,
      I => caracter_6_dpot_346,
      O => caracter(6),
      RST => rst_IBUF_0,
      SET => GND
    );
  caracter_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y87",
      INIT => X"FFFF0000FFDF2000"
    )
    port map (
      ADR1 => cnttx_10_593,
      ADR3 => Result_6_0,
      ADR0 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR4 => caracter(6),
      ADR2 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR5 => N16,
      O => caracter_6_dpot_346
    );
  caracter_5 : X_FF
    generic map(
      LOC => "SLICE_X25Y87",
      INIT => '0'
    )
    port map (
      CE => Q_n0123_inv1_635,
      CLK => NlwBufferSignal_caracter_5_CLK,
      I => caracter_5_dpot_356,
      O => caracter(5),
      RST => rst_IBUF_0,
      SET => GND
    );
  caracter_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y87",
      INIT => X"AAAAAAAABA8AAAAA"
    )
    port map (
      ADR1 => cnttx_10_593,
      ADR3 => Result_5_0,
      ADR4 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR0 => caracter(5),
      ADR2 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      ADR5 => N16,
      O => caracter_5_dpot_356
    );
  Mmux_tx33 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y88",
      INIT => X"000002A200000808"
    )
    port map (
      ADR0 => ttx(2),
      ADR4 => ttx(1),
      ADR5 => caracter(0),
      ADR2 => caracter(4),
      ADR1 => caracter(1),
      ADR3 => caracter(3),
      O => Mmux_tx32_653
    );
  cnttx_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_3_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_3_Q,
      O => cnttx_3_570,
      RST => caracter_7_rst_OR_42_o_634,
      SET => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT101 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y84",
      INIT => X"FFFFCFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => cnttx_12_600,
      ADR1 => cnttx_10_593,
      ADR5 => cnttx_15_GND_5_o_add_1_OUT_3_0,
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR2 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      O => cnttx_15_GND_5_o_mux_9_OUT_3_Q
    );
  cnttx_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_2_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_2_Q,
      O => cnttx_2_567,
      RST => caracter_7_rst_OR_42_o_634,
      SET => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT91 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y84",
      INIT => X"FFBBFFFF00000000"
    )
    port map (
      ADR2 => '1',
      ADR0 => cnttx_12_600,
      ADR3 => cnttx_10_593,
      ADR5 => cnttx_15_GND_5_o_add_1_OUT_2_0,
      ADR1 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR4 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      O => cnttx_15_GND_5_o_mux_9_OUT_2_Q
    );
  cnttx_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_1_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_1_Q,
      O => cnttx_1_565,
      RST => caracter_7_rst_OR_42_o_634,
      SET => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y84",
      INIT => X"CCCC8CCCCCCC8CCC"
    )
    port map (
      ADR5 => '1',
      ADR4 => cnttx_12_600,
      ADR0 => cnttx_10_593,
      ADR1 => cnttx_15_GND_5_o_add_1_OUT_1_0,
      ADR2 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      O => cnttx_15_GND_5_o_mux_9_OUT_1_Q
    );
  cnttx_0 : X_FF
    generic map(
      LOC => "SLICE_X26Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_0_CLK,
      I => cnttx_15_GND_5_o_mux_9_OUT_0_Q,
      O => cnttx_0_563,
      RST => caracter_7_rst_OR_42_o_634,
      SET => GND
    );
  Mmux_cnttx_15_GND_5_o_mux_9_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y84",
      INIT => X"C8CCCCCCC8CCCCCC"
    )
    port map (
      ADR5 => '1',
      ADR0 => cnttx_12_600,
      ADR2 => cnttx_10_593,
      ADR1 => cnttx_15_GND_5_o_add_1_OUT_0_0,
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      ADR4 => cnttx_15_GND_5_o_equal_3_o_15_Q,
      O => cnttx_15_GND_5_o_mux_9_OUT_0_Q
    );
  cnttx_15_GND_5_o_equal_3_o_15_2_2 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y85",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => cnttx_2_567,
      ADR5 => cnttx_1_565,
      ADR0 => cnttx_3_570,
      ADR2 => cnttx_6_582,
      ADR4 => cnttx_8_589,
      ADR3 => cnttx_9_591,
      O => cnttx_15_GND_5_o_equal_3_o_15_21
    );
  cnttx_15_GND_5_o_equal_3_o_15_3_rstpot_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y85",
      INIT => X"F0F00F0F0F0FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => ttx(0),
      ADR2 => ttx(3),
      ADR4 => ttx(2),
      O => N10
    );
  ttx_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y86",
      INIT => X"CCCCCCCC8CDCCCCC"
    )
    port map (
      ADR1 => ttx(3),
      ADR4 => ttx(1),
      ADR0 => cnttx_12_600,
      ADR5 => cnttx_10_593,
      ADR3 => N10,
      ADR2 => cnttx_15_GND_5_o_equal_3_o_15_21,
      O => ttx_3_dpot_657
    );
  ttx_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y86",
      INIT => '0'
    )
    port map (
      CE => cnttx_4,
      CLK => NlwBufferSignal_ttx_3_CLK,
      I => ttx_3_dpot1_433,
      O => ttx(3),
      RST => caracter_7_rst_OR_42_o_634,
      SET => GND
    );
  ttx_3_dpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y86",
      INIT => X"FFFFFF0000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => ttx(3),
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_1_rstpot_644,
      ADR5 => ttx_3_dpot_657,
      O => ttx_3_dpot1_433
    );
  cnttx_15_GND_5_o_equal_3_o_15_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y86",
      INIT => X"C000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => cnttx_0_563,
      ADR2 => cnttx_7,
      ADR4 => cnttx_5,
      ADR5 => cnttx_13,
      ADR3 => cnttx_11,
      O => cnttx_15_GND_5_o_equal_3_o_15_1_rstpot_644
    );
  ttx_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y86",
      INIT => '0'
    )
    port map (
      CE => cnttx_4,
      CLK => NlwBufferSignal_ttx_2_CLK,
      I => ttx_2_dpot1_424,
      O => ttx(2),
      RST => caracter_7_rst_OR_42_o_634,
      SET => GND
    );
  ttx_2_dpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y86",
      INIT => X"FFFFFF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ttx(2),
      ADR4 => cnttx_15_GND_5_o_equal_3_o_15_1_rstpot_644,
      ADR5 => ttx_2_dpot_650,
      O => ttx_2_dpot1_424
    );
  Q_n0123_inv1_n0123_inv1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mmux_tx314,
      O => Mmux_tx314_0
    );
  Mmux_tx315 : X_MUX2
    generic map(
      LOC => "SLICE_X26Y87"
    )
    port map (
      IA => N32,
      IB => N33,
      O => Mmux_tx314,
      SEL => caracter(4)
    );
  Mmux_tx315_F : X_LUT6
    generic map(
      LOC => "SLICE_X26Y87",
      INIT => X"75552145D5D58181"
    )
    port map (
      ADR0 => caracter(2),
      ADR2 => ttx(2),
      ADR1 => caracter(1),
      ADR5 => caracter(0),
      ADR3 => ttx(1),
      ADR4 => ttx(3),
      O => N32
    );
  Mmux_tx315_G : X_LUT6
    generic map(
      LOC => "SLICE_X26Y87",
      INIT => X"33BB13ECB33B917F"
    )
    port map (
      ADR1 => caracter(2),
      ADR0 => ttx(2),
      ADR3 => caracter(0),
      ADR5 => caracter(1),
      ADR2 => ttx(1),
      ADR4 => ttx(3),
      O => N33
    );
  Q_n0123_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y87",
      INIT => X"0000000044004400"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => ttx(1),
      ADR3 => ttx(3),
      ADR5 => ttx(2),
      ADR0 => ttx(0),
      O => Q_n0123_inv1_635
    );
  Mmux_tx316 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y88",
      INIT => X"0050445400504454"
    )
    port map (
      ADR5 => '1',
      ADR0 => ttx(0),
      ADR2 => Mmux_tx314_0,
      ADR3 => caracter(3),
      ADR1 => Mmux_tx311_0,
      ADR4 => caracter(4),
      O => Mmux_tx315_641
    );
  Mmux_tx34 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y88",
      INIT => X"1810000088110000"
    )
    port map (
      ADR4 => ttx(1),
      ADR5 => caracter(0),
      ADR2 => caracter(1),
      ADR0 => caracter(2),
      ADR3 => caracter(4),
      ADR1 => ttx(2),
      O => Mmux_tx33_658
    );
  Mmux_tx35 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y88",
      INIT => X"AAAAAAAA22A200A0"
    )
    port map (
      ADR0 => ttx(0),
      ADR2 => Mmux_tx32_653,
      ADR3 => caracter(2),
      ADR5 => Mmux_tx31,
      ADR4 => Mmux_tx33_658,
      ADR1 => caracter(3),
      O => Mmux_tx34_642
    );
  cnttx_13_C_13 : X_FF
    generic map(
      LOC => "SLICE_X27Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cnttx_13_C_13_CLK,
      I => NlwBufferSignal_cnttx_13_C_13_IN,
      O => cnttx_13_C_13_604,
      RST => GND,
      SET => GND
    );
  cnttx_15_GND_5_o_equal_3_o_15_2 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y85",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => cnttx_2_567,
      ADR0 => cnttx_1_565,
      ADR1 => cnttx_3_570,
      ADR2 => cnttx_6_582,
      ADR4 => cnttx_8_589,
      ADR3 => cnttx_9_591,
      O => cnttx_15_GND_5_o_equal_3_o_15_1_633
    );
  ttx_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y85",
      INIT => X"A9AAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => ttx(2),
      ADR2 => cnttx_10_593,
      ADR1 => cnttx_12_600,
      ADR3 => ttx(1),
      ADR5 => ttx(0),
      ADR4 => cnttx_15_GND_5_o_equal_3_o_15_1_633,
      O => ttx_2_dpot_650
    );
  ttx_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y86",
      INIT => X"AAAAA5AAAAAAA2AA"
    )
    port map (
      ADR5 => ttx(0),
      ADR0 => ttx(1),
      ADR2 => cnttx_12_600,
      ADR4 => cnttx_10_593,
      ADR1 => N8,
      ADR3 => cnttx_15_GND_5_o_equal_3_o_15_21,
      O => ttx_1_dpot_660
    );
  ttx_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y86",
      INIT => '0'
    )
    port map (
      CE => cnttx_4,
      CLK => NlwBufferSignal_ttx_1_CLK,
      I => ttx_1_dpot1_513,
      O => ttx(1),
      RST => caracter_7_rst_OR_42_o_634,
      SET => GND
    );
  ttx_1_dpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y86",
      INIT => X"FFFF0000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => ttx(1),
      ADR5 => cnttx_15_GND_5_o_equal_3_o_15_1_rstpot_644,
      ADR4 => ttx_1_dpot_660,
      O => ttx_1_dpot1_513
    );
  ttx_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y86",
      INIT => X"A8A9AAAAA9A9AAAA"
    )
    port map (
      ADR0 => ttx(0),
      ADR3 => ttx(3),
      ADR2 => cnttx_12_600,
      ADR1 => cnttx_10_593,
      ADR5 => N6,
      ADR4 => cnttx_15_GND_5_o_equal_3_o_15_21,
      O => ttx_0_dpot_659
    );
  ttx_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y86",
      INIT => '0'
    )
    port map (
      CE => cnttx_4,
      CLK => NlwBufferSignal_ttx_0_CLK,
      I => ttx_0_dpot1_525,
      O => ttx(0),
      RST => caracter_7_rst_OR_42_o_634,
      SET => GND
    );
  ttx_0_dpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y86",
      INIT => X"FFFF5555AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => ttx(0),
      ADR0 => cnttx_15_GND_5_o_equal_3_o_15_1_rstpot_644,
      ADR4 => ttx_0_dpot_659,
      O => ttx_0_dpot1_525
    );
  Mmux_tx317_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y87",
      INIT => X"FFFFFF11FFFFFF01"
    )
    port map (
      ADR1 => Mmux_tx315_641,
      ADR0 => Mmux_tx34_642,
      ADR2 => Mmux_tx35_661,
      ADR5 => caracter(1),
      ADR3 => caracter(7),
      ADR4 => caracter(6),
      O => N28
    );
  Mmux_tx317 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y87",
      INIT => X"FCFC0003FDFD5557"
    )
    port map (
      ADR4 => ttx(3),
      ADR1 => ttx(1),
      ADR2 => ttx(2),
      ADR0 => caracter(5),
      ADR5 => N28,
      ADR3 => ttx(0),
      O => tx_OBUF_624
    );
  Mmux_tx36 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y87",
      INIT => X"00000C4000080000"
    )
    port map (
      ADR1 => caracter(2),
      ADR4 => ttx(1),
      ADR5 => ttx(2),
      ADR3 => caracter(3),
      ADR2 => caracter(4),
      ADR0 => caracter(0),
      O => Mmux_tx35_661
    );
  Mmux_tx32 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y88",
      INIT => X"000C000000020000"
    )
    port map (
      ADR3 => caracter(4),
      ADR2 => caracter(1),
      ADR4 => caracter(3),
      ADR1 => ttx(2),
      ADR5 => caracter(0),
      ADR0 => ttx(1),
      O => Mmux_tx31
    );
  cnttx_15_GND_5_o_equal_3_o_15_3_rstpot_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y86",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => ttx(3),
      ADR4 => ttx(2),
      O => N8
    );
  NlwBufferBlock_tx_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tx_OBUF_624,
      O => NlwBufferSignal_tx_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_cnttx_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_12_CLK
    );
  NlwBufferBlock_caracter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_caracter_1_CLK
    );
  NlwBufferBlock_caracter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_caracter_0_CLK
    );
  NlwBufferBlock_caracter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_caracter_4_CLK
    );
  NlwBufferBlock_caracter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_caracter_3_CLK
    );
  NlwBufferBlock_caracter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_caracter_2_CLK
    );
  NlwBufferBlock_cnttx_7_C_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_7_C_7_CLK
    );
  NlwBufferBlock_cnttx_11_C_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_11_C_11_CLK
    );
  NlwBufferBlock_cnttx_11_C_11_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_mux_9_OUT_11_Q,
      O => NlwBufferSignal_cnttx_11_C_11_IN
    );
  NlwBufferBlock_cnttx_4_C_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_4_C_4_CLK
    );
  NlwBufferBlock_cnttx_4_C_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_mux_9_OUT_4_Q,
      O => NlwBufferSignal_cnttx_4_C_4_IN
    );
  NlwBufferBlock_cnttx_5_C_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_5_C_5_CLK
    );
  NlwBufferBlock_cnttx_5_C_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_mux_9_OUT_5_Q,
      O => NlwBufferSignal_cnttx_5_C_5_IN
    );
  NlwBufferBlock_cnttx_11_P_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_11_P_11_CLK
    );
  NlwBufferBlock_cnttx_7_P_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_7_P_7_CLK
    );
  NlwBufferBlock_cnttx_7_P_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_mux_9_OUT_7_Q,
      O => NlwBufferSignal_cnttx_7_P_7_IN
    );
  NlwBufferBlock_cnttx_13_P_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_13_P_13_CLK
    );
  NlwBufferBlock_cnttx_4_P_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_4_P_4_CLK
    );
  NlwBufferBlock_cnttx_5_P_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_5_P_5_CLK
    );
  NlwBufferBlock_cnttx_13_LD_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => caracter_7_rst_OR_42_o_634,
      O => NlwBufferSignal_cnttx_13_LD_CLK
    );
  NlwBufferBlock_cnttx_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_10_CLK
    );
  NlwBufferBlock_cnttx_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_9_CLK
    );
  NlwBufferBlock_cnttx_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_8_CLK
    );
  NlwBufferBlock_cnttx_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_6_CLK
    );
  NlwBufferBlock_caracter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_caracter_7_CLK
    );
  NlwBufferBlock_caracter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_caracter_6_CLK
    );
  NlwBufferBlock_caracter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_caracter_5_CLK
    );
  NlwBufferBlock_cnttx_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_3_CLK
    );
  NlwBufferBlock_cnttx_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_2_CLK
    );
  NlwBufferBlock_cnttx_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_1_CLK
    );
  NlwBufferBlock_cnttx_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_0_CLK
    );
  NlwBufferBlock_ttx_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ttx_3_CLK
    );
  NlwBufferBlock_ttx_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ttx_2_CLK
    );
  NlwBufferBlock_cnttx_13_C_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cnttx_13_C_13_CLK
    );
  NlwBufferBlock_cnttx_13_C_13_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cnttx_15_GND_5_o_mux_9_OUT_13_Q,
      O => NlwBufferSignal_cnttx_13_C_13_IN
    );
  NlwBufferBlock_ttx_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ttx_1_CLK
    );
  NlwBufferBlock_ttx_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ttx_0_CLK
    );
  NlwBlock_Trans_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_Trans_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

