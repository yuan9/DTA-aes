module nor_lmdpl (
	input clk,
	input rst_n,
	input precharge,
	// inputs to the NAND
	input in0,
	input in1,
	// input and output masks
	input m_in0,
	input m_in1,
	input m_out,
	// output
	output out
);


// ******* Calculate t values:
// t values
(* keep = "true" *) wire [7:0] t;
(* keep = "true" *) reg [7:0] t_reg;

nor_tablegen nor_tablegen_inst (
    .m_in0    (m_in0), // mask for input 0
    .m_in1    (m_in1), // mask for input 1
    .m_out    (m_out), // mask for output
    .t 	      (t) // lut selectors
);

always @(posedge clk) begin : proc_t_reg
	if(~rst_n) begin
		t_reg <= 8'h00;
	end else begin
		t_reg <= t;
	end
end

// ********* Dual rail mask generation:
// masked dual-rail inputs
(* keep = "true" *) wire in0_m;
(* keep = "true" *) wire in0_m_bar;
(* keep = "true" *) wire in1_m;
(* keep = "true" *) wire in1_m_bar;

boolean_mask_dualrail boolean_mask_dualrail_inst0 (
    .in       (in0),
    .mask     (m_in0),
    .in_m     (in0_m),
    .in_m_bar (in0_m_bar)
);

boolean_mask_dualrail boolean_mask_dualrail_inst1 (
    .in       (in1),
    .mask     (m_in1),
    .in_m     (in1_m),
    .in_m_bar (in1_m_bar)
);

// ********* Precharge Logic:
// precharged inputs
(* keep = "true" *) wire in0_m_pre;
(* keep = "true" *) wire in0_m_bar_pre;
(* keep = "true" *) wire in1_m_pre;
(* keep = "true" *) wire in1_m_bar_pre;
// precharged registers
(* keep = "true" *) reg in0_m_pre_reg;
(* keep = "true" *) reg in0_m_bar_pre_reg;
(* keep = "true" *) reg in1_m_pre_reg;
(* keep = "true" *) reg in1_m_bar_pre_reg;

assign in0_m_pre = (~ precharge) & in0_m;
assign in0_m_bar_pre = (~ precharge) & in0_m_bar;
assign in1_m_pre = (~ precharge) & in1_m;
assign in1_m_bar_pre = (~ precharge) & in1_m_bar;

always @(posedge clk) begin : proc_pre_reg
	if(~rst_n) begin
		in0_m_pre_reg <= 0;
		in0_m_bar_pre_reg <= 0;
		in1_m_pre_reg <= 0;
		in1_m_bar_pre_reg <= 0;
	end else begin
		in0_m_pre_reg <= in0_m_pre;
		in0_m_bar_pre_reg <= in0_m_bar;
		in1_m_pre_reg <= in1_m_pre;
		in1_m_bar_pre_reg <= in1_m_bar_pre;
	end
end

// ************* LMDPL non-linear logic:
(* keep = "true" *) wire out_m;
(* keep = "true" *) wire out_m_bar;

lmdpl_nl_gate lmdpl_nl_gate_inst (
	.t (t_reg),
	.a_m (in0_m_pre_reg),
	.a_m_bar (in0_m_bar_pre_reg),
	.b_m (in1_m_pre_reg),
	.b_m_bar (in1_m_bar_pre_reg),
	.q_m (out_m),
	.q_m_bar (out_m_bar)
);

// ********* Unmask output:
(* keep = "true" *) reg out_reg;
(* keep = "true" *) reg out_bar_reg;

always @(posedge clk) begin : proc_out_reg
	if(~rst_n) begin
		out_reg <= 0;
		out_bar_reg <= 1;
	end else begin
		out_reg <= out_m ^ m_out;
		out_bar_reg <= out_m_bar ^ m_out;
	end
end


assign out = out_reg;

endmodule
