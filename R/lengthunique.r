#--- Calculate number of unique observations ---#

length_unique <- function(x) {
  length(unique(x[!is.na(x)]))
}
