--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: contador_timesim.vhd
-- /___/   /\     Timestamp: Mon Sep 24 16:06:52 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf contador.pcf -rpw 100 -tpw 0 -ar Structure -tm contador -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim contador.ncd contador_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-03-26)
-- Input file	: contador.ncd
-- Output file	: C:\Users\Samuel\Desktop\Practicas_FPGa_nexys2\contador_6\netgen\par\contador_timesim.vhd
-- # of Entities	: 1
-- Design Name	: contador
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

entity contador is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    ud : in STD_LOGIC := 'X'; 
    q : inout STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end contador;

architecture Structure of contador is
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal ud_IBUF_0 : STD_LOGIC; 
  signal q_1_127 : STD_LOGIC; 
  signal q_2_128 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal q_3_130 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal cont_0_132 : STD_LOGIC; 
  signal cont_1_LDC_133 : STD_LOGIC; 
  signal cont_1_P_1_134 : STD_LOGIC; 
  signal cont_1_C_1_135 : STD_LOGIC; 
  signal GND_5_o_cont_3_mux_11_OUT_3_Q : STD_LOGIC; 
  signal cont_3 : STD_LOGIC; 
  signal GND_5_o_cont_3_mux_11_OUT_2_Q : STD_LOGIC; 
  signal cont_2_LDC_139 : STD_LOGIC; 
  signal cont_2_P_2_140 : STD_LOGIC; 
  signal cont_2_C_2_141 : STD_LOGIC; 
  signal cont_3_LDC_142 : STD_LOGIC; 
  signal cont_3_P_3_143 : STD_LOGIC; 
  signal cont_3_C_3_144 : STD_LOGIC; 
  signal rst_q_3_AND_2_o : STD_LOGIC; 
  signal GND_5_o_cont_3_mux_11_OUT_1_Q : STD_LOGIC; 
  signal rst_q_1_AND_5_o : STD_LOGIC; 
  signal rst_q_2_AND_4_o : STD_LOGIC; 
  signal rst_q_1_AND_6_o : STD_LOGIC; 
  signal rst_q_2_AND_3_o : STD_LOGIC; 
  signal rst_q_3_AND_1_o : STD_LOGIC; 
  signal cont_1 : STD_LOGIC; 
  signal cont_2 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_1 : STD_LOGIC; 
  signal ud_IBUF_4 : STD_LOGIC; 
  signal rst_IBUF_13 : STD_LOGIC; 
  signal GND_5_o_cont_3_mux_11_OUT_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_q_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_q_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_q_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_cont_3_LDC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cont_3_C_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cont_3_C_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_cont_2_P_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cont_2_P_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_cont_2_LDC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cont_3_P_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cont_3_P_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_cont_2_C_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cont_2_C_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_cont_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cont_1_C_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cont_1_C_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_q_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_q_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_q_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cont_1_P_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cont_1_LDC_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
begin
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 115 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_1,
      I => clk
    );
  ProtoComp0_IMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_1,
      O => clk_BUFGP_IBUFG_0
    );
  ud_IBUF : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 115 ps
    )
    port map (
      O => ud_IBUF_4,
      I => ud
    );
  ProtoComp0_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 115 ps
    )
    port map (
      I => ud_IBUF_4,
      O => ud_IBUF_0
    );
  q_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => '1',
      O => q(0)
    );
  q_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => NlwBufferSignal_q_1_OBUF_I,
      O => q(1)
    );
  q_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => NlwBufferSignal_q_2_OBUF_I,
      O => q(2)
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 115 ps
    )
    port map (
      O => rst_IBUF_13,
      I => rst
    );
  ProtoComp0_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 115 ps
    )
    port map (
      I => rst_IBUF_13,
      O => rst_IBUF_0
    );
  q_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => NlwBufferSignal_q_3_OBUF_I,
      O => q(3)
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
  cont_3_LDC : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y73",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_cont_3_LDC_CLK,
      I => '1',
      O => cont_3_LDC_142,
      RST => rst_q_3_AND_2_o,
      SET => GND
    );
  cont_3_C_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y74",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cont_3_C_3_CLK,
      I => NlwBufferSignal_cont_3_C_3_IN,
      O => cont_3_C_3_144,
      RST => rst_q_3_AND_2_o,
      SET => GND
    );
  rst_q_3_AND_2_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y74",
      INIT => X"00000000AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => rst_IBUF_0,
      ADR5 => q_3_130,
      O => rst_q_3_AND_2_o
    );
  cont_2_P_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y79",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cont_2_P_2_CLK,
      I => NlwBufferSignal_cont_2_P_2_IN,
      O => cont_2_P_2_140,
      SET => rst_q_2_AND_3_o,
      RST => GND
    );
  rst_q_2_AND_3_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y79",
      INIT => X"CC00CC00CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => rst_IBUF_0,
      ADR3 => q_2_128,
      O => rst_q_2_AND_3_o
    );
  cont_2_LDC : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y80",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_cont_2_LDC_CLK,
      I => '1',
      O => cont_2_LDC_139,
      RST => rst_q_2_AND_4_o,
      SET => GND
    );
  cont_3_P_3 : X_FF
    generic map(
      LOC => "SLICE_X27Y74",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cont_3_P_3_CLK,
      I => NlwBufferSignal_cont_3_P_3_IN,
      O => cont_3_P_3_143,
      SET => rst_q_3_AND_1_o,
      RST => GND
    );
  rst_q_3_AND_1_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y74",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => rst_IBUF_0,
      ADR4 => q_3_130,
      O => rst_q_3_AND_1_o
    );
  cont_2_C_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y79",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cont_2_C_2_CLK,
      I => NlwBufferSignal_cont_2_C_2_IN,
      O => cont_2_C_2_141,
      RST => rst_q_2_AND_4_o,
      SET => GND
    );
  rst_q_2_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y79",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => rst_IBUF_0,
      ADR3 => q_2_128,
      O => rst_q_2_AND_4_o
    );
  cont_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y79",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cont_0_CLK,
      I => GND_5_o_cont_3_mux_11_OUT_0_Q,
      O => cont_0_132,
      SET => rst_IBUF_0,
      RST => GND
    );
  GND_5_o_cont_3_mux_11_OUT_0_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y79",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => cont_0_132,
      ADR3 => '1',
      ADR5 => '1',
      O => GND_5_o_cont_3_mux_11_OUT_0_Q
    );
  cont_1_C_1 : X_FF
    generic map(
      LOC => "SLICE_X28Y80",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cont_1_C_1_CLK,
      I => NlwBufferSignal_cont_1_C_1_IN,
      O => cont_1_C_1_135,
      RST => rst_q_1_AND_6_o,
      SET => GND
    );
  rst_q_1_AND_6_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y80",
      INIT => X"00000000CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => rst_IBUF_0,
      ADR5 => q_1_127,
      O => rst_q_1_AND_6_o
    );
  q_3 : X_FF
    generic map(
      LOC => "SLICE_X29Y74",
      INIT => '0'
    )
    port map (
      CE => cont_0_132,
      CLK => NlwBufferSignal_q_3_CLK,
      I => cont_3,
      O => q_3_130,
      RST => rst_IBUF_0,
      SET => GND
    );
  cont_31 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y74",
      INIT => X"FFFFAAAA55550000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => cont_3_LDC_142,
      ADR5 => cont_3_P_3_143,
      ADR4 => cont_3_C_3_144,
      O => cont_3
    );
  q_2 : X_FF
    generic map(
      LOC => "SLICE_X29Y79",
      INIT => '0'
    )
    port map (
      CE => cont_0_132,
      CLK => NlwBufferSignal_q_2_CLK,
      I => cont_2,
      O => q_2_128,
      RST => rst_IBUF_0,
      SET => GND
    );
  cont_21 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y79",
      INIT => X"FFF0FFF00F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => cont_2_LDC_139,
      ADR5 => cont_2_P_2_140,
      ADR3 => cont_2_C_2_141,
      O => cont_2
    );
  GND_5_o_cont_3_mux_11_OUT_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y79",
      INIT => X"37FEBFDCC8014023"
    )
    port map (
      ADR1 => ud_IBUF_0,
      ADR3 => cont_0_132,
      ADR0 => cont_1_LDC_133,
      ADR4 => cont_1_P_1_134,
      ADR2 => cont_1_C_1_135,
      ADR5 => cont_2,
      O => GND_5_o_cont_3_mux_11_OUT_2_Q
    );
  GND_5_o_cont_3_mux_11_OUT_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y79",
      INIT => X"7F7FFEFE80800101"
    )
    port map (
      ADR3 => '1',
      ADR0 => ud_IBUF_0,
      ADR2 => cont_0_132,
      ADR5 => cont_3,
      ADR1 => cont_2,
      ADR4 => cont_1,
      O => GND_5_o_cont_3_mux_11_OUT_3_Q
    );
  q_1 : X_FF
    generic map(
      LOC => "SLICE_X29Y79",
      INIT => '0'
    )
    port map (
      CE => cont_0_132,
      CLK => NlwBufferSignal_q_1_CLK,
      I => cont_1,
      O => q_1_127,
      RST => rst_IBUF_0,
      SET => GND
    );
  cont_11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y79",
      INIT => X"FF0FFF0FF000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => cont_1_LDC_133,
      ADR3 => cont_1_P_1_134,
      ADR5 => cont_1_C_1_135,
      O => cont_1
    );
  rst_q_1_AND_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y80",
      INIT => X"AAAAAAAA00000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => rst_IBUF_0,
      ADR0 => q_1_127,
      O => rst_q_1_AND_5_o
    );
  cont_1_P_1 : X_FF
    generic map(
      LOC => "SLICE_X29Y80",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_cont_1_P_1_CLK,
      I => GND_5_o_cont_3_mux_11_OUT_1_Q,
      O => cont_1_P_1_134,
      SET => rst_q_1_AND_5_o,
      RST => GND
    );
  GND_5_o_cont_3_mux_11_OUT_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y80",
      INIT => X"6666669999669999"
    )
    port map (
      ADR2 => '1',
      ADR1 => ud_IBUF_0,
      ADR0 => cont_0_132,
      ADR5 => cont_1_P_1_134,
      ADR3 => cont_1_LDC_133,
      ADR4 => cont_1_C_1_135,
      O => GND_5_o_cont_3_mux_11_OUT_1_Q
    );
  cont_1_LDC : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y81",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_cont_1_LDC_CLK,
      I => '1',
      O => cont_1_LDC_133,
      RST => rst_q_1_AND_6_o,
      SET => GND
    );
  NlwBufferBlock_q_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => q_1_127,
      O => NlwBufferSignal_q_1_OBUF_I
    );
  NlwBufferBlock_q_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => q_2_128,
      O => NlwBufferSignal_q_2_OBUF_I
    );
  NlwBufferBlock_q_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => q_3_130,
      O => NlwBufferSignal_q_3_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_cont_3_LDC_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => rst_q_3_AND_1_o,
      O => NlwBufferSignal_cont_3_LDC_CLK
    );
  NlwBufferBlock_cont_3_C_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cont_3_C_3_CLK
    );
  NlwBufferBlock_cont_3_C_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => GND_5_o_cont_3_mux_11_OUT_3_Q,
      O => NlwBufferSignal_cont_3_C_3_IN
    );
  NlwBufferBlock_cont_2_P_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cont_2_P_2_CLK
    );
  NlwBufferBlock_cont_2_P_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => GND_5_o_cont_3_mux_11_OUT_2_Q,
      O => NlwBufferSignal_cont_2_P_2_IN
    );
  NlwBufferBlock_cont_2_LDC_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => rst_q_2_AND_3_o,
      O => NlwBufferSignal_cont_2_LDC_CLK
    );
  NlwBufferBlock_cont_3_P_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cont_3_P_3_CLK
    );
  NlwBufferBlock_cont_3_P_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => GND_5_o_cont_3_mux_11_OUT_3_Q,
      O => NlwBufferSignal_cont_3_P_3_IN
    );
  NlwBufferBlock_cont_2_C_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cont_2_C_2_CLK
    );
  NlwBufferBlock_cont_2_C_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => GND_5_o_cont_3_mux_11_OUT_2_Q,
      O => NlwBufferSignal_cont_2_C_2_IN
    );
  NlwBufferBlock_cont_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cont_0_CLK
    );
  NlwBufferBlock_cont_1_C_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cont_1_C_1_CLK
    );
  NlwBufferBlock_cont_1_C_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => GND_5_o_cont_3_mux_11_OUT_1_Q,
      O => NlwBufferSignal_cont_1_C_1_IN
    );
  NlwBufferBlock_q_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_q_3_CLK
    );
  NlwBufferBlock_q_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_q_2_CLK
    );
  NlwBufferBlock_q_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_q_1_CLK
    );
  NlwBufferBlock_cont_1_P_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_cont_1_P_1_CLK
    );
  NlwBufferBlock_cont_1_LDC_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => rst_q_1_AND_5_o,
      O => NlwBufferSignal_cont_1_LDC_CLK
    );
  NlwBlock_contador_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_contador_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

