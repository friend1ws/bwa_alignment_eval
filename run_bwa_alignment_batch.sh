#! /bin/bash

INPUT1="gs://bwa_alignment_eval/sequence_data/100percent_5929_R1.fastq"
INPUT2="gs://bwa_alignment_eval/sequence_data/100percent_5929_R2.fastq"
REFERENCE_DIR="gs://bwa_alignment_eval/db/GRCh37"
OUTPUT_DIR="gs://bwa_alignment_eval/out171024"

python generate_task_file.py ${INPUT1} ${INPUT2} ${REFERENCE_DIR} ${OUTPUT_DIR} > bwa_alignment_tasks.tsv 

dsub \
  --project genomondevel1 \
  --zones asia-east1-a \
  --logging "gs://bwa_alignment_eval/out171024/logging" \
  --disk-size 200 \
  --min-cores 32 \
  --min-ram 32 \
  --image friend1ws/bwa_alignment \
  --tasks bwa_alignment_tasks.tsv \
  --script "bwa_alignment_script.sh"


