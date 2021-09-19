--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: dado_timesim.vhd
-- /___/   /\     Timestamp: Mon Sep 24 15:12:45 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf dado.pcf -rpw 100 -tpw 0 -ar Structure -tm dado -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim dado.ncd dado_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-03-26)
-- Input file	: dado.ncd
-- Output file	: C:\Users\Samuel\Desktop\Practicas_FPGa_nexys2\dado_cargado\netgen\par\dado_timesim.vhd
-- # of Entities	: 1
-- Design Name	: dado
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

entity dado is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    btn : in STD_LOGIC := 'X'; 
    d : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end dado;

architecture Structure of dado is
  signal Mram_n00396 : STD_LOGIC; 
  signal futuro_0_80 : STD_LOGIC; 
  signal Mram_n00394 : STD_LOGIC; 
  signal Mram_n00397_0 : STD_LOGIC; 
  signal futuro_3_88 : STD_LOGIC; 
  signal Mram_n00395_0 : STD_LOGIC; 
  signal futuro_2_90 : STD_LOGIC; 
  signal futuro_1_91 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal btn_IBUF_0 : STD_LOGIC; 
  signal d_0_94 : STD_LOGIC; 
  signal d_1_95 : STD_LOGIC; 
  signal d_2_96 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal Mram_n0039 : STD_LOGIC; 
  signal Mram_n00391 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_1 : STD_LOGIC; 
  signal btn_IBUF_4 : STD_LOGIC; 
  signal rst_IBUF_13 : STD_LOGIC; 
  signal Mram_n0039_pack_9 : STD_LOGIC; 
  signal Mram_n00391_pack_10 : STD_LOGIC; 
  signal Mram_n00395 : STD_LOGIC; 
  signal Mram_n00392 : STD_LOGIC; 
  signal Mram_n00397 : STD_LOGIC; 
  signal Mram_n00393 : STD_LOGIC; 
  signal NlwBufferSignal_d_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_d_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_d_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_d_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_d_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_d_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_d_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_d_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_d_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_presente_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_presente_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_presente_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_presente_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_presente_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_presente_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_presente_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_presente_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_futuro_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_futuro_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_futuro_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_futuro_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_futuro_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_futuro_3_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal presente : STD_LOGIC_VECTOR ( 3 downto 0 ); 
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
  ProtoComp4_IMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_1,
      O => clk_BUFGP_IBUFG_0
    );
  btn_IBUF : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 115 ps
    )
    port map (
      O => btn_IBUF_4,
      I => btn
    );
  ProtoComp4_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 115 ps
    )
    port map (
      I => btn_IBUF_4,
      O => btn_IBUF_0
    );
  d_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => NlwBufferSignal_d_0_OBUF_I,
      O => d(0)
    );
  d_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => NlwBufferSignal_d_1_OBUF_I,
      O => d(1)
    );
  d_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => NlwBufferSignal_d_2_OBUF_I,
      O => d(2)
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
  ProtoComp4_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 115 ps
    )
    port map (
      I => rst_IBUF_13,
      O => rst_IBUF_0
    );
  d_0 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y38",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_d_0_CLK,
      I => NlwBufferSignal_d_0_IN,
      O => d_0_94,
      RST => GND,
      SET => GND
    );
  d_1 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y37",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_d_1_CLK,
      I => NlwBufferSignal_d_1_IN,
      O => d_1_95,
      RST => GND,
      SET => GND
    );
  d_2 : X_LATCHE
    generic map(
      LOC => "OLOGIC_X27Y36",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_d_2_CLK,
      I => NlwBufferSignal_d_2_IN,
      O => d_2_96,
      RST => GND,
      SET => GND
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
  presente_3 : X_FF
    generic map(
      LOC => "SLICE_X32Y46",
      INIT => '0'
    )
    port map (
      CE => btn_IBUF_0,
      CLK => NlwBufferSignal_presente_3_CLK,
      I => NlwBufferSignal_presente_3_IN,
      O => presente(3),
      RST => rst_IBUF_0,
      SET => GND
    );
  presente_2 : X_FF
    generic map(
      LOC => "SLICE_X32Y46",
      INIT => '0'
    )
    port map (
      CE => btn_IBUF_0,
      CLK => NlwBufferSignal_presente_2_CLK,
      I => NlwBufferSignal_presente_2_IN,
      O => presente(2),
      RST => rst_IBUF_0,
      SET => GND
    );
  presente_1 : X_FF
    generic map(
      LOC => "SLICE_X32Y46",
      INIT => '0'
    )
    port map (
      CE => btn_IBUF_0,
      CLK => NlwBufferSignal_presente_1_CLK,
      I => NlwBufferSignal_presente_1_IN,
      O => presente(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  presente_0 : X_FF
    generic map(
      LOC => "SLICE_X32Y46",
      INIT => '0'
    )
    port map (
      CE => btn_IBUF_0,
      CLK => NlwBufferSignal_presente_0_CLK,
      I => NlwBufferSignal_presente_0_IN,
      O => presente(0),
      RST => rst_IBUF_0,
      SET => GND
    );
  futuro_2_futuro_2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00395,
      O => Mram_n00395_0
    );
  futuro_2_futuro_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00391_pack_10,
      O => Mram_n00391
    );
  futuro_2_futuro_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n0039_pack_9,
      O => Mram_n0039
    );
  futuro_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_futuro_2_CLK,
      I => Mram_n00392,
      O => futuro_2_90,
      RST => GND,
      SET => GND
    );
  Mram_n003921 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => X"0550550005505500"
    )
    port map (
      ADR1 => '1',
      ADR0 => presente(3),
      ADR3 => presente(2),
      ADR4 => presente(0),
      ADR2 => presente(1),
      ADR5 => '1',
      O => Mram_n00392
    );
  Mram_n003951 : X_LUT5
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => X"005F0000"
    )
    port map (
      ADR1 => '1',
      ADR0 => presente(3),
      ADR3 => presente(2),
      ADR4 => presente(0),
      ADR2 => presente(1),
      O => Mram_n00395
    );
  Mram_n003961 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => X"0F5F0F5F0F5F0F5F"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => presente(3),
      ADR3 => presente(2),
      ADR0 => presente(1),
      ADR5 => '1',
      O => Mram_n00396
    );
  Mram_n0039111 : X_LUT5
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => X"06060606"
    )
    port map (
      ADR4 => '1',
      ADR1 => presente(0),
      ADR2 => presente(3),
      ADR3 => '1',
      ADR0 => presente(1),
      O => Mram_n00391_pack_10
    );
  futuro_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_futuro_1_CLK,
      I => NlwBufferSignal_futuro_1_IN,
      O => futuro_1_91,
      RST => GND,
      SET => GND
    );
  Mram_n003941 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => X"3303330F3303330F"
    )
    port map (
      ADR0 => '1',
      ADR2 => presente(0),
      ADR4 => presente(2),
      ADR3 => presente(1),
      ADR1 => presente(3),
      ADR5 => '1',
      O => Mram_n00394
    );
  Mram_n003912 : X_LUT5
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => X"0303030F"
    )
    port map (
      ADR0 => '1',
      ADR2 => presente(0),
      ADR4 => presente(2),
      ADR3 => presente(1),
      ADR1 => presente(3),
      O => Mram_n0039_pack_9
    );
  futuro_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_futuro_0_CLK,
      I => NlwBufferSignal_futuro_0_IN,
      O => futuro_0_80,
      RST => GND,
      SET => GND
    );
  futuro_3_futuro_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00397,
      O => Mram_n00397_0
    );
  futuro_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X35Y46",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_futuro_3_CLK,
      I => Mram_n00393,
      O => futuro_3_88,
      RST => GND,
      SET => GND
    );
  Mram_n003931 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y46",
      INIT => X"0088110000881100"
    )
    port map (
      ADR2 => '1',
      ADR0 => presente(0),
      ADR1 => presente(1),
      ADR4 => presente(2),
      ADR3 => presente(3),
      ADR5 => '1',
      O => Mram_n00393
    );
  Mram_n003971 : X_LUT5
    generic map(
      LOC => "SLICE_X35Y46",
      INIT => X"00AA2200"
    )
    port map (
      ADR2 => '1',
      ADR0 => presente(0),
      ADR1 => presente(1),
      ADR4 => presente(2),
      ADR3 => presente(3),
      O => Mram_n00397
    );
  NlwBufferBlock_d_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => d_0_94,
      O => NlwBufferSignal_d_0_OBUF_I
    );
  NlwBufferBlock_d_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => d_1_95,
      O => NlwBufferSignal_d_1_OBUF_I
    );
  NlwBufferBlock_d_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => d_2_96,
      O => NlwBufferSignal_d_2_OBUF_I
    );
  NlwBufferBlock_d_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00396,
      O => NlwBufferSignal_d_0_CLK
    );
  NlwBufferBlock_d_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00394,
      O => NlwBufferSignal_d_0_IN
    );
  NlwBufferBlock_d_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00396,
      O => NlwBufferSignal_d_1_CLK
    );
  NlwBufferBlock_d_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00395_0,
      O => NlwBufferSignal_d_1_IN
    );
  NlwBufferBlock_d_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00396,
      O => NlwBufferSignal_d_2_CLK
    );
  NlwBufferBlock_d_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00397_0,
      O => NlwBufferSignal_d_2_IN
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_presente_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_presente_3_CLK
    );
  NlwBufferBlock_presente_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => futuro_3_88,
      O => NlwBufferSignal_presente_3_IN
    );
  NlwBufferBlock_presente_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_presente_2_CLK
    );
  NlwBufferBlock_presente_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => futuro_2_90,
      O => NlwBufferSignal_presente_2_IN
    );
  NlwBufferBlock_presente_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_presente_1_CLK
    );
  NlwBufferBlock_presente_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => futuro_1_91,
      O => NlwBufferSignal_presente_1_IN
    );
  NlwBufferBlock_presente_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_presente_0_CLK
    );
  NlwBufferBlock_presente_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => futuro_0_80,
      O => NlwBufferSignal_presente_0_IN
    );
  NlwBufferBlock_futuro_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00396,
      O => NlwBufferSignal_futuro_2_CLK
    );
  NlwBufferBlock_futuro_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00396,
      O => NlwBufferSignal_futuro_1_CLK
    );
  NlwBufferBlock_futuro_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00391,
      O => NlwBufferSignal_futuro_1_IN
    );
  NlwBufferBlock_futuro_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00396,
      O => NlwBufferSignal_futuro_0_CLK
    );
  NlwBufferBlock_futuro_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n0039,
      O => NlwBufferSignal_futuro_0_IN
    );
  NlwBufferBlock_futuro_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mram_n00396,
      O => NlwBufferSignal_futuro_3_CLK
    );
  NlwBlock_dado_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_dado_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

