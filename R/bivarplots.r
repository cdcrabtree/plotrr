#--- Bivariate plots function ---#
#'@title Plots the bivariate relationship between two measures for each group/unit
#'@description Returns a plot of the bivariate relationship between two measures for each group/unit.
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@param x A vector.
#'@param y A vector.
#'@param group A vector.
#'@param data A data frame.
#'@return A series of figures that plot the bivariate relationship between two measures for each group/unit.
#'@examples
#'\dontrun{
#'a <- runif(1000, min = 0, max = 1)
#'b <- a + rnorm(1000, mean = 0, sd =1)
#'c <- rep(c(1:10), times = 100)
#'data <- data.frame(a, b, c)
#'bivarplots("a", "b", "c", data)
#'}
#'@export

bivarplots <- function(x, y, group, data) {
  with(data, {
  for(i in 1:length(unique(data[[group]]))) {
    j <- unique(data[[group]])[i]
    bivar.j <- ggplot2::ggplot(data[data[[group]]==j, ], ggplot2::aes(x = data[[x]][data[[group]]==j], y = data[[y]][data[[group]]==j])) + ggplot2::geom_jitter() + ggplot2::geom_smooth(method = loess) + ggplot2::labs(title = j) + xlab(x) + ylab(y)
    bivar.j <- bivar.j + ggplot2::theme_bw()
    print(bivar.j)
  }
  }
  )
}
