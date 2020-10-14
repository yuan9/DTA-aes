#!/bin/bash

counter=0
numtrace=600
for id in "${github_ids[@]}"
do
mkdir -p ../individualGatePower/outFiles_gate-${counter}
for ((i=0; i<$numtrace; i+=1));
do
  a=`printf "%03d" $i`
  #python outfile_postprocess_ptpx.py yuan_power_$i.out ../outFiles_aes_sa23reg1/vector_$a.out "aes_cipher_top/sa23_reg_1_" 5 6
  python outfile_postprocess_ptpx.py yuan_power_$i.out ../individualGatePower/outFiles_gate-${counter}/vector_$a.out $id 5 6
  echo "Trace-$i for aes constant power"
done
counter=$((counter+1))
done
