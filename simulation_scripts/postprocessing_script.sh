#!/bin/bash
numtrace=600
results_dir=../result_aes_1ps_wddl_MSRegMuxLP
final_dir=../final_results_1ps_wddl_MSRegMuxLP

#create the final directories
mkdir $final_dir
mkdir $final_dir/inFiles_result_sync

#copy over out files
for (( counter=0; counter<$numtrace; counter++ ))
do
cp $results_dir/result_$counter/yuan_power_$counter.out $final_dir/inFiles_result_sync
echo "Extract Trace-$counter for design $design"
done

#extract plain text and cipher text
for (( counter=0; counter<$numtrace; counter++ ))
do
#plain_text=$(tail -2 $results_dir/result_$counter/simulation_$counter.log | head -1 |tr -d "# " | tr -d "\n")
plain_text=$(tail -4 $results_dir/result_$counter/simulation_$counter.log | head -1 |tr -d "# " | tr -d "\n")
#echo "${plain_text/Initialplaintext/}">>$final_dir/inFiles_result_sync/plain_cipher_sync.csv
#cipher_text=$(tail -1 $results_dir/result_$counter/simulation_$counter.log | head -1 |tr -d "# "| tr -d "\n")
cipher_text=$(tail -3 $results_dir/result_$counter/simulation_$counter.log | head -1 |tr -d "# "| tr -d "\n")
echo "${plain_text/Initialplaintext/}${cipher_text/Finalciphertext/}">>$final_dir/inFiles_result_sync/plain_cipher_sync.csv
#echo "">>$final_dir/inFiles_result_sync/plain_cipher_sync.csv
done

#copy over vcd files for GLCA
mkdir $final_dir/vcdFiles_sync
for (( counter=0; counter<$numtrace; counter++ ))
do
cp $results_dir/result_$counter/test_$counter.vcd $final_dir/vcdFiles_sync/test_$counter.vcd
done

#generate outfiles format for inspector, need to check the timestamp in the outfile and hardcode the time range in the outfile_postprocess_ptpx.py
design="aes_cipher_top"
mkdir $final_dir/outFiles_result_sync/

for ((i=0; i<$numtrace; i+=1));
do
  a=`printf "%03d" $i`
  python outfile_postprocess_ptpx.py $final_dir/inFiles_result_sync/yuan_power_$i.out $final_dir/outFiles_result_sync/vector_$a.out $design 5 6
  echo "Trace-$i for design $design"
done
 # copy the plaintext and ciphertext file from the infiles folder to the outfiles folder
cp $final_dir/inFiles_result_sync/plain_cipher_sync.csv $final_dir/outFiles_result_sync/
