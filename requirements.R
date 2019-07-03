library(remotes)

##### Install specific package versions from CRAN #####


#install_version("readxl", "1.3.1")
install_version("tidyverse", "1.2.1")
#install_version("plyr", "1.8.4")
install_version("arules", "1.6-3")
#install_version("arulesViz", "1.3-3")
#install_version("visNetwork", "2.0.7")
#install_version("knitr", "1.23")
#install_version("lubridate", "1.7.4")

# Some issues with the arules package
#packageurl = "https://cran.r-project.org/src/contrib/arules_1.6-3.tar.gz"
#install.packages(packageurl, repos=NULL, type="source")

#remotes::install_github("mhahsler/arules@arules_1.6-3")
##### Install packages in development from GitHub #####

# install_github("nicholasehamilton/ggtern")

##### Install packages from Bioconductor

# source("https://bioconductor.org/biocLite.R")
# biocLite("GenomicRanges")

##### Include datasets in the image

data_dir <- Sys.getenv("DATADIR")
dir.create(data_dir)

#' @param x Amazon S3 URL of the dataset, as a string. 
download_data <- function(x) {
  download.file(
    x,
    file.path(data_dir, basename(x))
  )
}

# Usage is, e.g.,
# download_data(
#   "https://assets.datacamp.com/production/repositories/19/datasets/27a2a8587eff17add54f4ba288e770e235ea3325/coffee.csv"
# )
