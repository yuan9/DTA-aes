#!/usr/bin/python
import copy
import re
import sys
# Set the power trace extract time window
start_time = 0
#end_time = 6399910
#end_time = 639991
end_time = 1109316

 
def extract_pwr(filename_in, filename_out, modname, start, end):
    print 'start extract power for module %s time interval (%d,%d)' %(modname,start,end)
    f_in  = file(filename_in, 'r')
    f_out = file(filename_out, 'w')
    modname = 'Pc(' + modname + ')'
    id = -1
    for l in f_in:
        w = l.split(' ')
        if w[0] == '.index':
            if w[1] == modname and w[3] == 'Pc\n':
                id = int(w[2])
                #print 'find id %d' %(id)
                break
    if id == -1:
        print "fail to find pwr for module %s" %modname
        return
    time = -1
    for l in f_in:
        w = l.split(' ')
        if len(w) == 1:
            time = int(w[0])
        elif time>=start and time<=end and len(w) >= 2 and w[0] != ';':
            if int(w[0]) == id:
                print >> f_out, time-start, float(w[-1])
        #assume timestamps are increasing, skip rest if time>end
        if time>end:
            break;
    f_in.close()
    f_out.close()



if __name__ == '__main__':
    a = sys.argv
    if len(a) < 4:
        print 'wrong arguments, should be: file_name, start_id, vect_id, do_pa_extraction, module_path0 module_path1...'
    else:
        #extract_pwr(a[1], a[1]+'.out', a[2], 616500000, 619200001)
        extract_pwr(a[1], a[2], a[3], start_time, end_time)
        #extract_pwr(a[1], a[1]+'.out', a[2], 614300000, 614310009)

