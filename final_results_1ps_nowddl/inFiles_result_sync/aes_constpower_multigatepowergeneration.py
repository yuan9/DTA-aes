#!/bin/bash
github_ids=( 
aes_cipher_top/us23/U257 
aes_cipher_top/sa23_reg_1_
aes_cipher_top/us23/U214
aes_cipher_top/us23/U211 
aes_cipher_top/us23/U215 
aes_cipher_top/us23/U234 
aes_cipher_top/us23/U294 
aes_cipher_top/us23/U271 
aes_cipher_top/us23/U21
aes_cipher_top/us23/U262 
aes_cipher_top/us23/U296 
aes_cipher_top/us23/U101 
aes_cipher_top/us23/U148
aes_cipher_top/us23/U286 
aes_cipher_top/us23/U29
aes_cipher_top/us23/U289 
aes_cipher_top/us23/U259 
aes_cipher_top/us23/U280 
aes_cipher_top/us23/U292 
aes_cipher_top/us23/U22
aes_cipher_top/us23/U277 
aes_cipher_top/us23/U342 
aes_cipher_top/us23/U199 
aes_cipher_top/us23/U201 
aes_cipher_top/us23/U20
aes_cipher_top/us23/U338 
aes_cipher_top/us23/U200 
aes_cipher_top/us23/U178 
aes_cipher_top/us23/U26
aes_cipher_top/us23/U186 
aes_cipher_top/us23/U198 
aes_cipher_top/us23/U174 
aes_cipher_top/us23/U179 
aes_cipher_top/us23/U160 
aes_cipher_top/us23/U18
aes_cipher_top/us23/U188 
aes_cipher_top/us23/U27
aes_cipher_top/us23/U194 
aes_cipher_top/us23/U147 
aes_cipher_top/us23/U89
aes_cipher_top/us23/U349 
aes_cipher_top/us23/U175 
aes_cipher_top/us23/U121 
aes_cipher_top/us23/U132 
aes_cipher_top/us23/U267 
aes_cipher_top/us23/U128 
aes_cipher_top/us23/U340 
aes_cipher_top/us23/U370 
aes_cipher_top/us23/U16
aes_cipher_top/us23/U114 
aes_cipher_top/us23/U91 
aes_cipher_top/us23/U143 
aes_cipher_top/us23/U251 
aes_cipher_top/us23/U164 
aes_cipher_top/us23/U253)

github_ids2=( 
aes_cipher_top/us23/U214
aes_cipher_top/us23/U211 
)

numtrace=600
for id in "${github_ids2[@]}"
do
mkdir ../outFiles_${id}
for ((i=0; i<$numtrace; i+=1));
do
  a=`printf "%03d" $i`
  #python outfile_postprocess_ptpx.py yuan_power_$i.out ../outFiles_aes_sa23reg1/vector_$a.out "aes_cipher_top/sa23_reg_1_" 5 6
  python outfile_postprocess_ptpx.py yuan_power_$i.out ../outFiles_aes_us12U270/vector_$a.out $id 5 6
  echo "Trace-$i for aes constant power"
done
done
