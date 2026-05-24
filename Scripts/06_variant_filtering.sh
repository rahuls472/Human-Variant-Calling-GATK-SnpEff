#!/bin/bash

project=/home/godfather/Downloads/Unix/Variant_Calling

gatk VariantFiltration \
-R $project/reference/hg38_subset.fa \
-V $project/variants/raw_variants.vcf.gz \
-O $project/variants/filtered_variants.vcf.gz \
--filter-expression "QD < 2.0" \
--filter-name "LowQD" \
--filter-expression "FS > 60.0" \
--filter-name "StrandBias" \
--filter-expression "MQ < 40.0" \
--filter-name "LowMQ"
