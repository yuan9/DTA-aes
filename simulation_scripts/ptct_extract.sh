#!/bin/bash
numtrace=500
results_dir=../wpi_result_aes_1ps
final_dir=../wpi_final_results_aes_1ps

#extract plain text and cipher text
for (( counter=0; counter<$numtrace; counter++ ))
do
#plain_text=$(tail -2 $results_dir/result_$counter/simulation_$counter.log | head -1 |tr -d "# " | tr -d "\n")
plain_text=$(tail -6 $results_dir/result_$counter/simulation_$counter.log | head -1 |tr -d "# " | tr -d "\n")
#echo "${plain_text/Initialplaintext/}">>$final_dir/inFiles_result_sync/plain_cipher_sync.txt
#cipher_text=$(tail -1 $results_dir/result_$counter/simulation_$counter.log | head -1 |tr -d "# "| tr -d "\n")
cipher_text=$(tail -5 $results_dir/result_$counter/simulation_$counter.log | head -1 |tr -d "# "| tr -d "\n")
echo "${plain_text/Initialplaintext/}${cipher_text/Finalciphertext/}">>$final_dir/inFiles_result_sync/plain_cipher_sync.csv
#echo "">>$final_dir/inFiles_result_sync/plain_cipher_sync.txt
done
