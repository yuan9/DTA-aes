import sys
#import matplotlib.pyplot as plt
import numpy as np
import operator
import copy
import re
import linecache
import csv

constant = float(0.006/402)
gatenum = 45
def reducepower(index):
	#read in the single gate outfile
	#F1 = open('outFiles_result_sync_singlegateU250/vector_'+ index +'.out','r')
	#F1 = open('outFiles_result_sync_multigate300/vector_'+ index +'.out','r')
	#F1 = open('outFiles_result_sync_multigate600_allgates/vector_'+ index +'.out','r')
        #F1 = open('outFiles_result_sync_multigate600_allgates_constpower/vector_'+ index +'.out','r')
	F1 = open('outFiles_aes_constpower/vector_'+ index +'.out','r')
	#F1 = open(fileIn,'r')
	file_string = F1.read()
	F1.close()
	file_split_gate = file_string.split("\n")
	#print file_split_gate[0]
	#print file_split[0].split(" ")[0]
	#print file_split
	
	#timestamp = []
	#powervalue = []
	powergates = {}
	for i in range(0, len(file_split_gate)-1):
		#timestamp.append(file_split_gate[i].split(" ")[0])
		timestamp = file_split_gate[i].split(" ")[0]
		#powervalue.append(float(file_split_gate[i].split(" ")[1]))
		powervalue = float(file_split_gate[i].split(" ")[1])
		powergates[timestamp] = powervalue
	#print timestamp
	#print powervalue
	#print powergates
	
	#read in the power value for whole design
	F2 = open('outFiles_result_sync/vector_' + index + '.out','r')
	file_string2 = F2.read()
	F2.close()
	file_split_top = file_string2.split("\n")
	#print file_split_top[0]
	
	array_new_power =[] 
	
	i = 0
	while (i < len(file_split_top)-1):
		if (file_split_top[i].split(" ")[0] in powergates):
			reduced_power = float(file_split_top[i].split(" ")[1]) - powergates[file_split_top[i].split(" ")[0]] + gatenum * constant
			array_new_power.append([file_split_top[i].split(" ")[0],str(reduced_power)])
		else:
			#dic_new_power[file_split_top[i].split(" ")[0]] = file_split_top[i].split(" ")[1]
			#array_new_power.append(file_split_top[i].split(" "))
 			reduced_power = float(file_split_top[i].split(" ")[1]) + gatenum * constant
			array_new_power.append([file_split_top[i].split(" ")[0],str(reduced_power)])
			
		i= i+1
	
	#print dic_new_power
	#np.savetxt('newpower0.txt', dic_new_power, fmt='%s')
	
	np.savetxt('outFiles_aes_reduced_constpower/vector_' + index + '.out', array_new_power, fmt='%s')
#	np.savetxt(fileOut, array_new_power, fmt='%s')


if __name__ == '__main__':
    a = sys.argv
    if len(a) < 1:
        print 'wrong arguments, should be: file_name, start_id, vect_id, do_pa_extraction, module_path0 module_path1...'
    else:
        #extract_pwr(a[1], a[1]+'.out', a[2], 616500000, 619200001)
	reducepower(a[1])
