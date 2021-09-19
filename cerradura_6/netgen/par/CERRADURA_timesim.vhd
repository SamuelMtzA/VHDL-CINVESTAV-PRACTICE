--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: CERRADURA_timesim.vhd
-- /___/   /\     Timestamp: Sat Sep 29 13:16:35 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf CERRADURA.pcf -rpw 100 -tpw 0 -ar Structure -tm CERRADURA -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim CERRADURA.ncd CERRADURA_timesim.vhd 
-- Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-03-26)
-- Input file	: CERRADURA.ncd
-- Output file	: C:\Users\Samuel\Desktop\Practicas_FPGa_nexys2\cerradura_6\netgen\par\CERRADURA_timesim.vhd
-- # of Entities	: 1
-- Design Name	: CERRADURA
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

entity CERRADURA is
  port (
    RST : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    CAP : in STD_LOGIC := 'X'; 
    ENTRADA : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    LEDS : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end CERRADURA;

architecture Structure of CERRADURA is
  signal CLK_BUFGP : STD_LOGIC; 
  signal RST_IBUF_0 : STD_LOGIC; 
  signal CAP_inv : STD_LOGIC; 
  signal ANTIR1_inv : STD_LOGIC; 
  signal MODULO_2_RESET_CONTEO_2_OR_4_o : STD_LOGIC; 
  signal MODULO_4_REGOUT_0_1_134 : STD_LOGIC; 
  signal MODULO_4_REGOUT_1_135 : STD_LOGIC; 
  signal MODULO_4_REGOUT_2_136 : STD_LOGIC; 
  signal ENTRADA_0_IBUF_0 : STD_LOGIC; 
  signal MODULO_4_REGOUT_3_138 : STD_LOGIC; 
  signal ENTRADA_1_IBUF_0 : STD_LOGIC; 
  signal ENTRADA_2_IBUF_0 : STD_LOGIC; 
  signal ENTRADA_3_IBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal COMPARADOR1_0 : STD_LOGIC; 
  signal MODULO_4_CON_2_inv : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal MODULO_4_REGOUT_0_152 : STD_LOGIC; 
  signal ENTRADA_0_IBUF_7 : STD_LOGIC; 
  signal ENTRADA_1_IBUF_12 : STD_LOGIC; 
  signal ENTRADA_2_IBUF_15 : STD_LOGIC; 
  signal ENTRADA_3_IBUF_18 : STD_LOGIC; 
  signal RST_IBUF_21 : STD_LOGIC; 
  signal ProtoComp5_IINV_OUT : STD_LOGIC; 
  signal CAP_inv_non_inverted : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_28 : STD_LOGIC; 
  signal clkdiv_4_pack_8 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal clkdiv_2_pack_6 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal MODULO_2_CONTEO_2_pack_4 : STD_LOGIC; 
  signal MODULO_5_CNT_0_pack_4 : STD_LOGIC; 
  signal MODULO_5_CNT_0_rstpot_92 : STD_LOGIC; 
  signal MODULO_5_CNT_1_rstpot_91 : STD_LOGIC; 
  signal COMPARADOR1_78 : STD_LOGIC; 
  signal NlwBufferSignal_LEDS_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LEDS_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LEDS_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LEDS_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MODULO_4_REGOUT_0_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clkdiv_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MODULO_2_CONTEO_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MODULO_2_CONTEO_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MODULO_2_CONTEO_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MODULO_5_CNT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MODULO_5_CNT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MODULO_4_REGOUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MODULO_4_REGOUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_MODULO_4_REGOUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MODULO_4_REGOUT_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_MODULO_4_REGOUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MODULO_4_REGOUT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_MODULO_4_REGOUT_0_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal clkdiv : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal MODULO_2_CONTEO : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal MODULO_5_CNT : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 4 downto 0 ); 
begin
  LEDS_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => NlwBufferSignal_LEDS_0_OBUF_I,
      O => LEDS(0)
    );
  LEDS_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => NlwBufferSignal_LEDS_1_OBUF_I,
      O => LEDS(1)
    );
  LEDS_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => NlwBufferSignal_LEDS_2_OBUF_I,
      O => LEDS(2)
    );
  ENTRADA_0_IBUF : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 115 ps
    )
    port map (
      O => ENTRADA_0_IBUF_7,
      I => ENTRADA(0)
    );
  ProtoComp4_IMUX : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 115 ps
    )
    port map (
      I => ENTRADA_0_IBUF_7,
      O => ENTRADA_0_IBUF_0
    );
  LEDS_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => NlwBufferSignal_LEDS_3_OBUF_I,
      O => LEDS(3)
    );
  ENTRADA_1_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 115 ps
    )
    port map (
      O => ENTRADA_1_IBUF_12,
      I => ENTRADA(1)
    );
  ProtoComp4_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 115 ps
    )
    port map (
      I => ENTRADA_1_IBUF_12,
      O => ENTRADA_1_IBUF_0
    );
  ENTRADA_2_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      O => ENTRADA_2_IBUF_15,
      I => ENTRADA(2)
    );
  ProtoComp4_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      I => ENTRADA_2_IBUF_15,
      O => ENTRADA_2_IBUF_0
    );
  ENTRADA_3_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 115 ps
    )
    port map (
      O => ENTRADA_3_IBUF_18,
      I => ENTRADA(3)
    );
  ProtoComp4_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 115 ps
    )
    port map (
      I => ENTRADA_3_IBUF_18,
      O => ENTRADA_3_IBUF_0
    );
  RST_IBUF : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 115 ps
    )
    port map (
      O => RST_IBUF_21,
      I => RST
    );
  ProtoComp4_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 115 ps
    )
    port map (
      I => RST_IBUF_21,
      O => RST_IBUF_0
    );
  CAP_IBUF : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 115 ps
    )
    port map (
      O => CAP_inv_non_inverted,
      I => CAP
    );
  ProtoComp5_IMUX : X_BUF
    generic map(
      LOC => "PAD262",
      PATHPULSE => 115 ps
    )
    port map (
      I => ProtoComp5_IINV_OUT,
      O => CAP_inv
    );
  ProtoComp5_IINV : X_INV
    generic map(
      LOC => "PAD262",
      PATHPULSE => 115 ps
    )
    port map (
      I => CAP_inv_non_inverted,
      O => ProtoComp5_IINV_OUT
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 115 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_28,
      I => CLK
    );
  ProtoComp4_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_28,
      O => CLK_BUFGP_IBUFG_0
    );
  MODULO_4_REGOUT_0_1 : X_FF
    generic map(
      LOC => "OLOGIC_X27Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MODULO_4_REGOUT_0_1_CLK,
      I => '1',
      O => MODULO_4_REGOUT_0_1_134,
      SET => GND,
      RST => MODULO_2_RESET_CONTEO_2_OR_4_o
    );
  CLK_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y4",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_CLK_BUFGP_BUFG_IN,
      O => CLK_BUFGP
    );
  clkdiv_3_clkdiv_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clkdiv_4_pack_8,
      O => clkdiv(4)
    );
  clkdiv_3_clkdiv_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clkdiv_2_pack_6,
      O => clkdiv(2)
    );
  clkdiv_3 : X_FF
    generic map(
      LOC => "SLICE_X38Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_3_CLK,
      I => Result(3),
      O => clkdiv(3),
      RST => RST_IBUF_0,
      SET => GND
    );
  Result_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y67",
      INIT => X"3FFFC0003FFFC000"
    )
    port map (
      ADR0 => '1',
      ADR3 => clkdiv(2),
      ADR2 => clkdiv(0),
      ADR4 => clkdiv(3),
      ADR1 => clkdiv(1),
      ADR5 => '1',
      O => Result(3)
    );
  Result_4_1 : X_LUT5
    generic map(
      LOC => "SLICE_X38Y67",
      INIT => X"6AAAAAAA"
    )
    port map (
      ADR0 => clkdiv(4),
      ADR3 => clkdiv(2),
      ADR2 => clkdiv(0),
      ADR4 => clkdiv(3),
      ADR1 => clkdiv(1),
      O => Result(4)
    );
  clkdiv_4 : X_FF
    generic map(
      LOC => "SLICE_X38Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_4_CLK,
      I => Result(4),
      O => clkdiv_4_pack_8,
      RST => RST_IBUF_0,
      SET => GND
    );
  clkdiv_1 : X_FF
    generic map(
      LOC => "SLICE_X38Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_1_CLK,
      I => Result_1_1,
      O => clkdiv(1),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mcount_clkdiv_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y67",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => clkdiv(1),
      ADR1 => clkdiv(0),
      ADR5 => '1',
      O => Result_1_1
    );
  Result_2_11 : X_LUT5
    generic map(
      LOC => "SLICE_X38Y67",
      INIT => X"6666AAAA"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR0 => clkdiv(2),
      ADR4 => clkdiv(1),
      ADR1 => clkdiv(0),
      O => Result_2_1
    );
  clkdiv_2 : X_FF
    generic map(
      LOC => "SLICE_X38Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_2_CLK,
      I => Result_2_1,
      O => clkdiv_2_pack_6,
      RST => RST_IBUF_0,
      SET => GND
    );
  clkdiv_0 : X_FF
    generic map(
      LOC => "SLICE_X38Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_clkdiv_0_CLK,
      I => Result_0_1,
      O => clkdiv(0),
      RST => RST_IBUF_0,
      SET => GND
    );
  Mcount_clkdiv_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y67",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => clkdiv(0),
      ADR4 => '1',
      ADR3 => '1',
      O => Result_0_1
    );
  MODULO_2_CONTEO_1_MODULO_2_CONTEO_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MODULO_2_CONTEO_2_pack_4,
      O => MODULO_2_CONTEO(2)
    );
  MODULO_2_RESET_CONTEO_2_OR_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y66",
      INIT => X"FFFFFFFFAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => RST_IBUF_0,
      ADR5 => MODULO_2_CONTEO(2),
      O => MODULO_2_RESET_CONTEO_2_OR_4_o
    );
  MODULO_2_CONTEO_1 : X_FF
    generic map(
      LOC => "SLICE_X39Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MODULO_2_CONTEO_1_CLK,
      I => Result(1),
      O => MODULO_2_CONTEO(1),
      RST => MODULO_2_RESET_CONTEO_2_OR_4_o,
      SET => GND
    );
  MODULO_2_Mcount_CONTEO_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y66",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MODULO_2_CONTEO(1),
      ADR0 => MODULO_2_CONTEO(0),
      ADR5 => '1',
      O => Result(1)
    );
  MODULO_2_Mcount_CONTEO_xor_2_11 : X_LUT5
    generic map(
      LOC => "SLICE_X39Y66",
      INIT => X"6666CCCC"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => MODULO_2_CONTEO(2),
      ADR4 => MODULO_2_CONTEO(1),
      ADR0 => MODULO_2_CONTEO(0),
      O => Result(2)
    );
  MODULO_2_CONTEO_2 : X_FF
    generic map(
      LOC => "SLICE_X39Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MODULO_2_CONTEO_2_CLK,
      I => Result(2),
      O => MODULO_2_CONTEO_2_pack_4,
      RST => MODULO_2_RESET_CONTEO_2_OR_4_o,
      SET => GND
    );
  MODULO_2_CONTEO_0 : X_FF
    generic map(
      LOC => "SLICE_X39Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MODULO_2_CONTEO_0_CLK,
      I => Result(0),
      O => MODULO_2_CONTEO(0),
      RST => MODULO_2_RESET_CONTEO_2_OR_4_o,
      SET => GND
    );
  MODULO_2_Mcount_CONTEO_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y66",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => MODULO_2_CONTEO(0),
      ADR4 => '1',
      ADR3 => '1',
      O => Result(0)
    );
  MODULO_5_CNT_1_MODULO_5_CNT_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => COMPARADOR1_78,
      O => COMPARADOR1_0
    );
  MODULO_5_CNT_1_MODULO_5_CNT_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MODULO_5_CNT_0_pack_4,
      O => MODULO_5_CNT(0)
    );
  ANTIR1_inv11 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y67",
      INIT => X"FFFFCFCFFFFFCFCF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => MODULO_5_CNT(1),
      ADR4 => CAP_inv,
      ADR1 => MODULO_5_CNT(0),
      ADR5 => '1',
      O => ANTIR1_inv
    );
  COMPARADOR1 : X_LUT5
    generic map(
      LOC => "SLICE_X39Y67",
      INIT => X"00000030"
    )
    port map (
      ADR0 => '1',
      ADR3 => N01,
      ADR2 => MODULO_5_CNT(1),
      ADR4 => CAP_inv,
      ADR1 => MODULO_5_CNT(0),
      O => COMPARADOR1_78
    );
  COMPARADOR1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y67",
      INIT => X"FFFF7FFDFEFDFFFF"
    )
    port map (
      ADR4 => MODULO_2_CONTEO(1),
      ADR2 => ENTRADA_2_IBUF_0,
      ADR5 => ENTRADA_1_IBUF_0,
      ADR3 => MODULO_2_CONTEO(0),
      ADR0 => ENTRADA_3_IBUF_0,
      ADR1 => ENTRADA_0_IBUF_0,
      O => N01
    );
  MODULO_5_CNT_1 : X_FF
    generic map(
      LOC => "SLICE_X39Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MODULO_5_CNT_1_CLK,
      I => MODULO_5_CNT_1_rstpot_91,
      O => MODULO_5_CNT(1),
      RST => CAP_inv,
      SET => GND
    );
  MODULO_5_CNT_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y67",
      INIT => X"FFFFCCCCFFFFCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => MODULO_5_CNT(1),
      ADR1 => MODULO_5_CNT(0),
      ADR5 => '1',
      O => MODULO_5_CNT_1_rstpot_91
    );
  MODULO_5_CNT_0_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X39Y67",
      INIT => X"FFFF3333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => MODULO_5_CNT(1),
      ADR1 => MODULO_5_CNT(0),
      O => MODULO_5_CNT_0_rstpot_92
    );
  MODULO_5_CNT_0 : X_FF
    generic map(
      LOC => "SLICE_X39Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MODULO_5_CNT_0_CLK,
      I => MODULO_5_CNT_0_rstpot_92,
      O => MODULO_5_CNT_0_pack_4,
      RST => CAP_inv,
      SET => GND
    );
  MODULO_4_CON_2_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X42Y55",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => MODULO_2_CONTEO(2),
      O => MODULO_4_CON_2_inv
    );
  MODULO_4_REGOUT_3 : X_FF
    generic map(
      LOC => "SLICE_X43Y52",
      INIT => '0'
    )
    port map (
      CE => MODULO_4_CON_2_inv,
      CLK => NlwBufferSignal_MODULO_4_REGOUT_3_CLK,
      I => NlwBufferSignal_MODULO_4_REGOUT_3_IN,
      O => MODULO_4_REGOUT_3_138,
      RST => RST_IBUF_0,
      SET => GND
    );
  MODULO_4_REGOUT_2 : X_FF
    generic map(
      LOC => "SLICE_X58Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MODULO_4_REGOUT_2_CLK,
      I => NlwBufferSignal_MODULO_4_REGOUT_2_IN,
      O => MODULO_4_REGOUT_2_136,
      RST => MODULO_2_RESET_CONTEO_2_OR_4_o,
      SET => GND
    );
  MODULO_4_REGOUT_1 : X_FF
    generic map(
      LOC => "SLICE_X58Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MODULO_4_REGOUT_1_CLK,
      I => NlwBufferSignal_MODULO_4_REGOUT_1_IN,
      O => MODULO_4_REGOUT_1_135,
      RST => MODULO_2_RESET_CONTEO_2_OR_4_o,
      SET => GND
    );
  MODULO_4_REGOUT_0 : X_FF
    generic map(
      LOC => "SLICE_X58Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MODULO_4_REGOUT_0_CLK,
      I => '1',
      O => MODULO_4_REGOUT_0_152,
      RST => MODULO_2_RESET_CONTEO_2_OR_4_o,
      SET => GND
    );
  NlwBufferBlock_LEDS_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MODULO_4_REGOUT_0_1_134,
      O => NlwBufferSignal_LEDS_0_OBUF_I
    );
  NlwBufferBlock_LEDS_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MODULO_4_REGOUT_1_135,
      O => NlwBufferSignal_LEDS_1_OBUF_I
    );
  NlwBufferBlock_LEDS_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MODULO_4_REGOUT_2_136,
      O => NlwBufferSignal_LEDS_2_OBUF_I
    );
  NlwBufferBlock_LEDS_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MODULO_4_REGOUT_3_138,
      O => NlwBufferSignal_LEDS_3_OBUF_I
    );
  NlwBufferBlock_MODULO_4_REGOUT_0_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => COMPARADOR1_0,
      O => NlwBufferSignal_MODULO_4_REGOUT_0_1_CLK
    );
  NlwBufferBlock_CLK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLK_BUFGP_BUFG_IN
    );
  NlwBufferBlock_clkdiv_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_clkdiv_3_CLK
    );
  NlwBufferBlock_clkdiv_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_clkdiv_4_CLK
    );
  NlwBufferBlock_clkdiv_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_clkdiv_1_CLK
    );
  NlwBufferBlock_clkdiv_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_clkdiv_2_CLK
    );
  NlwBufferBlock_clkdiv_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_clkdiv_0_CLK
    );
  NlwBufferBlock_MODULO_2_CONTEO_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ANTIR1_inv,
      O => NlwBufferSignal_MODULO_2_CONTEO_1_CLK
    );
  NlwBufferBlock_MODULO_2_CONTEO_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ANTIR1_inv,
      O => NlwBufferSignal_MODULO_2_CONTEO_2_CLK
    );
  NlwBufferBlock_MODULO_2_CONTEO_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ANTIR1_inv,
      O => NlwBufferSignal_MODULO_2_CONTEO_0_CLK
    );
  NlwBufferBlock_MODULO_5_CNT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clkdiv(4),
      O => NlwBufferSignal_MODULO_5_CNT_1_CLK
    );
  NlwBufferBlock_MODULO_5_CNT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clkdiv(4),
      O => NlwBufferSignal_MODULO_5_CNT_0_CLK
    );
  NlwBufferBlock_MODULO_4_REGOUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => COMPARADOR1_0,
      O => NlwBufferSignal_MODULO_4_REGOUT_3_CLK
    );
  NlwBufferBlock_MODULO_4_REGOUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MODULO_4_REGOUT_2_136,
      O => NlwBufferSignal_MODULO_4_REGOUT_3_IN
    );
  NlwBufferBlock_MODULO_4_REGOUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => COMPARADOR1_0,
      O => NlwBufferSignal_MODULO_4_REGOUT_2_CLK
    );
  NlwBufferBlock_MODULO_4_REGOUT_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MODULO_4_REGOUT_1_135,
      O => NlwBufferSignal_MODULO_4_REGOUT_2_IN
    );
  NlwBufferBlock_MODULO_4_REGOUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => COMPARADOR1_0,
      O => NlwBufferSignal_MODULO_4_REGOUT_1_CLK
    );
  NlwBufferBlock_MODULO_4_REGOUT_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MODULO_4_REGOUT_0_152,
      O => NlwBufferSignal_MODULO_4_REGOUT_1_IN
    );
  NlwBufferBlock_MODULO_4_REGOUT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => COMPARADOR1_0,
      O => NlwBufferSignal_MODULO_4_REGOUT_0_CLK
    );
  NlwBlock_CERRADURA_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_CERRADURA_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

