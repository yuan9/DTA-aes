#!/usr/bin/python
import copy
import re
import sys
import numpy as np

tracenum = 600
Gatelist = [0,1,2,3,4,5,6,7,8,9]
for i in range(0,tracenum):
	mergepower_dict = {}
	for id in Gatelist:
		F1 = open('individualGatePower/outFiles_gate-'+ str(id) +'/vector_'+ "{:03d}".format(i) +'.out' ,'r')
		File_string1 = F1.read()
		F1.close()
		file_split1 = File_string1.split("\n")
		#print 'id:' + str(id)
		#print file_split1
		
		for j in range (0,len(file_split1)-1):
			if file_split1:
				#print file_split1[j]
				time  = int(file_split1[j].split(" ")[0])
				#print time
				power = file_split1[j].split(" ")[1]
				#print power
				if time in mergepower_dict:
					#print j
					mergepower_dict[time] =  float(mergepower_dict[time]) + float(power)
				else:
					mergepower_dict[time] = float(power)
				#print mergepower_dict

	mergpower_dict_sorted = sorted(mergepower_dict.items())
	#print "merge:"
	#print mergpower_dict_sorted
	np.savetxt('GatePowerMerge/vector_'+ "{:03d}".format(i) +'.out', mergpower_dict_sorted, fmt='%d %s')
	print "finish processing trace-" + str(i)
			
