#--- Length of unique values function --#
#'@title Calculates the number of unique values in a vector
#'@description Calculates the number of unique values in a vector.
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@param x A vector.
#'@return The number of unique values in a vector.
#'@examples
#'x <- rep(c(1:10), 10)
#'lengthunique(x)
#'@export lengthunique

lengthunique <- function(x) {
  length(unique(x[!is.na(x)]))
}
