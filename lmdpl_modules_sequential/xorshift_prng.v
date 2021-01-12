module xorshift_prng (
	input clk, 
	input rst_n, 
	output [31:0] rng_out
); 

reg [31:0] out_tmp;
reg [31:0] tmp0_reg;
reg [31:0] tmp1;
reg [31:0] tmp2;
reg [31:0] tmp3;

parameter seed = 32'h8e20a6e5; 

assign rng_out = out_tmp[31:0];
 
 always @ (*) 
    begin 
      tmp1 = tmp0_reg^(tmp0_reg << 13); 
      tmp2 = tmp1^(tmp1 >> 17);
      tmp3 = tmp2^(tmp2 << 5);	  
    end 
	

always @ (posedge clk)
	begin
	   if (~rst_n)
	   begin
		tmp0_reg <= seed;
		out_tmp  <= 32'h0;
	   end
	   
	   else begin 
		   out_tmp <= tmp3;
		   tmp0_reg <= tmp3;
	   end
   end
  
endmodule
