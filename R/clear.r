#--- Clear function ---#
#'@title (Effectively) clearss R terminal
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@examples
#'\dontrun{
#'clear()
#'}
#'@export

clear <- function(...) {
  cat("\014")
}
