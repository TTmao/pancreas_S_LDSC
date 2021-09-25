#!/bin/bash

TRAITS=("f2")
dir_GWAS=~/Desktop/pancreas_S_LDSC/output/ldsc_format
dir_sLDSC_output=~/Desktop/pancreas_S_LDSC/output/sldsc_result
dir_code=~/Desktop/pancreas_S_LDSC/code

for trait in "${TRAITS[@]}"
do
  sbatch --partition=xinhe ${dir_code}/sldsc_annot_baselineLD_separate.sbatch ${dir_GWAS} ${trait} liver_DHS_ENCFF286LYP ${dir_sLDSC_output}

  sbatch --partition=xinhe ${dir_code}/sldsc_annot_baselineLD_separate.sbatch ${dir_GWAS} ${trait} liver_H3K4me1_ENCFF323TFF ${dir_sLDSC_output}

  sbatch --partition=xinhe ${dir_code}/sldsc_annot_baselineLD_separate.sbatch ${dir_GWAS} ${trait} liver_H3K4me3_ENCFF445TVA ${dir_sLDSC_output}

  sbatch --partition=xinhe ${dir_code}/sldsc_annot_baselineLD_separate.sbatch ${dir_GWAS} ${trait} liver_H3K27ac_ENCFF234QOT ${dir_sLDSC_output}

  sbatch --partition=xinhe ${dir_code}/sldsc_annot_baselineLD_separate.sbatch ${dir_GWAS} ${trait} pancreas_DHS_ENCFF897PRD ${dir_sLDSC_output}

  sbatch --partition=xinhe ${dir_code}/sldsc_annot_baselineLD_separate.sbatch ${dir_GWAS} ${trait} pancreas_H3K4me1_ENCFF668HLF ${dir_sLDSC_output}

  sbatch --partition=xinhe ${dir_code}/sldsc_annot_baselineLD_separate.sbatch ${dir_GWAS} ${trait} pancreas_H3K4me3_ENCFF340YEE ${dir_sLDSC_output}

  sbatch --partition=xinhe ${dir_code}/sldsc_annot_baselineLD_separate.sbatch ${dir_GWAS} ${trait} pancreas_H3K27ac_ENCFF583QFI ${dir_sLDSC_output}

done
