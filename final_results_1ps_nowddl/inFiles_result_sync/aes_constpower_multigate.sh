#!/bin/bash
numtrace=600
mkdir ../outFiles_aes_merge2_2iter19thre150
for ((i=0; i<$numtrace; i+=1));
do
  a=`printf "%03d" $i`
  python aes_constpower_multigate.py yuan_power_$i.out ../outFiles_aes_merge2_2iter19thre150/vector_$a.out "leon3mp/core0_leon3core0_cp2_v0/aes_encrypt_core_us00/U250" 5 6
  echo "Trace-$i for aes constant power outFiles_aes_merge2_2iter19thre150"
done
