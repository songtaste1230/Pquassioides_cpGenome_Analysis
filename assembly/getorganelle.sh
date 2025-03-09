#!/bin/bash
# Input: Paired-end FASTQ files
# Output: Assembled chloroplast genome
get_organelle_from_reads.py -1 data/reads_1.fq -2 data/reads_2.fq -o output_dir -F embplant_pt -k 21,45,65,85,105
