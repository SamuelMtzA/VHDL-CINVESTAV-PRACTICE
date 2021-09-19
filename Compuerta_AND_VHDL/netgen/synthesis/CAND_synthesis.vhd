--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: CAND_synthesis.vhd
-- /___/   /\     Timestamp: Sun Sep 02 21:41:32 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm CAND -w -dir netgen/synthesis -ofmt vhdl -sim CAND.ngc CAND_synthesis.vhd 
-- Device	: xc3s1200e-4-fg320
-- Input file	: CAND.ngc
-- Output file	: C:\Users\Samuel\Desktop\Practicas_FPGa_nexys2\Compuerta_AND_VHDL\netgen\synthesis\CAND_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: CAND
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity CAND is
  port (
    a : in STD_LOGIC := 'X'; 
    b : in STD_LOGIC := 'X'; 
    c : out STD_LOGIC 
  );
end CAND;

architecture Structure of CAND is
  signal a_IBUF_1 : STD_LOGIC; 
  signal b_IBUF_3 : STD_LOGIC; 
  signal c_OBUF_5 : STD_LOGIC; 
begin
  c1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => a_IBUF_1,
      I1 => b_IBUF_3,
      O => c_OBUF_5
    );
  a_IBUF : IBUF
    port map (
      I => a,
      O => a_IBUF_1
    );
  b_IBUF : IBUF
    port map (
      I => b,
      O => b_IBUF_3
    );
  c_OBUF : OBUF
    port map (
      I => c_OBUF_5,
      O => c
    );

end Structure;

