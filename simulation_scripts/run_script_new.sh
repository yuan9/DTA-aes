#!/bin/bash


results_folder=result_aes_1ps_nowddl_latest
mkdir ../$results_folder/

for counter in {0..599}
do
#generate 16bytes random number for plaintext
#R1=$(od -vAn -N8 -tu8 < /dev/urandom)
#R1_hex=$(echo "obase=16; $R1" | bc)
#R2=$(od -vAn -N8 -tu8 < /dev/urandom)
#R2_hex=$(echo "obase=16; $R2" | bc)
echo "Running simulation number $counter"
echo "Plain text"
temp=$((counter+1))
R1=$(sed "${temp}q;d" plain_cipher_sync.csv)
R2=${R1:0:32}
echo "${R2}"
cp /home/dtatest/DTA-aes/aes_cipher_top_tb_orig /home/dtatest/DTA-aes/aes_cipher_top_tb.v
cd ../
echo "${R2}">>plaintext.txt
sed -i "s/FEDCBA98765432100123456789ABCDEF/$R2/g" /home/dtatest/DTA-aes/aes_cipher_top_tb.v

#make aes-commandline>>simulation.log
make aes-commandline>>simulation.log
pt_shell -f /home/dtatest/DTA-aes/simulation_scripts/pt_script_aes.tcl>>pt.log


mkdir $results_folder/result_$counter
mv simulation.log $results_folder/result_$counter/simulation_$counter.log
mv pt.log $results_folder/result_$counter/pt_$counter.log 
mv test.vcd $results_folder/result_$counter/test_$counter.vcd
mv plaintext.txt $results_folder/result_$counter/plaintext_$counter.txt
#mv primetime_px.fsdb results_fullchipzero/result_$counter/primetime_px_$counter.fsdb
mv yuan_power.out $results_folder/result_$counter/yuan_power_$counter.out
mv yuan_PowerReport.txt $results_folder/result_$counter/yuan_PowerReport_$counter.txt

cd simulation_scripts

done

