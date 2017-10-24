#! /bin/bash

dsub \
  --project genomondevel1 \
  --zones asia-northeast1-a \
  --logging "gs://bwa_alignment_eval/out171024/logging" \
  --disk-size 200 \
  --min-cores 6 \
  --min-ram 36 \
  --image friend1ws/bwa_alignment \
  --input INPUT1="gs://bwa_alignment_eval/sequence_data/100percent_5929_small_R1.fastq" \
  --input INPUT2="gs://bwa_alignment_eval/sequence_data/100percent_5929_small_R2.fastq" \
  --input-recursive REFERENCE_DIR="gs://bwa_alignment_eval/db/GRCh37" \
  --output OUTPUT_BAM="gs://bwa_alignment_eval/out171024/test.bam" \
  --output OUTPUT_TIME="gs://bwa_alignment_eval/out171024/time.txt" \
  --env BWA_OPTION="-t 8 -T 0" \
  --script "bwa_alignment_script.sh"

