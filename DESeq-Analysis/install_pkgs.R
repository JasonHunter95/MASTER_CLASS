# every single install.packages() command we ran on fiji (may not be exhaustive)
# NOTE: This chunk is set to eval=FALSE.
# Run these lines interactively in your R console
# *only* if you need to install these packages.
# If running on a system where packages are already installed,
# you can ignore this.
# may need to be commented out if not compliling locally
options(repos = c(CRAN = "https://cloud.r-project.org"))
install.packages(c("tidyverse",
                   "pheatmap",
                   "textshape",
                   "Rcpp",
                   "magrittr",
                   "ggplot2",
                   "dplyr",
                   "IRanges",
                   "purrr",
                   "readr",
                   "tibble",
                   "tidyr",
                   "eulerr",
                   "ChIPseeker",
                   "patchwork"))
# install BiocManager
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.20") # specify version if needed
BiocManager::install(c("ChIPseeker",
                       "DESeq2",
                       "apeglm",
                       "rtracklayer",
                       "biomaRt",
                       "txdbmaker",
                       "org.Mm.eg.db"))
source("util/useful_functions.R")
if (!requireNamespace("bookdown", quietly = TRUE)) {
    install.packages("bookdown")
}