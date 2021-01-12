`timescale 1ns/1ps

module nand_lmdpl_sim ();

reg clk, rst_n, precharge;
reg in0, in1;

// masks:
wire m_in0, m_in1, m_out;
reg m_in0_reg, m_in1_reg, m_out_reg;

// NAND output:
wire nand_out;

// PRNG output:
wire [31:0] prng_out;

assign m_in0 = m_in0_reg;
assign m_in1 = m_in1_reg;
assign m_out = m_out_reg;

// initialize rst and clk
initial begin
	clk = 0;
	rst_n = 0;
	#10 rst_n = 1;
end

// generate clk
always begin
	#5 clk = ~clk;
end

// task for sending stimuli
task send_stimuli;
	input in0_data, in1_data;
	begin
		#10;
		in0 = in0_data;
		in1 = in1_data;
		precharge = 1;
		m_in0_reg = prng_out[0];
		m_in1_reg = prng_out[1];
		m_out_reg = prng_out[2];
		@(posedge clk); // keep precharge high for one clk cycle
		precharge = 0;
		// wait for 3 clk cycles
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		// display output:
		$display("input0: %b, input1: %b --> output: %b", in0, in1, nand_out);
	end
endtask


// stimuli
initial begin 
	precharge = 0;
	in0 = 0;
	in1 = 0;
	m_in0_reg = 0;
	m_in1_reg = 0;
	m_out_reg = 0;
	wait(rst_n); // wait for reset to end

	send_stimuli(0,0);
	send_stimuli(0,1);
	send_stimuli(1,0);
	send_stimuli(1,1);
	#5 $stop;
end


nand_lmdpl nand_lmdpl_inst (
	.clk(clk),
	.rst_n(rst_n),
	.precharge(precharge),
	// inputs to the NAND
	.in0(in0),
	.in1(in1),
	// input and output masks
	.m_in0(m_in0),
	.m_in1(m_in1),
	.m_out(m_out),
	// output
	.out(nand_out)
	);

xorshift_prng xorshift_prng_inst (
	.clk (clk),
	.rst_n (rst_n),
	.rng_out (prng_out)
);


endmodule
