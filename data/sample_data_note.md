# Dataset Information

The original sequencing files used in this project were large paired-end FASTQ files and are not included in this repository due to GitHub storage limitations.

This repository focuses on demonstrating the complete variant calling workflow and reproducibility of analysis.

Included:
- Quality control outputs
- Pipeline scripts
- Variant annotation results
- Visualization screenshots
- Project presentation

Not Included:
- Raw FASTQ files
- Trimmed FASTQ files
- Intermediate SAM/BAM files
- Full reference databases

Reference Genome:
A subset of the human GRCh38 reference genome was used to perform alignment and downstream analysis for computational efficiency.

Tools Used:
- FastQC
- MultiQC
- Fastp
- BWA
- SAMtools
- GATK
- SnpEff
- IGV

To reproduce:
Place sequencing files inside `/data/` and execute scripts sequentially from `/scripts/`.