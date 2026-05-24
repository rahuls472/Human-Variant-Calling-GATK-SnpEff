#!/bin/bash

project=/home/godfather/Downloads/Unix/Variant_Calling

samtools view \
-bS \
$project/bwa_results/combine_map.sam \
> $project/bwa_results/combine_map.bam

samtools sort \
$project/bwa_results/combine_map.bam \
-o $project/bwa_results/combine_map_sorted.bam

samtools index \
$project/bwa_results/combine_map_sorted.bam

mkdir -p $project/dedup

gatk MarkDuplicates \
-I $project/bwa_results/combine_map_sorted.bam \
-O $project/dedup/dedup.bam \
-M $project/dedup/metrics.txt

samtools index \
$project/dedup/dedup.bam
