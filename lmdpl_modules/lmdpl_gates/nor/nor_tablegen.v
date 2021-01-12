module nor_tablegen (
	input m_in0, // mask for input 0
	input m_in1, // mask for input 1
	input m_out, // mask for output
	output [7:0] t // lut selectors
);

/*
assign t[0] = (~m_in0 &  m_out) + (~m_in1 &  m_out) + ( m_in0 &  m_in1 & ~m_out);
assign t[1] = ( m_in0 &  m_out) + (~m_in1 &  m_out) + (~m_in0 &  m_in1 & ~m_out);
assign t[2] = (~m_in0 &  m_out) + ( m_in1 &  m_out) + ( m_in0 & ~m_in1 & ~m_out);
assign t[3] = ( m_in0 &  m_out) + ( m_in1 &  m_out) + (~m_in0 & ~m_in1 & ~m_out);
assign t[4] = (~m_in0 & ~m_out) + (~m_in1 & ~m_out) + ( m_in0 &  m_in1 &  m_out);
assign t[5] = ( m_in0 & ~m_out) + (~m_in1 & ~m_out) + (~m_in0 &  m_in1 &  m_out);
assign t[6] = (~m_in0 & ~m_out) + ( m_in1 & ~m_out) + ( m_in0 & ~m_in1 &  m_out);
assign t[7] = ( m_in0 & ~m_out) + ( m_in1 & ~m_out) + (~m_in0 & ~m_in1 &  m_out);
*/

wire [2:0] mask_concat;
assign mask_concat = {m_out, m_in1, m_in0};

assign t[7:0] = (mask_concat==3'b000) ? 8'h1e :
				(mask_concat==3'b001) ? 8'h2d :
				(mask_concat==3'b010) ? 8'h4b :
				(mask_concat==3'b011) ? 8'h87 :
				(mask_concat==3'b100) ? 8'he1 :
				(mask_concat==3'b101) ? 8'hd2 :
				(mask_concat==3'b110) ? 8'hb4 :
				(mask_concat==3'b111) ? 8'h78 :
										8'h00;
endmodule
