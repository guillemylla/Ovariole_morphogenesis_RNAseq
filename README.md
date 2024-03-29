# Ovariole morphogenesis RNAseq

Scripts used to process and analyze the RNA-seq data from *Drosophila melanogaster* ovariole morphogenesis and reproduce the results from the article "Distinct gene expression dynamics in germ line and somatic tissue during ovariole morphogenesis in *Drosophila melanogaster*"

---

![](https://img.shields.io/badge/Submitted:-Under_review-orange)


"Distinct gene expression dynamics in germ line and somatic tissue during ovariole morphogenesis in *Drosophila melanogaster*"

Shreeharsha Tarikere, Guillem Ylla, and Cassandra G. Extavour

Department of Organismic and Evolutionary Biology, Harvard University

April 2021

---

Repository content:

-  [Run_RSEM_batch.sh](Run_RSEM_batch.sh): Sbatch script to map RNA-seq reads in the cluster using STAR (2.7.6a) within RSEM (1.3.3) on the *Drosophila melanogaster* genome (Dmel6.36).
- 1-Whole_Ovary_libraries: Scripts for analyzing whole ovary RNA-seq dataset.
  - [1-Whole_Ovary_libraries.Rmd](1-Whole_Ovary_libraries.Rmd): Rmd file with the R code
  - [1-Whole_Ovary_libraries.html]( https://htmlpreview.github.io/?https://raw.githubusercontent.com/guillemylla/Ovariole_morphogenesis_RNAseq/main/1-Whole_Ovary_libraries.html): Compiled R script in html.
- 2-Tissue_Specific_Ovary_libraries: Scripts for analyzing the libraries of ovary germ and somatic tissues. Includes Differential Expression Analysis, KENN & GO enrichment analysis, and multiple plots.
  - [2-Tissue_Specific_Ovary_libraries.Rmd](1-2-Tissue_Specific_Ovary_libraries.Rmd): Rmd file with the R code
  - [2-Tissue_Specific_Ovary_libraries.html]( https://htmlpreview.github.io/?https://raw.githubusercontent.com/guillemylla/Ovariole_morphogenesis_RNAseq/main/2-Tissue_Specific_Ovary_libraries.html): Compiled R script in html.
- [data directory](data/): Contains large data files such as tables of counts and metadata files. Raw data and tables of counts also available at [GSE172015](https://www.ncbi.nlm.nih.gov/gds/?term=GSE172015).
- [Aux_functions.R](Aux_functions.R): Functions used along the project, mainly to determine and keep consistent with the colors
- [Session_info.txt](Session_info.txt): Information about the package versions used in the analysis.
