#! /usr/bin/env python

import glob, re

allfiles = glob.glob("result_time/result_*_*.time.txt")

hout = open("bwa_alignment_time_summary.txt", 'w')
print >> hout, "Thread" + '\t' + "Trial" + '\t' + "Time"

for tfile in sorted(allfiles):
    match = re.match(r'result_time\/result_(\d+)_(\d+).time.txt', tfile)
    tthread = match.group(1)
    ttrial = match.group(2)

    with open(tfile, 'r') as hin:
        line = hin.readline().rstrip('\n')
        ttime = line.replace("PROCESS TIME: ", '') 
   
        print >> hout, '\t'.join([tthread, ttrial, ttime])

hout.close()


