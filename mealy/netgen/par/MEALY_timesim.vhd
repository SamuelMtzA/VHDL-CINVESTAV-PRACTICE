--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: MEALY_timesim.vhd
-- /___/   /\     Timestamp: Mon Sep 24 15:45:34 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf MEALY.pcf -rpw 100 -tpw 0 -ar Structure -tm MEALY -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim MEALY.ncd MEALY_timesim.vhd 
-- Device	: 3s1200efg320-5 (PRODUCTION 1.27 2013-03-26)
-- Input file	: MEALY.ncd
-- Output file	: C:\Users\Samuel\Desktop\Practicas_FPGa_nexys2\mealy\netgen\par\MEALY_timesim.vhd
-- # of Entities	: 1
-- Design Name	: MEALY
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

entity MEALY is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    e : in STD_LOGIC := 'X'; 
    s : out STD_LOGIC 
  );
end MEALY;

architecture Structure of MEALY is
  signal e_IBUF_35 : STD_LOGIC; 
  signal RESET_IBUF_37 : STD_LOGIC; 
  signal s_OBUF_38 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal sreg_FSM_FFd2_41 : STD_LOGIC; 
  signal sreg_FSM_FFd1_42 : STD_LOGIC; 
  signal e_INBUF : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal RESET_INBUF : STD_LOGIC; 
  signal s_O : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal s_OBUF_DYMUX_90 : STD_LOGIC; 
  signal next_s : STD_LOGIC; 
  signal s_OBUF_CLKINV_80 : STD_LOGIC; 
  signal sreg_FSM_FFd2_FFY_RST : STD_LOGIC; 
  signal sreg_FSM_FFd2_DXMUX_132 : STD_LOGIC; 
  signal sreg_FSM_FFd2_In : STD_LOGIC; 
  signal sreg_FSM_FFd2_DYMUX_117 : STD_LOGIC; 
  signal sreg_FSM_FFd1_In : STD_LOGIC; 
  signal sreg_FSM_FFd2_SRINV_108 : STD_LOGIC; 
  signal sreg_FSM_FFd2_CLKINV_107 : STD_LOGIC; 
  signal s_OBUF_FFY_RSTAND_95 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  e_IBUF : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 555 ps
    )
    port map (
      I => e,
      O => e_INBUF
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD38",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  RESET_IBUF : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 555 ps
    )
    port map (
      I => RESET,
      O => RESET_INBUF
    );
  s_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => s_O,
      O => s
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => CLK_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  CLK_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_BUFGP_BUFG_I0_INV
    );
  s_OBUF_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y118",
      PATHPULSE => 555 ps
    )
    port map (
      I => next_s,
      O => s_OBUF_DYMUX_90
    );
  s_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y118",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => s_OBUF_CLKINV_80
    );
  sreg_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"FA00",
      LOC => "SLICE_X77Y119"
    )
    port map (
      ADR0 => e_IBUF_35,
      ADR1 => VCC,
      ADR2 => sreg_FSM_FFd2_41,
      ADR3 => sreg_FSM_FFd1_42,
      O => sreg_FSM_FFd2_In
    );
  sreg_FSM_FFd2_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X77Y119",
      PATHPULSE => 555 ps
    )
    port map (
      I => sreg_FSM_FFd2_SRINV_108,
      O => sreg_FSM_FFd2_FFY_RST
    );
  sreg_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X77Y119",
      INIT => '0'
    )
    port map (
      I => sreg_FSM_FFd2_DYMUX_117,
      CE => VCC,
      CLK => sreg_FSM_FFd2_CLKINV_107,
      SET => GND,
      RST => sreg_FSM_FFd2_FFY_RST,
      O => sreg_FSM_FFd1_42
    );
  sreg_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y119",
      PATHPULSE => 555 ps
    )
    port map (
      I => sreg_FSM_FFd2_In,
      O => sreg_FSM_FFd2_DXMUX_132
    );
  sreg_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y119",
      PATHPULSE => 555 ps
    )
    port map (
      I => sreg_FSM_FFd1_In,
      O => sreg_FSM_FFd2_DYMUX_117
    );
  sreg_FSM_FFd2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y119",
      PATHPULSE => 555 ps
    )
    port map (
      I => RESET_IBUF_37,
      O => sreg_FSM_FFd2_SRINV_108
    );
  sreg_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y119",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => sreg_FSM_FFd2_CLKINV_107
    );
  sreg_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"3FCC",
      LOC => "SLICE_X77Y119"
    )
    port map (
      ADR0 => VCC,
      ADR1 => sreg_FSM_FFd1_42,
      ADR2 => sreg_FSM_FFd2_41,
      ADR3 => e_IBUF_35,
      O => sreg_FSM_FFd1_In
    );
  e_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 555 ps
    )
    port map (
      I => e_INBUF,
      O => e_IBUF_35
    );
  RESET_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 555 ps
    )
    port map (
      I => RESET_INBUF,
      O => RESET_IBUF_37
    );
  next_s1 : X_LUT4
    generic map(
      INIT => X"CC3C",
      LOC => "SLICE_X76Y118"
    )
    port map (
      ADR0 => VCC,
      ADR1 => e_IBUF_35,
      ADR2 => sreg_FSM_FFd1_42,
      ADR3 => sreg_FSM_FFd2_41,
      O => next_s
    );
  s_57 : X_FF
    generic map(
      LOC => "SLICE_X76Y118",
      INIT => '0'
    )
    port map (
      I => s_OBUF_DYMUX_90,
      CE => VCC,
      CLK => s_OBUF_CLKINV_80,
      SET => GND,
      RST => s_OBUF_FFY_RSTAND_95,
      O => s_OBUF_38
    );
  s_OBUF_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X76Y118",
      PATHPULSE => 555 ps
    )
    port map (
      I => RESET_IBUF_37,
      O => s_OBUF_FFY_RSTAND_95
    );
  sreg_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X77Y119",
      INIT => '0'
    )
    port map (
      I => sreg_FSM_FFd2_DXMUX_132,
      CE => VCC,
      CLK => sreg_FSM_FFd2_CLKINV_107,
      SET => GND,
      RST => sreg_FSM_FFd2_SRINV_108,
      O => sreg_FSM_FFd2_41
    );
  s_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 555 ps
    )
    port map (
      I => s_OBUF_38,
      O => s_O
    );
  NlwBlock_MEALY_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_MEALY_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

