#!/bin/bash

project=/home/godfather/Downloads/Unix/Variant_Calling

mkdir -p $project/bwa_results

bwa mem \
-t 4 \
$project/reference/hg38_subset.fa \
$project/trimmed/trimmed_R1.fastq \
$project/trimmed/trimmed_R2.fastq \
> $project/bwa_results/combine_map.sam
