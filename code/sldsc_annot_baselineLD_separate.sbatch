#!/bin/bash

#SBATCH --job-name=sldsc
#SBATCH --output=/home/chenweit/Desktop/pancreas_S_LDSC/output/sldsc_log/sldsc_%J.out
#SBATCH --error=/home/chenweit/Desktop/pancreas_S_LDSC/output/sldsc_log/sldsc_%J.err
#SBATCH --partition=broadwl
#SBATCH --mem=10G

dir_GWAS=$1
trait=$2
prefix_annot=$3
dir_sLDSC_output=$4

dir_LDSC=$HOME/Desktop/ldsc
dir_ldsc_annot=$HOME/Desktop/pancreas_S_LDSC/annot/ldscores
dir_baselineLD=/$HOME/Desktop/ldsc/1000G_Phase3_baselineLD_v2.2_ldscores

echo "Factor: ${trait}"

module load python
source activate ldsc

dir_out=${dir_sLDSC_output}/${trait}_${prefix_annot}/baselineLDv2.2
mkdir -p ${dir_out}

python $HOME/Desktop/ldsc/ldsc.py \
--h2 ${dir_GWAS}/${trait}.sumstats.gz \
--ref-ld-chr ${dir_baselineLD}/baselineLD.,${dir_ldsc_annot}/${prefix_annot}/${prefix_annot}. \
--frqfile-chr ${dir_LDSC}/LDSCORE/1000G_Phase3_frq/1000G.EUR.QC. \
--w-ld-chr ${dir_LDSC}/LDSCORE/1000G_Phase3_weights_hm3_no_MHC/weights.hm3_noMHC. \
--overlap-annot --print-cov --print-coefficients --print-delete-vals \
--out ${dir_out}/${prefix_annot}_baselineLDv2.2
