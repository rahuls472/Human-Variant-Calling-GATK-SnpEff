#!/bin/bash

data=/home/godfather/Downloads/Unix/Variant_Calling/data

report_collection=/home/godfather/Downloads/Unix/Variant_Calling

mkdir -p $report_collection/qc

fastqc $data/*.fastq -o $report_collection/qc/

multiqc $report_collection/qc/ -o $report_collection/qc/

