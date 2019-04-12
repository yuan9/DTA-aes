import sys
#import matplotlib.pyplot as plt
import numpy as np
import operator
import Verilog_VCD
import copy
import re


filecount = 600
bitnumber = 6

#time stamp in ps
#leakstart= "278950"
#leakend="281470"
#leakstart= "278610"
#leakend="279910"
leakstart= "278550"
leakend="279400"
print leakstart
print leakend

prefix = 'wddl_MSRegMuxLPmoreWDDLGates_'

#---------------------------------------------#
# parameter for gate reranking
#---------------------------------------------#
threshold =400

#-------------------------------------------------------------------------------#
#  Yuan: read in termediate data
#-------------------------------------------------------------------------------#
DataArray=[]
#F1 = open('data_bit7.txt','r')
F1 = open('118.txt','r')
file_string1 = F1.read()
F1.close()
file_split1 = file_string1.split("\n")

for i in range (0,len(file_split1)):
    DataArray.append(int(file_split1[i][bitnumber]))

print("Analyzing bit_" + str(bitnumber))
#print "DataArray:"
#print DataArray
#-------------------------------------------------------------------------------#
#  Yuan: leakage signal dictionary intilization
#-------------------------------------------------------------------------------#
dicleaksig ={} # store all the toggling signals
#statendArray=[] # 2-dimention array stores start and end line for difference vcd files
setsigArray=[] #2-dimention array of sets, in the sets it contains all the signals in the vcd file
#Yuan: modify the counter to control to files to read in
for counter in range (0,filecount):
    F1 = open('test_' + str(counter)+ '.vcd','r')
    file_string1 = F1.read()
    F1.close()
    file_split1 = file_string1.split("\n")
    #print "reach here" + file_split1[1]
    #----------------------------------------------------#
    # Yuan: get the start and end timestamp
    #----------------------------------------------------#
    #print "-------------------------------------------"
    #print "processing test_" + str(counter)
    stamparray=[]
    stampline=[]
    for i in range (0,len(file_split1)):
        if file_split1[i]:
            if file_split1[i][0] == "#" :
                stamparray.append(file_split1[i][1:])

    for i in range (0,len(stamparray)):
    # find the start time stamp
        if int(stamparray[i]) <= int(leakstart) and int(stamparray[i+1]) > int(leakstart):
            leakstart = stamparray[i]
    #find the end time stamp
        if int(stamparray[i]) < int(leakend) and int(stamparray[i+1]) >= int(leakend):
            leakend = stamparray[i+1]
   # print "vcd" + str(counter)
   # print "start time:" + leakstart
   # print "end time:" + leakend
    # #----------------------------------------------------#
    # # Yuan: get all the time stamps during leakstart-endstart
    # #----------------------------------------------------#
    # leakstamps=[]
    # for i in range (0,len(stamparray)):
    #     if int(stamparray[i]) >= int(leakstart) and int(stamparray[i]) < int(leakend):
    #         leakstamps.append(stamparray[i])

    # print "leakstamps:" + str(len(leakstamps))
    # #print leakstamps

    #----------------------------------------------------#
    # Yuan: get start line and end line
    #----------------------------------------------------#

    for i in range (0,len(file_split1)):
        if file_split1[i][1:] == leakstart:
            startline = i
        if file_split1[i][1:] == leakend:
            endline = i
    #statendArray.append((startline,endline))
    print "startline:"+ str(startline)
    print "endlien:"+str(endline)
    #print "statendArray:"
    #print statendArray

    #----------------------------------------------------#
    # Yuan: create dicleaksig for all the toggle signal during leakage time
    #----------------------------------------------------#
    setsig= set() #Yuan: every vcd file has a set generated. 
    for i in range (startline,endline):
        if file_split1[i]:
            if file_split1[i][0] != "#" : 
                if file_split1[i][0] == "b" :
                    line_split = file_split1[i].split()
                    dicleaksig.update({line_split[1]: 0})
                    setsig.add(line_split[1])
                else:
                    dicleaksig.update({file_split1[i][1:]: 0})
                    setsig.add(file_split1[i][1:])

    #update thes setsigArray:
    setsigArray.append(setsig)
    # print "Value : %s" %  dicleaksig.items()
    # print "setsig:"
    # print setsig
   # print "setsigArray:"
   # print setsigArray
   


    print("finish initilize test_" + str(counter))
    #print "###################################################"
    counter = counter + 1
    
#-------------------------------------------------------------------------------#
#  Yuan: scoring the dicleaksig
#-------------------------------------------------------------------------------#
for counter in range (0,filecount):
    F1 = open('test_' + str(counter)+ '.vcd','r')
    file_string1 = F1.read()
    F1.close()
    file_split1 = file_string1.split("\n")
    #print "startline2:" + str(statendArray[counter][0])
    #print "endline2:" + str(statendArray[counter][1])
    for k in dicleaksig:
        #sig=toggle && data = 1
        #print k
        if k in setsigArray[counter] and DataArray[counter]:
            # print "+1"
            dicleaksig[k] = dicleaksig[k] +1
        #sig=not toggle && data = 0
        elif k not in setsigArray[counter] and not DataArray[counter]:
            # print "+1"
            dicleaksig[k] = dicleaksig[k] +1
        #sig = toggle && data = 0
        elif k in setsigArray[counter] and not DataArray[counter]:
            # print "-1"
            dicleaksig[k] = dicleaksig[k] -1
        #sig = not toggle && data =1
        elif k not in setsigArray[counter] and DataArray[counter]:
            # print "-1"
            dicleaksig[k] = dicleaksig[k] -1

    print ("finish process test-" + str(counter))
    #print "----------------------------------------------------"

    counter = counter +1
#print "dicleaksig:"
#print dicleaksig
#--------------------------------------------------------------------------------#
#  find defined signal
#--------------------------------------------------------------------------------#
# print "file line:"
# print file_split1[173391][16]
# line_split = file_split1[173391].split()
# print "line split:"
# print line_split[4]
# d = {'x':1, 'y':2, 'z':3}
# d1 = {'x':'a', 'y':'b', 'z':'c'}

# In [10]: dict((d1[key], value) for (key, value) in d.items())
# Out[10]: {'a': 1, 'b': 2, 'c': 3}
# dicsigsearch={} # dictionary of signals and it's corresponding definition
# for k in dicleaksig:
#     for i in range (0,len(file_split1)):
#         if k in file_split1[i]:
#             line_split = file_split1[i].split()
#             dicsigsearch.update({k: line_split[4]})
#             break
# print "dicsigsearch:"
# print dicsigsearch

# dicsigfinal={}
# dicsigfinal = dict((dicsigsearch[key], value) for (key, value) in dicleaksig.items())

# print "dicsigfinal"
# print dicsigfinal

#-------------------------------------------------------------------------------#
# Yuan: sort the dicleaksig by score
#-------------------------------------------------------------------------------#
#sorted_dicleaksig is a 2 dimensional array with sorted by the value
sorted_dicleaksig = sorted(dicleaksig.items(), key=operator.itemgetter(1))
#print  (sorted_dicleaksig)
#np.savetxt('yuan_sigrank.txt',sorted_dicleaksig , fmt='%s')
#np.savetxt('input_316_byte10bit' + str(bitnumber)+ '.txt',sorted_dicleaksig , fmt='%s')
np.savetxt( prefix +'rawsignal.txt',sorted_dicleaksig , fmt='%s')

#-------------------------------------------------------------------------------#
# Yuan: parsing the signals
#-------------------------------------------------------------------------------#

symbolList=[]
scoreList=[]
#DataArray=[]
#bitnum = 5
#win =4

#F1 = open('yuan_inSigrank/case2-t3-bit'+str(bitnum)+'.txt','r')
#F1 = open('yuan_inSigrank/case2_win'+str(win)+'.txt','r')
F1 = open(prefix +'rawsignal.txt','r')
file_string1 = F1.read()
F1.close()
file_split1 = file_string1.split("\n")

for line in file_split1:
    if line:
            ##print line
        linesplit=line.split()
    #       print linesplit
        symbolList.append(linesplit[0])
        scoreList.append(linesplit[1])
    #       print linesplit[0]
    #print symbolList
symbolList.reverse()
scoreList.reverse()
    #print symbolList[0] + symbolList[1]
#   with open(yuan_sigrank_bit7.txt, 'r') as fh:
#       while(line=fh.readline()):
#           line = line.strip("\n")
#           symbolList.append(line[0])
#           print line[0]

    #symbolList = sys.argv[2:]
    #vcdName = sys.argv[1]
vcdName = 'test_0.vcd'
hashOut = Verilog_VCD.parse_vcd(vcdName)
    #f = open('yuan_outSigrank/case2_t3_bit' + str(bitnum)+'.txt', 'w')
    #f = open('yuan_outSigrank/yuan_case2_win'+str(win)+'.txt', 'w')
f = open(prefix +'rank.txt', 'w')
for i in range(0,len(symbolList)):
        #print "processing"
    if symbolList[i]:
        f.write(symbolList[i]+" "+ scoreList[i]+ "\n")
            #print "processing"
#           print hashOut[symbolList[i]]
        for hier in hashOut[symbolList[i]]["nets"]:
            f.write(hier["hier"]+"."+hier["name"]+"\n")

        f.write("\n")


# #-------------------------------------------------------------------------------#
# Yuan: reranking the signals
#-------------------------------------------------------------------------------#


gatelist={}
reglist=[]


#BASE_TIME = 1291542609
#START_TIME = 14.580
#START_TIME = 9.918
##END_TIME = 14.585
#END_TIME = 12.488

leakstart2= int(leakstart)
leakend2= int(leakend)
#leakstart = int(129137794)
#leakend= int(130896215)
#leakstart2= 280270
#leakend2= 281610
print leakstart2
print leakend2

dic_gatepower={}
dic_gateid={}
dic_gatepower_merge={}
##########################################################################
# filter all the gates and registers and score need to be >= threshold
##########################################################################
def extract_reggate():
	
	#F1 = open('final_leakagemodel_sigrank_bit6.txt','r')
	#F1 = open('rank_316_byte10bit6.txt','r')
        F1 = open(prefix +'rank.txt','r')
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
				dic_gatepower[int(w[0])][4] = dic_gatepower[int(w[0])][2] * dic_gatepower[int(w[0])][3]
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
	for i in range(0,filecount):
		#infile = "/home/dtatest/gtl_sim/fame_v2/designs/leon3-asic/final_results_lowfrequency_10ps_allwithleaf/inFiles_result_sync/yuan_power_"+str(i)+".out"	
		infile =  "../inFiles_result_sync/yuan_power_"+str(i)+".out"
       		extract_pwr_multi(infile, "testout", leakstart2, leakend2)
		print "finish reranking analysis trace-" + str(i)
 	for id in dic_gateid:		
		dic_gatepower_merge[dic_gateid[id]] = dic_gatepower[id][4]
	#print dic_gatepower_merge
        dic_gatepower_merge = sorted(dic_gatepower_merge.items(), key=operator.itemgetter(1),reverse=True)
	np.savetxt(prefix +'rerank.txt', dic_gatepower_merge, fmt='%s')


