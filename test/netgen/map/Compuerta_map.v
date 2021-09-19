////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: Compuerta_map.v
// /___/   /\     Timestamp: Tue Feb 13 20:37:19 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf Compuerta.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim Compuerta_map.ncd Compuerta_map.v 
// Device	: 3s1200efg320-4 (PRODUCTION 1.27 2013-03-26)
// Input file	: Compuerta_map.ncd
// Output file	: C:\Users\Samuel\Desktop\Practicas_FPGa_nexys2\test\netgen\map\Compuerta_map.v
// # of Modules	: 1
// Design Name	: Compuerta
// Xilinx        : C:\Xilinx\14.5\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Compuerta (
  a, b, c
);
  input a;
  input b;
  output c;
  wire a_IBUF_12;
  wire b_IBUF_13;
  wire \a/INBUF ;
  wire \b/INBUF ;
  wire \c/O ;
  wire c_OBUF_44;
  wire VCC;
  initial $sdf_annotate("netgen/map/compuerta_map.sdf");
  X_IPAD   \a/PAD  (
    .PAD(a)
  );
  X_BUF   a_IBUF (
    .I(a),
    .O(\a/INBUF )
  );
  X_IPAD   \b/PAD  (
    .PAD(b)
  );
  X_BUF   b_IBUF (
    .I(b),
    .O(\b/INBUF )
  );
  X_OPAD   \c/PAD  (
    .PAD(c)
  );
  X_OBUF   c_OBUF (
    .I(\c/O ),
    .O(c)
  );
  X_BUF   \a/IFF/IMUX  (
    .I(\a/INBUF ),
    .O(a_IBUF_12)
  );
  X_BUF   \b/IFF/IMUX  (
    .I(\b/INBUF ),
    .O(b_IBUF_13)
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  c1 (
    .ADR0(a_IBUF_12),
    .ADR1(b_IBUF_13),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(c_OBUF_44)
  );
  X_BUF   \c/OUTPUT/OFF/OMUX  (
    .I(c_OBUF_44),
    .O(\c/O )
  );
  X_ONE   NlwBlock_Compuerta_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

