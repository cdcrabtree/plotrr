#--- Save installed package list function --#
#'@title Prints the list of installed packages to a text file
#'@description Print the list of installed packages to a text file.
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@param wd The directory to which the text file will be exported. The default is the working directory.
#'@param file The name of the exported text file. The default is \code{installed_r_packages.txt}.
#'@return A text file that contains a list of all installed packages.
#'@examples
#'\dontrun{
#'save.package.list(wd = "~/", file = "packages.txt")
#'}
#'@export

save.package.list <- function(wd = NULL, file = NULL) {
  if (is.null(wd)) {
    setwd(getwd())
  } else {
    setwd(wd)
  }
  packages <- as.data.frame(utils::installed.packages()[, c(1,3:4)])
  rownames(packages) <- NULL
  packages <- packages[is.na(packages$Priority), 1:2]
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
