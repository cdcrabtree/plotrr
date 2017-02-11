#--- Clear function ---#
#'@title (Effectively) clears R terminal
#'@description Effectively clears the R terminal by filling it with whitespace.
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@param ... An unused argument.
#'@examples
#'\dontrun{
#'clear()
#'}
#'@export

clear <- function(...) {
  cat("\014")
}
