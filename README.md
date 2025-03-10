# Pquassioides_cpGenome_Analysis

This repository contains the analysis scripts used in the study "Decoding the Chloroplast Genome of *Picrasma quassioides*: Structure, Variability, and Evolutionary Relationships" published in *Ecology and Evolution*. These scripts support the reproducibility of chloroplast genome assembly, repeat analysis, codon usage, nucleotide diversity, selective pressure, and phylogenetic reconstruction as described in the manuscript.

## Repository Structure
- **`filter_reads/`**: Scripts for filtering raw reads.
- **`assembly/`**: Scripts for chloroplast genome assembly.
- **`repeats/`**: Scripts for detecting repetitive elements and SSRs.
- **`codon_usage/`**: Scripts for codon usage bias analysis.
- **`nucleotide_diversity/`**: Scripts for nucleotide diversity analysis.
- **`selective_pressure/`**: Scripts for Ka/Ks ratio calculation.
- **`phylogeny/`**: Scripts for phylogenetic tree construction.
- **`data/`**: Placeholder directory for input files (not provided; see below).

## Prerequisites
Before running the scripts, ensure the following software is installed:
- **GetOrganelle v1.7.1**: For genome assembly (`assembly/`).
- **REPuter v3.0** and **MISA v2.1**: For repeat analysis (`repeats/`).
- **CodonW v1.4.2**: For codon usage analysis (`codon_usage/`).
- **DnaSP v6**: For nucleotide diversity (`nucleotide_diversity/`).
- **Python 3.x** with `pandas` and `matplotlib`: For plotting (`nucleotide_diversity/`).
- **KaKs_calculator v3.0**: For selective pressure (`selective_pressure/`).
- **R** with `ggplot2`: For plotting Ka/Ks (`selective_pressure/`).
- **MAFFT v7.487**, **Gblocks v0.91b**, **IQ-TREE v1.6.12**: For phylogeny (`phylogeny/`).

## Data Availability
The original raw data and genome sequence supporting this study are accessible via the addresses provided in the manuscript’s “Data Availability Statement” (e.g., GenBank accession NC_067857.1, BioProject PRJNA786878, SRA SRP349634, Bio-Sample SAMN23730768). As such, no raw data or intermediate files are included in this repository. Users are directed to retrieve these data from the specified sources to replicate the analyses.



