/* 
included in library: 
	3-input and: and3_lib
	4-input or: or4_lib
*/

//`include "/opt/libraries/TSMCHOME/digital/Front_End/verilog/tcb018gbwp7t_270a/tcb018gbwp7t.v"

module or4_lib ( // 4 input or gate
	input in0, 
	input in1, 
	input in2, 
	input in3, 
	output out
);

(* keep = true *) OR4D1BWP7T or4_inst (.A1(in0), .A2(in1), .A3(in2), .A4(in3), .Z(out));

endmodule

module and3_lib ( // 3 input and gate
	input in0, 
	input in1, 
	input in2, 
	output out
);

(* keep = true *) AN3D1BWP7T and3_inst (.A1(in0), .A2(in1), .A3(in2), .Z(out));

endmodule
