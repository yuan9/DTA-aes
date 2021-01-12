/* 
included in library: 
	3-input and: and3_lib
	4-input or: or4_lib
*/

module or4_lib ( // 4 input or gate
	input in0, 
	input in1, 
	input in2, 
	input in3, 
	output out
);

(* keep = true *) OR4X1 or4_inst (.A(in0), .B(in1), .C(in2), .D(in3), .Y(out));

endmodule

module and3_lib ( // 3 input and gate
	input in0, 
	input in1, 
	input in2, 
	output out
);

(* keep = true *) AND3X1 and3_inst (.A(in0), .B(in1), .C(in2), .Y(out));

endmodule
