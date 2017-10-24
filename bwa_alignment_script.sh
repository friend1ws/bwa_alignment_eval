#!/bin/bash

set -o errexit
set -o nounset
set -o xtrace

if [ ! -f /mnt/data/input/gs/bwa_alignment_eval/db/GRCh37/GRCh37.fa ]
then
    echo "NO REFERENCE!!!"
fi

START_TIME=`date +%s`
bwa mem ${BWA_OPTION} ${REFERENCE_DIR}/GRCh37.fa ${INPUT1} ${INPUT2} | samtools view -Shb -o ${OUTPUT_BAM} -
END_TIME=`date +%s`

PROC_TIME=`expr ${END_TIME} - ${START_TIME}`
echo -e "PROCESS TIME: ${PROC_TIME}" > ${OUTPUT_TIME}

