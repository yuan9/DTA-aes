module boolean_mask_dualrail (
	input in,
	input mask,
	output in_m,
	output in_m_bar
);

assign in_m = in ^ mask;
assign in_m_bar = in ^ ~mask;

endmodule
