#--- Convert factor to numeric function ---#
#'@title Converts factor vectors to numeric vectors
#'@description Converts factor vectors to numeric vectors.
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@param x A vector.
#'@return A numeric vector.
#'@examples
#'\dontrun{
#'x <- c("x", "y", "z")
#'x <- as.factor(x)
#'x
#'x <- makefacnum(x)
#'x
#'is.numeric(x)
#'}
#'@export

makefacnum <- function(x) {
  as.numeric(as.character(x))
}
