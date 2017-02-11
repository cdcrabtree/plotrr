#--- Violin plots function ---#
#'@title Creates violin plots for a relationship between two measures across units
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@param x A vector.
#'@param y A vector.
#'@param unit A vector that contains unit/group identifiers.
#'@param data A data frame.
#'@param stat The type of correlation coefficient to be calculated. One of "pearson", "kendall", or "spearman".
#'@return A tibble data frame with unit identifiers and calculated correlation coefficients.
#'@examples
#'\dontrun{
#'a <- runif(1000, min = 0, max = 1)
#'b <- x + rnorm(1000, mean = 0, sd =1)
#'c <- rep(c(1:10), times = 100)
#'data <- data.frame(a, b, c)
#'violinplots("a", "b", "c", data)
#'print(dat)
#'}
#'@export

violinplots <- function(x, y, unit, data) {
  with(data, {
    for(i in 1:length(unique(data[[unit]]))) {
      j <- unique(data[[unit]])[i]
      violin.j <- ggplot2::ggplot(data[data[[unit]]==j, ], aes(x = data[[x]][data[[unit]]==j], y = data[[y]][data[[unit]]==j])) + ggplot2::geom_violin() + ggplot2::labs(title = j, xlab = "x", ylab = "y")
      violin.j <- violin.j + ggplot2::theme_bw()
      print(violin.j)
    }
  }
  )
}
