`timescale 1ps/1ps
//`timescale 100fs/100fs
//`define clkperi 20833
//`define clkperi2 41666
`define clkperi 21333
`define clkperi2 42666
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

//define the half clock frequency clock
module clkgen2(input reset, output reg clk);
	always
		begin
		//#`clkperi
		if(reset==1'b0) begin
			#`clkperi
			clk=1'b0;
		end
		else begin
			#`clkperi2
			clk = !clk;
		end	
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
wire clk, divclk;
aes_cipher_top dut (divclk, clk, rst, ld, done, key, text_in, text_out );
clkgen CLK (rst, clk);
clkgen2 CLK2 (rst, divclk);

initial begin
    rst = 1'b1;
	#1000
	rst = 1'b0;
	#`clkperi2
	rst = 1'b1;
	key = 128'hcafebabedeadbeefdeadbeef00000000;
	text_in = 128'hDBE17F0684546C5571D034433D9A94B7;
	@(posedge clk);
	ld = 1'b1;
	@(posedge clk);
	ld = 1'b0;
	@(posedge done);
	@(posedge clk);
        @(posedge clk);
	data_output_encrypt = text_out;
	$display("Initial plaintext %x", text_in);
	$display("Final ciphertext %x", data_output_encrypt);
    end

endmodule
