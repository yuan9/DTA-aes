import sys
#import matplotlib.pyplot as plt
import numpy as np
import operator
import Verilog_VCD
import copy
import re
import time 

#-------------------------------------------------------------------------------#
 # Yuan: parsing the signals
 #-------------------------------------------------------------------------------#
time_str = time.strftime("%Y-%m-%d-%H-%M")
symbolList=[]
scoreList=[]
 #DataArray=[]
 #bitnum = 5
 #win =4

 #F1 = open('yuan_inSigrank/case2-t3-bit'+str(bitnum)+'.txt','r')
 #F1 = open('yuan_inSigrank/case2_win'+str(win)+'.txt','r')
F1 = open('ACA_TVLA_phase1-2020-03-09_13_24.txt','r')
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
f = open('ACA_TVLA_phase1-' +time_str+ '.txt', 'w')
for i in range(0,len(symbolList)):
         #print "processing"
     if symbolList[i]:
         f.write(symbolList[i]+" "+ scoreList[i]+ "\n")
             #print "processing"
 #           print hashOut[symbolList[i]]
         for hier in hashOut[symbolList[i]]["nets"]:
             f.write(hier["hier"]+"."+hier["name"]+"\n")

         f.write("\n")
