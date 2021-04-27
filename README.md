# Ovariole morphogenesis RNAseq

Scripts used to process and analyze the RNA-seq data from *Drosophila melanogaster* ovariole morphogenesis and reproduce the results from the article "Distinct gene expression dynamics in germ line and somatic tissue during ovariole morphogenesis in *Drosophila melanogaster*"

---------------
![pubstatus](https://img.shields.io/badge/Submitted:-Under_review-orange)


"Distinct gene expression dynamics in germ line and somatic tissue during ovariole morphogenesis in *Drosophila melanogaster*"

Shreeharsha Tarikere, Guillem Ylla, and Cassandra G. Extavour

Department of Organismic and Evolutionary Biology, Harvard University

April 2021

---------------

Content:

-  [Run_RSEM_batch.sh](Run_RSEM_batch.sh): Sbatch script to map RNA-seq reads in the cluster using STAR (2.7.6a) within RSEM (1.3.3) on the *Drosophila melanogaster* genome (Dmel6.36RSEM).
- 



- [data directory](data/): Contains large data files such as tables of counts and metadata files
- [Aux_functions.R](Aux_functions.R): Functions used along the project, mainly to determine and keep consistent with the colors
