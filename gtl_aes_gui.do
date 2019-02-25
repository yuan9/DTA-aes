vcd file test.vcd
#vcd add -r /aes_cipher_top_tb/*
add wave sim:/aes_cipher_top_tb/*
# add aes_coprocessor signals
#run 639990ps

add wave -radix hex { State_reg {
sim:/aes_cipher_top_tb/dut/sa00_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa00_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa00_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa00_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa00_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa00_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa00_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa00_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa10_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa10_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa10_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa10_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa10_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa10_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa10_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa10_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa20_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa20_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa20_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa20_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa20_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa20_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa20_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa20_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa30_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa30_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa30_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa30_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa30_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa30_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa30_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa30_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa01_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa01_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa01_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa01_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa01_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa01_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa01_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa01_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa11_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa11_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa11_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa11_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa11_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa11_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa11_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa11_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa21_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa21_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa21_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa21_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa21_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa21_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa21_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa21_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa31_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa31_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa31_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa31_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa31_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa31_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa31_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa31_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa02_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa02_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa02_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa02_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa02_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa02_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa02_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa02_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa12_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa12_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa12_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa12_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa12_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa12_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa12_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa12_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa22_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa22_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa22_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa22_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa22_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa22_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa22_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa22_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa32_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa32_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa32_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa32_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa32_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa32_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa32_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa32_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa03_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa03_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa03_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa03_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa03_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa03_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa03_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa03_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa13_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa13_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa13_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa13_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa13_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa13_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa13_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa13_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa23_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa23_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa23_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa23_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa23_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa23_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa23_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa23_reg_0_/Q
sim:/aes_cipher_top_tb/dut/sa33_reg_7_/Q
sim:/aes_cipher_top_tb/dut/sa33_reg_6_/Q
sim:/aes_cipher_top_tb/dut/sa33_reg_5_/Q
sim:/aes_cipher_top_tb/dut/sa33_reg_4_/Q
sim:/aes_cipher_top_tb/dut/sa33_reg_3_/Q
sim:/aes_cipher_top_tb/dut/sa33_reg_2_/Q
sim:/aes_cipher_top_tb/dut/sa33_reg_1_/Q
sim:/aes_cipher_top_tb/dut/sa33_reg_0_/Q

}}

