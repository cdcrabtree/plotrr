#--- Clear function ---#
#'@title (Effectively) clears R terminal
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
