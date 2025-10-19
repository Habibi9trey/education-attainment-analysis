# Run with: Rscript install.R
options(repos = c(CRAN = "https://cloud.r-project.org"), timeout = 600)
if (!requireNamespace("renv", quietly = TRUE)) install.packages("renv")
if (!dir.exists("renv")) renv::init(bare = TRUE)

# Base R packages
renv::install(c("tidyverse","ggplot2","rmarkdown","rnaturalearth","rnaturalearthdata"))

# Spatial from R-universe first (Apple Silicon friendly)
try(renv::install("terra", repos = c("https://rspatial.r-universe.dev", getOption("repos"))), silent = TRUE)
try(renv::install("sf",    repos = c("https://r-spatial.r-universe.dev", getOption("repos"))), silent = TRUE)

renv::snapshot(prompt = FALSE)
cat("✅ renv snapshot written.\n")
