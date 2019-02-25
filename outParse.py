#F2 = open('result_1/yuan_power_1.out','r')
F2 = open('yuan_power.out','r')
file_string2 = F2.read()
F2.close()
file_split2 = file_string2.split("\n")
out_time = []

counter =0;
for x in file_split2:
   if x:
    if x[0]=='6':
    	#print x
    	out_time.append(x)
        counter=counter+1

print "out:" + str(counter)
print out_time[2]

counter=0
for x in vcd_time:
	if x in out_time:
		#print x
		counter = counter +1
		print counter
print "same:" +str(counter)
