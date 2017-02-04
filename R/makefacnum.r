#--- Convert factor to numeric function ---#

makefacnum <- function(x) {
  if (is.factor(x) == TRUE) {
  var.name <- names(x)
  x <- as.numeric(as.character(x))
  names(x) <- var.name } else {
    print(paste0(x, " is not a factor variable."))
  }
}
