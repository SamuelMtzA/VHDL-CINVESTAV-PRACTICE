////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: convertidor_translate.v
// /___/   /\     Timestamp: Wed Sep 12 20:02:45 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim convertidor.ngd convertidor_translate.v 
// Device	: 3s1200efg320-5
// Input file	: convertidor.ngd
// Output file	: C:\Users\Samuel\Desktop\Practicas_FPGa_nexys2\convertidor_grey\netgen\translate\convertidor_translate.v
// # of Modules	: 1
// Design Name	: convertidor
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

module convertidor (
g, b
);
  output [3 : 0] g;
  input [3 : 0] b;
  wire b_0_IBUF_4;
  wire b_1_IBUF_5;
  wire b_2_IBUF_6;
  wire g_0_OBUF_11;
  wire g_1_OBUF_12;
  wire g_2_OBUF_13;
  wire g_3_OBUF_14;
  wire [3 : 0] NlwRenamedSig_IO_b;
  assign
    NlwRenamedSig_IO_b[3] = b[3],
    NlwRenamedSig_IO_b[2] = b[2],
    NlwRenamedSig_IO_b[1] = b[1],
    NlwRenamedSig_IO_b[0] = b[0];
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_g_Result<2>1  (
    .ADR0(g_3_OBUF_14),
    .ADR1(b_2_IBUF_6),
    .O(g_2_OBUF_13)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_g_Result<1>1  (
    .ADR0(b_2_IBUF_6),
    .ADR1(b_1_IBUF_5),
    .O(g_1_OBUF_12)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_g_Result<0>1  (
    .ADR0(b_1_IBUF_5),
    .ADR1(b_0_IBUF_4),
    .O(g_0_OBUF_11)
  );
  X_BUF   b_3_IBUF (
    .I(NlwRenamedSig_IO_b[3]),
    .O(g_3_OBUF_14)
  );
  X_BUF   b_2_IBUF (
    .I(NlwRenamedSig_IO_b[2]),
    .O(b_2_IBUF_6)
  );
  X_BUF   b_1_IBUF (
    .I(NlwRenamedSig_IO_b[1]),
    .O(b_1_IBUF_5)
  );
  X_BUF   b_0_IBUF (
    .I(NlwRenamedSig_IO_b[0]),
    .O(b_0_IBUF_4)
  );
  X_IPAD #(
    .LOC ( "L13" ))
  \b<0>  (
    .PAD(NlwRenamedSig_IO_b[0])
  );
  X_IPAD #(
    .LOC ( "L14" ))
  \b<1>  (
    .PAD(NlwRenamedSig_IO_b[1])
  );
  X_IPAD #(
    .LOC ( "H18" ))
  \b<2>  (
    .PAD(NlwRenamedSig_IO_b[2])
  );
  X_IPAD #(
    .LOC ( "N17" ))
  \b<3>  (
    .PAD(NlwRenamedSig_IO_b[3])
  );
  X_OPAD #(
    .LOC ( "F12" ))
  \g<0>  (
    .PAD(g[0])
  );
  X_OPAD #(
    .LOC ( "E12" ))
  \g<1>  (
    .PAD(g[1])
  );
  X_OPAD #(
    .LOC ( "E11" ))
  \g<2>  (
    .PAD(g[2])
  );
  X_OPAD #(
    .LOC ( "F11" ))
  \g<3>  (
    .PAD(g[3])
  );
  X_PU   \b<0>_PULLUP  (
    .O(NlwRenamedSig_IO_b[0])
  );
  X_PU   \b<1>_PULLUP  (
    .O(NlwRenamedSig_IO_b[1])
  );
  X_PU   \b<2>_PULLUP  (
    .O(NlwRenamedSig_IO_b[2])
  );
  X_PU   \b<3>_PULLUP  (
    .O(NlwRenamedSig_IO_b[3])
  );
  X_OBUF   g_0_OBUF (
    .I(g_0_OBUF_11),
    .O(g[0])
  );
  X_OBUF   g_1_OBUF (
    .I(g_1_OBUF_12),
    .O(g[1])
  );
  X_OBUF   g_2_OBUF (
    .I(g_2_OBUF_13),
    .O(g[2])
  );
  X_OBUF   g_3_OBUF (
    .I(g_3_OBUF_14),
    .O(g[3])
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

