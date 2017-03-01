#--- Length of unique values function --#
#'@title Calculates the number of unique values in a vector
#'@description Calculates the number of unique values in a vector.
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@param x A vector.
#'@return The number of unique values in a vector.
#'@examples
#'\dontrun{
#'x <- rep(c(1:10), 10)
#'length.unique(x)
#'}
#'@export length.unique

lengthunique <- function(x) {
  length(unique(x[!is.na(x)]))
}
