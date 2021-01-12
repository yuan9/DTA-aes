
module nand_tablegen ( m_in0, m_in1, m_out, \t[7] , \t[6] , \t[5] , \t[4] , 
        \t[3]_BAR , \t[2]_BAR , \t[1]_BAR , \t[0]_BAR  );
  input m_in0, m_in1, m_out;
  output \t[7] , \t[6] , \t[5] , \t[4] , \t[3]_BAR , \t[2]_BAR , \t[1]_BAR ,
         \t[0]_BAR ;
  wire   \t[4] , \t[6] , \t[5] , \t[7] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10;
  assign \t[0]_BAR  = \t[4] ;
  assign \t[2]_BAR  = \t[6] ;
  assign \t[1]_BAR  = \t[5] ;
  assign \t[3]_BAR  = \t[7] ;

  INVX1 U1 ( .A(m_out), .Y(n10) );
  NOR2X1 U2 ( .A(m_in0), .B(m_in1), .Y(n2) );
  NAND2X1 U3 ( .A(n2), .B(m_out), .Y(n1) );
  OAI21XL U4 ( .A0(n2), .A1(m_out), .B0(n1), .Y(\t[7] ) );
  INVX1 U5 ( .A(m_in1), .Y(n5) );
  NOR2X1 U6 ( .A(n5), .B(m_in0), .Y(n4) );
  NAND2X1 U7 ( .A(n4), .B(m_out), .Y(n3) );
  OAI21XL U8 ( .A0(n4), .A1(m_out), .B0(n3), .Y(\t[5] ) );
  NAND2X1 U9 ( .A(n5), .B(m_in0), .Y(n7) );
  NAND2X1 U10 ( .A(n10), .B(n7), .Y(n6) );
  OAI21XL U11 ( .A0(n10), .A1(n7), .B0(n6), .Y(\t[6] ) );
  NAND2X1 U12 ( .A(m_in0), .B(m_in1), .Y(n9) );
  NAND2X1 U13 ( .A(n10), .B(n9), .Y(n8) );
  OAI21XL U14 ( .A0(n10), .A1(n9), .B0(n8), .Y(\t[4] ) );
endmodule


module boolean_mask_dualrail_1 ( in, mask, in_m, in_m_bar );
  input in, mask;
  output in_m, in_m_bar;


  XNOR2X1 U1 ( .A(in), .B(mask), .Y(in_m_bar) );
  INVX1 U2 ( .A(in_m_bar), .Y(in_m) );
endmodule


module and3_lib ( in0, in1, in2, out );
  input in0, in1, in2;
  output out;


  AND3X1 and3_inst ( .A(in0), .B(in1), .C(in2), .Y(out) );
endmodule


module or4_lib ( in0, in1, in2, in3, out );
  input in0, in1, in2, in3;
  output out;


  OR4X1 or4_inst ( .A(in0), .B(in1), .C(in2), .D(in3), .Y(out) );
endmodule


module lmdpl_nl_gate ( t, a_m, a_m_bar, b_m, b_m_bar, q_m, q_m_bar );
  input [7:0] t;
  input a_m, a_m_bar, b_m, b_m_bar;
  output q_m, q_m_bar;

  wire   [7:0] and_out;

  and3_lib and3_inst_0 ( .in0(t[0]), .in1(a_m_bar), .in2(b_m_bar), .out(
        and_out[0]) );
  and3_lib and3_inst_1 ( .in0(t[1]), .in1(a_m), .in2(b_m_bar), .out(and_out[1]) );
  and3_lib and3_inst_2 ( .in0(t[2]), .in1(a_m_bar), .in2(b_m), .out(and_out[2]) );
  and3_lib and3_inst_3 ( .in0(t[3]), .in1(a_m), .in2(b_m), .out(and_out[3]) );
  and3_lib and3_inst_4 ( .in0(t[4]), .in1(a_m_bar), .in2(b_m_bar), .out(
        and_out[4]) );
  and3_lib and3_inst_5 ( .in0(t[5]), .in1(a_m), .in2(b_m_bar), .out(and_out[5]) );
  and3_lib and3_inst_6 ( .in0(t[6]), .in1(a_m_bar), .in2(b_m), .out(and_out[6]) );
  and3_lib and3_inst_7 ( .in0(t[7]), .in1(a_m), .in2(b_m), .out(and_out[7]) );
  or4_lib or4_inst_0 ( .in0(and_out[0]), .in1(and_out[1]), .in2(and_out[2]), 
        .in3(and_out[3]), .out(q_m_bar) );
  or4_lib or4_inst_1 ( .in0(and_out[4]), .in1(and_out[5]), .in2(and_out[6]), 
        .in3(and_out[7]), .out(q_m) );
endmodule


module boolean_mask_dualrail_0 ( in, mask, in_m, in_m_bar );
  input in, mask;
  output in_m, in_m_bar;


  XNOR2X1 U1 ( .A(in), .B(mask), .Y(in_m_bar) );
  INVX1 U2 ( .A(in_m_bar), .Y(in_m) );
endmodule


module nand_lmdpl ( clk, rst_n, precharge, in0, in1, m_in0, m_in1, m_out, out
 );
  input clk, rst_n, precharge, in0, in1, m_in0, m_in1, m_out;
  output out;
  wire   in0_m, in0_m_bar, in1_m, in1_m_bar, in0_m_pre_reg, in0_m_bar_pre_reg,
         in1_m_pre_reg, in1_m_bar_pre_reg, out_m, N16, n3, n4, n5, n6, n7, n8;
  wire   [7:0] t;
  wire   [7:0] t_reg;

  nand_tablegen nand_tablegen_inst ( .m_in0(m_in0), .m_in1(m_in1), .m_out(
        m_out), .\t[7] (t[7]), .\t[6] (t[6]), .\t[5] (t[5]), .\t[4] (t[4]), 
        .\t[3]_BAR (t[3]), .\t[2]_BAR (t[2]), .\t[1]_BAR (t[1]), .\t[0]_BAR (
        t[0]) );
  boolean_mask_dualrail_1 boolean_mask_dualrail_inst0 ( .in(in0), .mask(m_in0), 
        .in_m(in0_m), .in_m_bar(in0_m_bar) );
  boolean_mask_dualrail_0 boolean_mask_dualrail_inst1 ( .in(in1), .mask(m_in1), 
        .in_m(in1_m), .in_m_bar(in1_m_bar) );
  lmdpl_nl_gate lmdpl_nl_gate_inst ( .t(t_reg), .a_m(in0_m_pre_reg), .a_m_bar(
        in0_m_bar_pre_reg), .b_m(in1_m_pre_reg), .b_m_bar(in1_m_bar_pre_reg), 
        .q_m(out_m) );
  DFFHQX1 out_reg_reg ( .D(N16), .CK(clk), .Q(out) );
  DFFTRX1 t_reg_reg_3_ ( .D(n8), .RN(rst_n), .CK(clk), .Q(t_reg[3]) );
  DFFTRX1 t_reg_reg_2_ ( .D(n7), .RN(rst_n), .CK(clk), .Q(t_reg[2]) );
  DFFTRX1 t_reg_reg_1_ ( .D(n6), .RN(rst_n), .CK(clk), .Q(t_reg[1]) );
  DFFTRX1 t_reg_reg_0_ ( .D(n5), .RN(rst_n), .CK(clk), .Q(t_reg[0]) );
  DFFTRX1 t_reg_reg_7_ ( .D(t[7]), .RN(rst_n), .CK(clk), .Q(t_reg[7]) );
  DFFTRX1 t_reg_reg_6_ ( .D(t[6]), .RN(rst_n), .CK(clk), .Q(t_reg[6]) );
  DFFTRX1 t_reg_reg_5_ ( .D(t[5]), .RN(rst_n), .CK(clk), .Q(t_reg[5]) );
  DFFTRX1 t_reg_reg_4_ ( .D(t[4]), .RN(rst_n), .CK(clk), .Q(t_reg[4]) );
  DFFTRX1 in1_m_pre_reg_reg ( .D(n3), .RN(in1_m), .CK(clk), .Q(in1_m_pre_reg)
         );
  DFFTRX1 in1_m_bar_pre_reg_reg ( .D(n3), .RN(in1_m_bar), .CK(clk), .Q(
        in1_m_bar_pre_reg) );
  DFFTRX1 in0_m_pre_reg_reg ( .D(n3), .RN(in0_m), .CK(clk), .Q(in0_m_pre_reg)
         );
  DFFTRX1 in0_m_bar_pre_reg_reg ( .D(in0_m_bar), .RN(rst_n), .CK(clk), .Q(
        in0_m_bar_pre_reg) );
  AOI21XL U7 ( .A0(m_out), .A1(out_m), .B0(n4), .Y(N16) );
  INVX1 U8 ( .A(t[0]), .Y(n5) );
  INVX1 U9 ( .A(t[1]), .Y(n6) );
  INVX1 U10 ( .A(t[2]), .Y(n7) );
  INVX1 U11 ( .A(t[3]), .Y(n8) );
  NOR2BX1 U12 ( .AN(rst_n), .B(precharge), .Y(n3) );
  OAI21XL U13 ( .A0(m_out), .A1(out_m), .B0(rst_n), .Y(n4) );
endmodule

