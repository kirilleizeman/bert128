// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed May 23 17:57:08 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_serial_pipeline_delay_0_1/design_1_serial_pipeline_delay_0_1_sim_netlist.v
// Design      : design_1_serial_pipeline_delay_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_serial_pipeline_delay_0_1,serial_pipeline_delay,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "serial_pipeline_delay,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_serial_pipeline_delay_0_1
   (clk,
    delayin,
    delayout);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk" *) input clk;
  input delayin;
  output delayout;

  wire clk;
  wire delayin;
  wire delayout;

  design_1_serial_pipeline_delay_0_1_serial_pipeline_delay U0
       (.clk(clk),
        .delayin(delayin),
        .delayout(delayout));
endmodule

(* ORIG_REF_NAME = "serial_pipeline_delay" *) 
module design_1_serial_pipeline_delay_0_1_serial_pipeline_delay
   (delayout,
    delayin,
    clk);
  output delayout;
  input delayin;
  input clk;

  wire clk;
  wire delayin;
  wire delayout;
  wire \temp_reg[19]_srl19_n_0 ;
  wire \temp_reg_n_0_[0] ;
  wire \NLW_temp_reg[19]_srl19_Q31_UNCONNECTED ;

  FDRE \temp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(delayin),
        .Q(\temp_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "\U0/temp_reg " *) 
  (* srl_name = "\U0/temp_reg[19]_srl19 " *) 
  SRLC32E \temp_reg[19]_srl19 
       (.A({1'b1,1'b0,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\temp_reg_n_0_[0] ),
        .Q(\temp_reg[19]_srl19_n_0 ),
        .Q31(\NLW_temp_reg[19]_srl19_Q31_UNCONNECTED ));
  FDRE \temp_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\temp_reg[19]_srl19_n_0 ),
        .Q(delayout),
        .R(1'b0));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
