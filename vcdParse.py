import sys
import matplotlib.pyplot as plt
import numpy as np
#import plotly.plotly as py


#check the #of stamps in .vcd file
F1 = open('final_results/vcdFiles_sync/test_1.vcd','r')
file_string1 = F1.read()
F1.close()
file_split1 = file_string1.split("\n")

counter =0;
vcd_time = []
for x in file_split1:
   if x:
    if x[0]=='#':
    	vcd_time.append(x[1:])
    	#print x
        counter=counter+1

print "vcd:" + str(counter)
print vcd_time[0]
print vcd_time[-1]
