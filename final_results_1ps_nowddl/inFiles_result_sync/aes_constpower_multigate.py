#!/usr/bin/python
import copy
import re
import sys
import numpy as np
# Set the power trace extract time window
base_time = 0
start_time = 0
#start_time = 1291378147 
#start_time = 1239780774
#start_time = 620130774
#start_time = 645907346
# this time stamp is in 1ps
end_time = 640000
#end_time = 1257020528
#end_time = 628750531
#end_time = 654885703

#idlist = [53242, 77085, 53439, 53601, 53556, 53602, 53562, 53284, 53422, 53444, 53577, 53332, 53410,53446, 53384, 53537, 53441, 53539, 53403, 53370, 53447, 53328, 53438, 53509, 53470,53258, 53497, 53374, 53555, 53425, 53522, 53451, 53520, 53472, 53521, 53297, 53514, 53553, 53588, 53439, 53427, 53397, 53542, 53578, 53276, 53536]
#idlist = [53242, 77085, 53439, 53601, 53556, 53602, 53562, 53284, 53422, 53444, 53577, 53332, 53410,53446, 53384, 53537, 53441, 53539, 53403, 53370, 53447, 53328, 53438, 53509, 53470,53258, 53497, 53374, 53555, 53425]
idlist = [4756,4808, 4832,4834,4836,4838,4844,4846,4850,4829,4921,4620,4658, 4664,4666,4668,4689,4702,4724,4734,4768,4769,4807,4812,4813,4892,4600,4602,4634, 4672,4680,4706,4713,4715,4740,4743,4747,4786,4818,4824,4900,4906,4940,6917,6802]
#idlist = [4756,4808]
#, 53522, 53451, 53520, 53472, 53521, 53297, 53514, 53553, 53588, 53439, 53427, 53397, 53542, 53578, 53276, 53536]
power_dict = {}

constant = float(0.006/402)

def extract_pwr(filename_in, filename_out, modname, start, end):
    print 'start modify power to constant time interval (%d,%d)'
    f_in  = file(filename_in, 'r')
    #f_out = file(filename_out, 'w')
    modname = 'Pc(' + modname + ')'
    #Yuan: hardcode the id for U250
    #id = 53242
    skiplines = 9622
    #id = -1
    #for l in f_in:
    #    w = l.split(' ')
    #    if w[0] == '.index':
    #        if w[1] == modname and w[3] == 'Pc\n':
    #            id = int(w[2])
    #            print 'find id %d' %(id)
    #            break
    #if id == -1:
    #    print "fail to find pwr for module %s" %modname
    #    return
    time = -1
    #for l in f_in:
    i = 0
    for i,l in enumerate(f_in):
	if i >= skiplines:
        	w = l.split(' ')
        	if len(w) == 1:
        	    time = int(w[0])
        	elif time>=start and time<=end and len(w) >= 2 and w[0] != ';':
             		if (int(w[0]) in idlist):
                		#print >> f_out, time-start, float(w[-1])
				if (time-base_time in power_dict):
					#power_dict[time-base_time] = power_dict[time-base_time] + (float(w[-1])- constant)
					power_dict[time-base_time] = power_dict[time-base_time] + float(w[-1])
				else:
					power_dict[time-base_time] = float(w[-1]) 
        	#assume timestamps are increasing, skip rest if time>end
        	if time>end:
        	    break;
    f_in.close()
    #f_out.close()
    #print power_dict
    power_dict_sorted = sorted(power_dict.items())
    #print power_dict_sorted
    np.savetxt(filename_out, power_dict_sorted, fmt='%d %s')


if __name__ == '__main__':
    a = sys.argv
    if len(a) < 4:
        print 'wrong arguments, should be: file_name, start_id, vect_id, do_pa_extraction, module_path0 module_path1...'
    else:
        #extract_pwr(a[1], a[1]+'.out', a[2], 616500000, 619200001)
        extract_pwr(a[1], a[2], a[3], start_time, end_time)
        #extract_pwr(a[1], a[1]+'.out', a[2], 614300000, 614310009)

