#!/bin/bash

project=/home/godfather/Downloads/Unix/Variant_Calling

mkdir -p $project/annotation

snpEff \
GRCh38.99 \
$project/variants/filtered_variants.vcf.gz \
> $project/annotation/annotated.vcf
