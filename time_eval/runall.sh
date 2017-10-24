#! /bin/bash

mkdir result_time

gsutil cp gs://bwa_alignment_eval/out171024/result_*_*.time.txt result_time/

python summarize.py


