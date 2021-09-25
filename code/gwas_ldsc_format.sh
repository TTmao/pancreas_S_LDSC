#!/bin/bash

module load python

conda activate ldsc

dir_GWAS_ldsc_format="/home/chenweit/Desktop/pancreas_S_LDSC/output/ld_format/"

cd ${dir_GWAS_ldsc_format}

for factor in f1 f2 f3
do
	file_name="/home/chenweit/Desktop/pancreas_S_LDSC/data/${factor}.tsv.gz"
	zless ${file_name} | head
	python $HOME/Desktop/ldsc/munge_sumstats.py \
	--sumstats ${file_name} \
	--merge-alleles $HOME/Desktop/pancreas_S_LDSC/w_hm3.snplist \
	--N 24925 \
	--chunksize 500000 \
	--out ${dir_GWAS_ldsc_format}/${factor}

	zcat ${dir_GWAS_ldsc_format}/${factor}.sumstats.gz | awk '$2!=""' | gzip > ${dir_GWAS_ldsc_format}/${factor}.cleaned.sumstats.gz
	mv ${dir_GWAS_ldsc_format}/${factor}.cleaned.sumstats.gz ${dir_GWAS_ldsc_format}/${factor}.sumstats.gz
done
