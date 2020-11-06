vcd file test_f.vcd
vcd add -r /aes_cipher_top_tb/*
vcd add -r /aes_cipher_top_tb/dut/*
#add wave sim:/aes_cipher_top_tb/*
#run 639990ps
run 597020ps
quit
