#!/bin/bash

project=/home/godfather/Downloads/Unix/Variant_Calling

mkdir -p $project/trimmed

fastp \
-i $project/data/NIST7086_CGTACTAG_L001_R1_001.fastq \
-I $project/data/NIST7086_CGTACTAG_L001_R2_001.fastq \
-o $project/trimmed/trimmed_R1.fastq \
-O $project/trimmed/trimmed_R2.fastq
