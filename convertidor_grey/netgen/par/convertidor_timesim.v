////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: convertidor_timesim.v
// /___/   /\     Timestamp: Sun Sep 16 13:20:50 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf convertidor.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim convertidor.ncd convertidor_timesim.v 
// Device	: 3s1200efg320-5 (PRODUCTION 1.27 2013-03-26)
// Input file	: convertidor.ncd
// Output file	: C:\Users\Samuel\Desktop\Practicas_FPGa_nexys2\convertidor_grey\netgen\par\convertidor_timesim.v
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
  wire g_3_OBUF_36;
  wire b_0_IBUF_37;
  wire b_1_IBUF_38;
  wire b_2_IBUF_39;
  wire \g<0>/O ;
  wire \g<1>/O ;
  wire \g<2>/O ;
  wire \g<3>/O ;
  wire \b<0>/INBUF ;
  wire \b<1>/INBUF ;
  wire \b<2>/INBUF ;
  wire \b<3>/INBUF ;
  wire g_1_OBUF_117;
  wire g_0_OBUF_108;
  wire g_2_OBUF_129;
  wire VCC;
  wire [3 : 0] NlwRenamedSig_IO_b;
  assign
    NlwRenamedSig_IO_b[3] = b[3],
    NlwRenamedSig_IO_b[2] = b[2],
    NlwRenamedSig_IO_b[1] = b[1],
    NlwRenamedSig_IO_b[0] = b[0];
  initial $sdf_annotate("netgen/par/convertidor_timesim.sdf");
  X_OPAD #(
    .LOC ( "PAD56" ))
  \g<0>/PAD  (
    .PAD(g[0])
  );
  X_OBUF #(
    .LOC ( "PAD56" ))
  g_0_OBUF (
    .I(\g<0>/O ),
    .O(g[0])
  );
  X_OPAD #(
    .LOC ( "PAD55" ))
  \g<1>/PAD  (
    .PAD(g[1])
  );
  X_OBUF #(
    .LOC ( "PAD55" ))
  g_1_OBUF (
    .I(\g<1>/O ),
    .O(g[1])
  );
  X_OPAD #(
    .LOC ( "PAD51" ))
  \g<2>/PAD  (
    .PAD(g[2])
  );
  X_OBUF #(
    .LOC ( "PAD51" ))
  g_2_OBUF (
    .I(\g<2>/O ),
    .O(g[2])
  );
  X_OPAD #(
    .LOC ( "PAD50" ))
  \g<3>/PAD  (
    .PAD(g[3])
  );
  X_OBUF #(
    .LOC ( "PAD50" ))
  g_3_OBUF (
    .I(\g<3>/O ),
    .O(g[3])
  );
  X_IPAD #(
    .LOC ( "IPAD126" ))
  \b<0>/PAD  (
    .PAD(NlwRenamedSig_IO_b[0])
  );
  X_PU #(
    .LOC ( "IPAD126" ))
  \b<0>/PULLUP  (
    .O(NlwRenamedSig_IO_b[0])
  );
  X_BUF #(
    .LOC ( "IPAD126" ))
  b_0_IBUF (
    .I(NlwRenamedSig_IO_b[0]),
    .O(\b<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD131" ))
  \b<1>/PAD  (
    .PAD(NlwRenamedSig_IO_b[1])
  );
  X_PU #(
    .LOC ( "IPAD131" ))
  \b<1>/PULLUP  (
    .O(NlwRenamedSig_IO_b[1])
  );
  X_BUF #(
    .LOC ( "IPAD131" ))
  b_1_IBUF (
    .I(NlwRenamedSig_IO_b[1]),
    .O(\b<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD111" ))
  \b<2>/PAD  (
    .PAD(NlwRenamedSig_IO_b[2])
  );
  X_PU #(
    .LOC ( "IPAD111" ))
  \b<2>/PULLUP  (
    .O(NlwRenamedSig_IO_b[2])
  );
  X_BUF #(
    .LOC ( "IPAD111" ))
  b_2_IBUF (
    .I(NlwRenamedSig_IO_b[2]),
    .O(\b<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD136" ))
  \b<3>/PAD  (
    .PAD(NlwRenamedSig_IO_b[3])
  );
  X_PU #(
    .LOC ( "IPAD136" ))
  \b<3>/PULLUP  (
    .O(NlwRenamedSig_IO_b[3])
  );
  X_BUF #(
    .LOC ( "IPAD136" ))
  b_3_IBUF (
    .I(NlwRenamedSig_IO_b[3]),
    .O(\b<3>/INBUF )
  );
  X_LUT4 #(
    .INIT ( 16'h55AA ),
    .LOC ( "SLICE_X77Y77" ))
  \Mxor_g_Result<2>1  (
    .ADR0(b_2_IBUF_39),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(g_3_OBUF_36),
    .O(g_2_OBUF_129)
  );
  X_BUF #(
    .LOC ( "IPAD126" ))
  \b<0>/IFF/IMUX  (
    .I(\b<0>/INBUF ),
    .O(b_0_IBUF_37)
  );
  X_BUF #(
    .LOC ( "IPAD131" ))
  \b<1>/IFF/IMUX  (
    .I(\b<1>/INBUF ),
    .O(b_1_IBUF_38)
  );
  X_BUF #(
    .LOC ( "IPAD111" ))
  \b<2>/IFF/IMUX  (
    .I(\b<2>/INBUF ),
    .O(b_2_IBUF_39)
  );
  X_BUF #(
    .LOC ( "IPAD136" ))
  \b<3>/IFF/IMUX  (
    .I(\b<3>/INBUF ),
    .O(g_3_OBUF_36)
  );
  X_LUT4 #(
    .INIT ( 16'h5A5A ),
    .LOC ( "SLICE_X79Y74" ))
  \Mxor_g_Result<0>1  (
    .ADR0(b_1_IBUF_38),
    .ADR1(VCC),
    .ADR2(b_0_IBUF_37),
    .ADR3(VCC),
    .O(g_0_OBUF_108)
  );
  X_LUT4 #(
    .INIT ( 16'h55AA ),
    .LOC ( "SLICE_X79Y74" ))
  \Mxor_g_Result<1>1  (
    .ADR0(b_1_IBUF_38),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(b_2_IBUF_39),
    .O(g_1_OBUF_117)
  );
  X_BUF #(
    .LOC ( "PAD56" ))
  \g<0>/OUTPUT/OFF/OMUX  (
    .I(g_0_OBUF_108),
    .O(\g<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD55" ))
  \g<1>/OUTPUT/OFF/OMUX  (
    .I(g_1_OBUF_117),
    .O(\g<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD51" ))
  \g<2>/OUTPUT/OFF/OMUX  (
    .I(g_2_OBUF_129),
    .O(\g<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD50" ))
  \g<3>/OUTPUT/OFF/OMUX  (
    .I(g_3_OBUF_36),
    .O(\g<3>/O )
  );
  X_ONE   NlwBlock_convertidor_VCC (
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

