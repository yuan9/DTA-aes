
module nor_tablegen ( m_in0, m_in1, m_out, t );
  output [7:0] t;
  input m_in0, m_in1, m_out;
  wire   N13, N15, N18, N21, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  assign t[7] = N13;
  assign t[6] = N15;
  assign t[5] = N18;
  assign t[4] = N21;

  INVX1 U1 ( .A(m_out), .Y(n8) );
  NAND2X1 U2 ( .A(m_in1), .B(m_in0), .Y(n2) );
  NAND2X1 U3 ( .A(n8), .B(n2), .Y(n1) );
  OAI21XL U4 ( .A0(n8), .A1(n2), .B0(n1), .Y(t[3]) );
  INVX1 U5 ( .A(t[3]), .Y(N13) );
  INVX1 U6 ( .A(m_in1), .Y(n5) );
  NOR2X1 U7 ( .A(n5), .B(m_in0), .Y(n4) );
  NAND2X1 U8 ( .A(n4), .B(m_out), .Y(n3) );
  OAI21XL U9 ( .A0(n4), .A1(m_out), .B0(n3), .Y(t[2]) );
  INVX1 U10 ( .A(t[2]), .Y(N15) );
  NAND2X1 U11 ( .A(n5), .B(m_in0), .Y(n7) );
  NAND2X1 U12 ( .A(n8), .B(n7), .Y(n6) );
  OAI21XL U13 ( .A0(n8), .A1(n7), .B0(n6), .Y(t[1]) );
  INVX1 U14 ( .A(t[1]), .Y(N18) );
  NOR2X1 U15 ( .A(m_in1), .B(m_in0), .Y(n10) );
  NAND2X1 U16 ( .A(n10), .B(m_out), .Y(n9) );
  OAI21XL U17 ( .A0(n10), .A1(m_out), .B0(n9), .Y(t[0]) );
  INVX1 U18 ( .A(t[0]), .Y(N21) );
endmodule


module boolean_mask_dualrail_1 ( in, mask, in_m, in_m_bar );
  input in, mask;
  output in_m, in_m_bar;


  XNOR2X1 U1 ( .A(in), .B(mask), .Y(in_m_bar) );
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
endmodule


module nor_lmdpl ( clk, rst_n, precharge, in0, in1, m_in0, m_in1, m_out, out
 );
  input clk, rst_n, precharge, in0, in1, m_in0, m_in1, m_out;
  output out;
  wire   in0_m_bar, in1_m_bar, in0_m_pre, in0_m_bar_pre, in1_m_pre,
         in1_m_bar_pre, out_m, out_m_bar, n4, n5, n6;
  wire   [7:0] t;

  nor_tablegen nor_tablegen_inst ( .m_in0(m_in0), .m_in1(m_in1), .m_out(m_out), 
        .t(t) );
  boolean_mask_dualrail_1 boolean_mask_dualrail_inst0 ( .in(in0), .mask(m_in0), 
        .in_m_bar(in0_m_bar) );
  boolean_mask_dualrail_0 boolean_mask_dualrail_inst1 ( .in(in1), .mask(m_in1), 
        .in_m_bar(in1_m_bar) );
  lmdpl_nl_gate lmdpl_nl_gate_inst ( .t(t), .a_m(in0_m_pre), .a_m_bar(
        in0_m_bar_pre), .b_m(in1_m_pre), .b_m_bar(in1_m_bar_pre), .q_m(out_m), 
        .q_m_bar(out_m_bar) );
  NOR2BX1 U9 ( .AN(in0_m_bar), .B(precharge), .Y(in0_m_bar_pre) );
  NOR2X1 U10 ( .A(precharge), .B(in0_m_bar), .Y(in0_m_pre) );
  NOR2BX1 U11 ( .AN(in1_m_bar), .B(precharge), .Y(in1_m_bar_pre) );
  NOR2X1 U12 ( .A(precharge), .B(in1_m_bar), .Y(in1_m_pre) );
  INVX1 U13 ( .A(out_m_bar), .Y(n6) );
  INVX1 U14 ( .A(out_m), .Y(n5) );
  INVX1 U15 ( .A(m_out), .Y(n4) );
  AOI33X1 U16 ( .A0(m_out), .A1(out_m), .A2(n6), .B0(out_m_bar), .B1(n5), .B2(
        n4), .Y(out) );
endmodule

