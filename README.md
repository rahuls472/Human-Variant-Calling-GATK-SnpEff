# Human Variant Calling Pipeline using GATK and SnpEff

End-to-end Human Variant Calling workflow implemented using Linux and industry-standard bioinformatics tools for processing Next-Generation Sequencing (NGS) data.

This project demonstrates the complete variant discovery pipeline including quality control, preprocessing, alignment, variant detection, filtering, annotation, and visual validation.

---

## Project Overview

Variant calling is a fundamental bioinformatics workflow used to identify genomic differences between sequencing reads and a reference genome.

This project reproduces a practical human variant analysis workflow starting from raw FASTQ sequencing files and ending with annotated and interpreted variants.

Pipeline components include:

- Quality Control
- Read Trimming
- Sequence Alignment
- Alignment Processing
- Variant Calling
- Variant Filtering
- Functional Annotation
- Variant Visualization

---

## Workflow

```text
FASTQ
↓
Quality Control (FastQC + MultiQC)
↓
Read Trimming (Fastp)
↓
Alignment (BWA)
↓
SAM → BAM Conversion (SAMtools)
↓
Sorting + Indexing (SAMtools)
↓
Duplicate Marking (GATK MarkDuplicates)
↓
Variant Calling (GATK HaplotypeCaller)
↓
Variant Filtering (GATK VariantFiltration)
↓
Variant Annotation (SnpEff)
↓
Variant Interpretation
↓
Variant Validation (IGV)
```

---

## Dataset

Input Data:
- Human paired-end FASTQ sequencing data

Reference Genome:
- Human GRCh38 reference genome (subset)

### Note on Reference Genome

This project used a **subset of the GRCh38 human reference genome** rather than the complete genome.

Reason:
- Reduce computational requirements
- Enable local execution on limited hardware
- Demonstrate the complete analytical workflow efficiently

The analytical methodology remains identical to full-scale human variant calling pipelines.

---

## Tools and Technologies

| Category | Tool |
|----------|------|
| Operating System | Linux (WSL) |
| Quality Control | FastQC |
| Report Aggregation | MultiQC |
| Trimming | Fastp |
| Alignment | BWA |
| File Processing | SAMtools |
| Variant Calling | GATK |
| Annotation | SnpEff |
| Visualization | IGV |

---

## Project Structure

```text
Human-Variant-Calling-GATK-SnpEff/

├── README.md
├── scripts/
│   ├── 01_quality_control.sh
│   ├── 02_read_trimming.sh
│   ├── 03_alignment.sh
│   ├── 04_post_alignment_processing.sh
│   ├── 05_variant_calling.sh
│   ├── 06_variant_filtering.sh
│   └── 07_annotation.sh
│
├── docs/
│   └── methodology.md
│
├── screenshots/
├── qc/
├── reference/
├── annotation/
└── variants/
```

---

## Quality Control and Preprocessing

Initial quality assessment was performed using:

- FastQC
- MultiQC

Preprocessing included:

- Adapter trimming
- Low-quality base removal
- Read optimization

---

## Alignment and Variant Calling

Reads were aligned against the GRCh38 subset reference using BWA.

Post-processing included:

- BAM conversion
- Sorting
- Indexing
- Duplicate marking

Variants were identified using:

- GATK HaplotypeCaller

Filtering criteria:

- QD < 2.0
- FS > 60
- MQ < 40

---

## Variant Annotation

Detected variants were functionally annotated using SnpEff.

Example variant categories observed:

- intron_variant
- missense_variant
- synonymous_variant
- frameshift_variant
- upstream_gene_variant

Impact classes:

- HIGH
- MODERATE
- LOW
- MODIFIER

---

## Variant Validation

Representative variants were visually inspected using IGV.

Validation included:

- Read-level support
- Coverage inspection
- Alignment consistency

---

## Results Summary

Highlights:

- Successful end-to-end variant discovery workflow
- Functional annotation of detected variants
- Visual confirmation using IGV
- Demonstrated reproducible human NGS analysis pipeline

---

## Repository Notes

Large intermediate files are excluded from GitHub:

- FASTQ
- BAM
- VCF
- Annotation databases

Only summary outputs and reproducible scripts are included.

---

## Author

Rahul Singh

Master's Student – Bioinformatics

GitHub:
https://github.com/rahuls472

LinkedIn:
https://www.linkedin.com/in/rahul-kumar-singh-1796b5332/

---

## License

This project is intended for educational and portfolio purposes.
