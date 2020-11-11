import sys
#import matplotlib.pyplot as plt
import numpy as np
import operator

#Yuan: test time
#leakstart = "618570755"
#leakend = "618570757"
#BASE_TIME = 1291377940
#START_TIME = 14.580
#END_TIME = 14.585
#START_TIME = 6.025
#END_TIME = 6.146
filecount = 500
bitnumber = 0
#wpi_byte4bit6(bit38)
# LTI in Insepctor
#leakstart= "171338"
#leakend="171838"
#LTI in Modelsim
leakstart= "171063"
leakend="171204"
#leakstart=str( BASE_TIME + int(START_TIME*1000000))
#leakend=str( BASE_TIME + int(END_TIME*1000000))
print (leakstart)
print (leakend)
#leakstart= "617690200"
#leakend="617691300"
#-------------------------------------------------------------------------------#
#  Yuan: read in termediate data
#-------------------------------------------------------------------------------#
DataArray=[]
#F1 = open('data_bit7.txt','r')
F1 = open('byte0.txt','r')
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

    print ("vcd start time:" + leakstart)
    print ("vcd end time:" + leakend)
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
    #print "startline:"+ str(startline)
    #print "endlien:"+str(endline)
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
    # print "setsigArray"
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
#np.savetxt('phase1_2nditer_bit' + str(bitnumber)+ '.txt',sorted_dicleaksig , fmt='%s')

np.savetxt('wpi_phase1_byte0bit' + str(bitnumber)+ '.txt',sorted_dicleaksig , fmt='%s')

