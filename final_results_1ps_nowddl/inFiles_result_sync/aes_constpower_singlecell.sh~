#!/bin/bash
numtrace=600
mkdir ../outFiles_aes_us12U270
for ((i=0; i<$numtrace; i+=1));
do
  a=`printf "%03d" $i`
  #python outfile_postprocess_ptpx.py yuan_power_$i.out ../outFiles_aes_sa23reg1/vector_$a.out "aes_cipher_top/sa23_reg_1_" 5 6
  python outfile_postprocess_ptpx.py yuan_power_$i.out ../outFiles_aes_us12U270/vector_$a.out "aes_cipher_top/us12/U270" 5 6
  echo "Trace-$i for aes constant power"
done
