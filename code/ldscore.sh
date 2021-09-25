#!/bin/bash

dir_code=~/Desktop/pancreas_S_LDSC/code

sbatch --partition=xinhe ${dir_code}/ldsc_binary_annot_QTL.sbatch liver_DHS_ENCFF286LYP

sbatch --partition=xinhe ${dir_code}/ldsc_binary_annot_QTL.sbatch liver_H3K4me1_ENCFF323TFF

sbatch --partition=xinhe ${dir_code}/ldsc_binary_annot_QTL.sbatch liver_H3K4me3_ENCFF445TVA

sbatch --partition=xinhe ${dir_code}/ldsc_binary_annot_QTL.sbatch liver_H3K27ac_ENCFF234QOT

sbatch --partition=xinhe ${dir_code}/ldsc_binary_annot_QTL.sbatch pancreas_DHS_ENCFF897PRD

sbatch --partition=xinhe ${dir_code}/ldsc_binary_annot_QTL.sbatch pancreas_H3K4me1_ENCFF668HLF

sbatch --partition=xinhe ${dir_code}/ldsc_binary_annot_QTL.sbatch pancreas_H3K4me3_ENCFF340YEE

sbatch --partition=xinhe ${dir_code}/ldsc_binary_annot_QTL.sbatch pancreas_H3K27ac_ENCFF583QFI
