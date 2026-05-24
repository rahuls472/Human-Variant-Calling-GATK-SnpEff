# Quality Control Summary

## Overview

Quality assessment was performed on paired-end FASTQ sequencing data before and after preprocessing.

The objective was to evaluate sequencing quality and improve downstream variant calling reliability.

---

## Tools Used

- FastQC
- MultiQC
- Fastp

---

## Initial Quality Assessment

Input:
- Raw paired-end FASTQ files

Evaluation Metrics:
- Per-base sequence quality
- Adapter contamination
- Sequence content
- GC distribution
- Read quality scores

Observations:
- High overall sequencing quality
- Adapter contamination detected
- Minor quality reduction toward read ends

---

## Read Trimming and Filtering

Processing Tool:
- Fastp

Applied:
- Adapter trimming
- Low-quality read filtering
- Removal of poor-quality bases

---

## Post-Trimming Results

Summary:

| Metric | Before | After |
|--------|--------|--------|
| Total Reads | ~21.5M | ~20.5M |
| Q20 | 94.15% | 97.71% |
| Q30 | 88.52% | 92.30% |
| Adapter Contamination | Present | Reduced |

---

## Conclusion

Quality control improved overall read quality and reduced adapter contamination, producing cleaner sequencing data for alignment and downstream variant analysis.

See:
- MultiQC reports
- FastQC outputs
- Fastp summary