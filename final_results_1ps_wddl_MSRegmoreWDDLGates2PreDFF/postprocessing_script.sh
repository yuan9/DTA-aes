#!/bin/bash
numtrace=600
#generate outfiles format for inspector, need to check the timestamp in the outfile and hardcode the time range in the outfile_postprocess_ptpx.py
design="aes_cipher_top/us23/U257"
mkdir outFiles_result_U257

for ((i=0; i<$numtrace; i+=1));
do
  a=`printf "%03d" $i`
  python outfile_postprocess_ptpx.py inFiles_result_sync/yuan_power_$i.out outFiles_result_U257/vector_$a.out $design 5 6
  echo "Trace-$i for design $design"
done
 # copy the plaintext and ciphertext file from the infiles folder to the outfiles folder
cp inFiles_result_sync/plain_cipher_sync.csv outFiles_result_U257/
