#--- Calculate number of unique observations ---#
#--- Save installed package list function --#
#'@title Calculates the number of unique values in a vector
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@param x A vector.
#'@return The number of unique values in a vector.
#'@examples
#'\dontrun{
#'x <- rep(c(1:10), 10)
#'length_unique(x)
#'}
#'@export

length_unique <- function(x) {
  length(unique(x[!is.na(x)]))
}
