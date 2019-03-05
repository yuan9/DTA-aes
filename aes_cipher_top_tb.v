`timescale 1ps/1ps
//`timescale 100fs/100fs
`define clkperi 21333

module clkgen(input reset, output reg clk);
	always
		begin
		#`clkperi
		if(reset==1'b0)
			clk=1'b0;
		else
			clk = !clk;
		end
endmodule



module aes_cipher_top_tb;

reg rst;
reg ld;
wire done;
reg [127:0] key;
reg [127:0] text_in;
reg [127:0] data_output_encrypt;
wire [127:0] text_out;
wire clk;
aes_cipher_top dut (clk, rst, ld, done, key, text_in, text_out );
clkgen CLK (rst, clk);


initial begin
    rst = 1'b1;
	#1000
	rst = 1'b0;
	#`clkperi
	rst = 1'b1;
	key = 128'hcafebabedeadbeefdeadbeef00000000;
	text_in = 128'h9F79A3BF6656A9853E1238A132CB5A2B;
	@(posedge clk);
	ld = 1'b1;
	@(posedge clk);
	ld = 1'b0;
	@(posedge done);
	data_output_encrypt = text_out;
	$display("Initial plaintext %x", text_in);
	$display("Final ciphertext %x", data_output_encrypt);
    end

endmodule
