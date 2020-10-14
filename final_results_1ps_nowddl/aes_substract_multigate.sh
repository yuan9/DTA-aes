#!/bin/bash
mkdir outFiles_aes_reduced_constpower/
numtrace=600

for ((i=0; i<$numtrace; i+=1));
do
  a=`printf "%03d" $i`
  python aes_substract_multigate.py $a
  echo "Trace-$i for all the gates in aes"
done
