#--- Calculate number of unique observations ---#
#' @export

length_unique <- function(x) {
  length(unique(x[!is.na(x)]))
}
