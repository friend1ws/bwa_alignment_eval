#! /usr/bin/env python

import sys

input1 = sys.argv[1]
input2 = sys.argv[2]
reference_dir = sys.argv[3]
ouput_dir = sys.argv[4]

print '\t'.join(["--input INPUT1", "--input INPUT2", "--input-recursive REFERENCE_DIR", "--output OUTPUT_BAM", "--output OUTPUT_TIME", "--env BWA_OPTION"])

for i in range(1, 16 + 1):
    for j in range(1, 5 + 1):
        print '\t'.join([input1, 
                         input2, 
                         reference_dir, 
                         ouput_dir + '/result_' + str(i) + '_' + str(j) + '.bam', 
                         ouput_dir + '/result_' + str(i) + '_' + str(j) + '.time.txt',
                         "-t " + str(i) + " -T 0"])


