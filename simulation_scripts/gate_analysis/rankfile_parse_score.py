import copy
import re
import sys
import operator
import numpy as np

threshold =400
gatelist={}
reglist=[]
tracenum = 600

#timescale = 10
#BASE_TIME = 1291377940
#START_TIME = 14.580
#END_TIME = 14.585

#leakstart=(BASE_TIME + int(START_TIME*1000000))/timescale
#leakend=(BASE_TIME + int(END_TIME*1000000))/timescale
#leakstart = int(129137794)
#leakend= int(130896215)
#leakstart= int(1706400)
#leakend=int(1719800)
#leakstart= int(1713600)
#leakend=int(1716900)
leakstart=int(170160)
leakend=int(171730)

print leakstart
print leakend

dic_gatepower={}
dic_gateid={}
dic_gatepower_merge={}
##########################################################################
# filter all the gates and registers and score need to be >= threshold
##########################################################################
def extract_reggate():
	
	#F1 = open('aes_byte14bit6.txt','r')
        F1 = open('rank_nowddl.txt','r')
	#F1 = open('test.txt','r')
	file_string = F1.read()
	F1.close()
	file_split = file_string.split("\n")
	#print len(file_split[1].split(" "))

	i = 0
	current_score = 0
	while (i < len(file_split)):
		if file_split[i]:
			if (len(file_split[i].split(" ")) > 1):
				current_score = int(file_split[i].split(" ")[1])
				#if( int(file_split[i].split(" ")[1]) < threshold ):
				if (current_score < threshold):
					break

			else:
				line_split = file_split[i].split(".")
				if (line_split[-2][0] == 'U'):
					newline = file_split[i].split(".")[0:-1]
					newline = '/'.join(newline)		
					#newline = newline.replace('.','/')
					newline=newline.replace('aes_cipher_top_tb/dut','aes_cipher_top')
					gatelist[newline]=current_score
				elif "_reg_" in line_split[-2]:
					newline = file_split[i].split(".")[0:-1]
					newline = '/'.join(newline)		
					#newline = newline.replace('.','/')
					#newline=newline.replace('testbench/d3','leon3mp')
					newline=newline.replace('aes_cipher_top_tb/dut','aes_cipher_top')
					gatelist[newline]=current_score
			
		i = i +1
		#print i
	#print "gatelist"
	#print gatelist



def extract_pwr_multi(filename_in, filename_out, start, end):

	#a dictionary of key:id, value[number timestamps has the gate, power sum]
	
	gate_counter = 0
	linecount =0 
	#print start
	#print end
	with open(filename_in) as f:
		time = -1
    		for line in f:
			if(gate_counter < len(gatelist)):
				for gate in gatelist:
			    		modname = 'Pc(' + gate + ')'
			    		id = -1
			    		w = line.split(' ')
			    		if w[0] == '.index':
						if w[1] == modname and w[3] == 'Pc\n':
							id = int(w[2])
							#list_gateid.append(id)
							
							if id not in dic_gatepower:
								dic_gatepower[id]=[0,0,0,gatelist[gate],0]
								dic_gateid[id] = gate
							gate_counter = gate_counter + 1
							#print 'find id %d' %(id)
				linecount=linecount+1
			
				continue
			#print dic_gateid
			#sys.exit()

			
			w = line.split(' ')
			#print w
			if len(w) == 1:
			    time = int(w[0])
			    
			elif time>=start and time<=end and len(w) >= 2 and w[0] != ';':
			     #print "debug"
			     if int(w[0]) in dic_gateid:
				#print dic_gatepower[gate][0]
				#print dic_gatepower[gate][1]
				#power_sum = power_sum + float(w[-1])
				#power_num = power_num + 1
#				#print >> f_out, time-start, float(w[-1])
 				dic_gatepower[int(w[0])][0] = dic_gatepower[int(w[0])][0] +1
				dic_gatepower[int(w[0])][1] = dic_gatepower[int(w[0])][1]+float(w[-1])
				dic_gatepower[int(w[0])][2] = dic_gatepower[int(w[0])][1]/dic_gatepower[int(w[0])][0]
				#dic_gatepower[int(w[0])][4] = dic_gatepower[int(w[0])][2] * dic_gatepower[int(w[0])][3]
				dic_gatepower[int(w[0])][4] = dic_gatepower[int(w[0])][2] * dic_gatepower[int(w[0])][3]/600
#			#assume timestamps are increasing, skip rest if time>end
			if time>end:
			    break;
	#print list_gateid
	#print dic_gateid	
	#print dic_gatepower
	
	    #f_in.close()
	    #f_out.close()

##def extract_pwr_single(filename_in, filename_out, modname, start, end):
##    print 'start extract power for module %s time interval (%d,%d)' %(modname,start,end)
##    f_in  = file(filename_in, 'r')
##    f_out = file(filename_out, 'w')
##    modname = 'Pc(' + modname + ')'
##    id = -1
##    for l in f_in:
##        w = l.split(' ')
##        if w[0] == '.index':
##            if w[1] == modname and w[3] == 'Pc\n':
##                id = int(w[2])
##                #print 'find id %d' %(id)
##                break
##    if id == -1:
##        print "fail to find pwr for module %s" %modname
##        return
##    time = -1
##    for l in f_in:
##        w = l.split(' ')
##        if len(w) == 1:
##            time = int(w[0])
##        elif time>=start and time<=end and len(w) >= 2 and w[0] != ';':
##
##            if int(w[0]) == id:
##                print >> f_out, time-start, float(w[-1])
##        #assume timestamps are increasing, skip rest if time>end
##        if time>end:
##            break;
##    f_in.close()
##    f_out.close()


if __name__ == '__main__':
	extract_reggate()
	for i in range(0,tracenum):
		#infile = "/home/dtatest/gtl_sim/fame_v2/designs/leon3-asic/final_results_lowfrequency_10ps_allwithleaf/inFiles_result_sync/yuan_power_"+str(i)+".out"	
		#infile = "/home/dtatest/DTA-aes/final_results_100fs_netlist2_allwithleaf/inFiles_result_sync/yuan_power_"+str(i)+".out"
                infile = "/home/dtatest/DTA-aes/final_results_1ps_nowddl/inFiles_result_sync/yuan_power_"+str(i)+".out"
       		extract_pwr_multi(infile, "testout", leakstart, leakend)
		print "finish processing trace-" + str(i)
 	for id in dic_gateid:		
		dic_gatepower_merge[dic_gateid[id]] = dic_gatepower[id][4]
	#print dic_gatepower_merge
        dic_gatepower_merge = sorted(dic_gatepower_merge.items(), key=operator.itemgetter(1),reverse=True)
	np.savetxt('final_rank_nowddl'+'.txt', dic_gatepower_merge, fmt='%s')
