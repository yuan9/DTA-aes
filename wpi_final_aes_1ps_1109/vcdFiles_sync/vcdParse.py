import Verilog_VCD
import sys

if __name__ == '__main__':
	symbolList=[]
	scoreList=[]
	#DataArray=[]
	bitnum = 5
	win =4

	#F1 = open('yuan_inSigrank/case2-t3-bit'+str(bitnum)+'.txt','r')
	#F1 = open('yuan_inSigrank/case2_win'+str(win)+'.txt','r')
	#F1 = open('input_yuan_sigrank_byte10bit6.txt','r')
	F1 = open('wpi_phase1_byte0bit0.txt','r')
	file_string1 = F1.read()
	F1.close()
	file_split1 = file_string1.split("\n")

	for line in file_split1:
		if line:
			##print line
			linesplit=line.split()
	#		print linesplit
			symbolList.append(linesplit[0])
			scoreList.append(linesplit[1])
	#		print linesplit[0]
	#print symbolList
	symbolList.reverse()
	scoreList.reverse()
	#print symbolList[0] + symbolList[1]
#	with open(yuan_sigrank_bit7.txt, 'r') as fh:
#		while(line=fh.readline()):
#			line = line.strip("\n")
#			symbolList.append(line[0])
#			print line[0]

	#symbolList = sys.argv[2:]
	#vcdName = sys.argv[1]
	#vcdName = 'test_365.vcd'
	vcdName = '../../test_f.vcd'
	hashOut = Verilog_VCD.parse_vcd(vcdName)
	#f = open('yuan_outSigrank/case2_t3_bit' + str(bitnum)+'.txt', 'w')
	#f = open('yuan_outSigrank/yuan_case2_win'+str(win)+'.txt', 'w')
	f = open('wpi_phase1_byte0bit0_phase2input.txt', 'w')
	for i in range(0,len(symbolList)):
		#print "processing"
		if symbolList[i]:
			f.write(symbolList[i]+" "+ scoreList[i]+ "\n")
			#print "processing"
#			print hashOut[symbolList[i]]
			for hier in hashOut[symbolList[i]]["nets"]:
				f.write(hier["hier"]+"."+hier["name"]+"\n")

			f.write("\n")
