#--- Histogram plots function ---#
#'@title Creates histograms for a measure for each group/unit
#'@description Returns histograms for a measure for each group/unit.
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@param x A vector.
#'@param y A vector.
#'@param group A vector that contains unit/group identifiers.
#'@param data A data frame.
#'@param n The number of bins. Some experimentation with this number might be necessary.
#'@return Historgrams for a measure for each group/unit.
#'@examples
#'a <- runif(1000, min = 0, max = 1)
#'b <- a + rnorm(1000, mean = 0, sd = 1)
#'c <- rep(c(1:10), times = 100)
#'data <- data.frame(a, b, c)
#'dotplots("a", "b", "c", data, 20)
#'@export

dotplots <- function(x, y, group, data, n) {
  with(data, {
    for(i in 1:length(unique(data[[group]]))) {
      j <- unique(data[[group]])[i]
      dot.j <- ggplot2::ggplot(data[data[[group]]==j, ], ggplot2::aes(x = data[[x]][data[[group]]==j])) + ggplot2::geom_dotplot(binwidth=1/n) + ggplot2::labs(title = j) + ggplot2::xlab(x)
      dot.j <- dot.j + ggplot2::theme_bw()
      print(dot.j)
    }
  }
  )
}
