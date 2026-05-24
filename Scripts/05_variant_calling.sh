#!/bin/bash

project=/home/godfather/Downloads/Unix/Variant_Calling

mkdir -p $project/variants

gatk HaplotypeCaller \
-R $project/reference/hg38_subset.fa \
-I $project/dedup/dedup.bam \
-O $project/variants/raw_variants.vcf.gz
