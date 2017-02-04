#--- Save installed package list function --#

save.package.list <- function(wd=NULL,file=NULL) {
  if (is.null(wd)) {
    setwd(getwd())
  } else {
    setwd(wd)
  }
  packages <- as.data.frame(installed.packages()[,c(1,3:4)])
  rownames(packages) <- NULL
  packages <- packages[is.na(packages$Priority),1:2]
  if (is.null(file)) {
    file <- "installed_r_packages.txt"
    sink(file)
  } else {
    sink(file)
  }
  cat("Installed Packages \n")
  cat("------------------ \n\n")
  print(packages)
  sink()
}
