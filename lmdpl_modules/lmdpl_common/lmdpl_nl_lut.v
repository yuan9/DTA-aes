// Description: LMDPL Non-Linear Gate Replacement (LUT)
// Author: Pantea Kiaei

`define SAGE

`ifdef SAGE
	`include "sage_gates.v" // library-specific gates
`else
	`include "tsmc18_gates.v" // library-specific gates
`endif

module lmdpl_nl_gate (
	input [7:0] t,
	input a_m,
	input a_m_bar,
	input b_m,
	input b_m_bar,
	output q_m,
	output q_m_bar
);


(* keep = "true" *) wire [7:0] and_out;

(* keep = "true" *) and3_lib and3_inst_0(.in0(t[0]), .in1(a_m_bar), .in2(b_m_bar), 	.out(and_out[0]));
(* keep = "true" *) and3_lib and3_inst_1(.in0(t[1]), .in1(a_m), 	.in2(b_m_bar), 	.out(and_out[1]));
(* keep = "true" *) and3_lib and3_inst_2(.in0(t[2]), .in1(a_m_bar), .in2(b_m),		.out(and_out[2]));
(* keep = "true" *) and3_lib and3_inst_3(.in0(t[3]), .in1(a_m), 	.in2(b_m),		.out(and_out[3]));
(* keep = "true" *) and3_lib and3_inst_4(.in0(t[4]), .in1(a_m_bar), .in2(b_m_bar),	.out(and_out[4]));
(* keep = "true" *) and3_lib and3_inst_5(.in0(t[5]), .in1(a_m), 	.in2(b_m_bar),	.out(and_out[5]));
(* keep = "true" *) and3_lib and3_inst_6(.in0(t[6]), .in1(a_m_bar),	.in2(b_m),		.out(and_out[6]));
(* keep = "true" *) and3_lib and3_inst_7(.in0(t[7]), .in1(a_m),		.in2(b_m),		.out(and_out[7]));


(* keep = "true" *) or4_lib or4_inst_0(.in0(and_out[0]), .in1(and_out[1]), .in2(and_out[2]), .in3(and_out[3]), .out(q_m_bar));
(* keep = "true" *) or4_lib or4_inst_1(.in0(and_out[4]), .in1(and_out[5]), .in2(and_out[6]), .in3(and_out[7]), .out(q_m));

endmodule
