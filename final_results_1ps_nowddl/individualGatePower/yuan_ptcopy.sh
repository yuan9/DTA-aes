#!/bin/bash


numtrace=600
filenum=55

for ((i=0; i<$filenum; i+=1));
do
  cp plain_cipher_sync.csv outFiles_gate-${i}/
  echo "copy-$i"
done


