#--- Bivariate plot with rugplot function ---#
#'@title Plots the bivariate relationship between two measures and a rugplot for each measure
#'@description Returns a plot of the bivariate relationship between two measures with a rugplot of each measure.
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@param x A vector.
#'@param y A vector.
#'@param data A data frame.
#'@return A plot of the bivariate relationship between two measures with a rugplot for each measure.
#'@examples
#'\dontrun{
#'a <- runif(1000, min = 0, max = 1)
#'b <- x + rnorm(1000, mean = 0, sd =1)
#'data <- data.frame(a, b)
#'bivarrugplot("a", "b", data)
#'}
#'@export

bivarrugplot <- function(x, y, data) {
  with(data, {
    bivar.rug <- ggplot2::ggplot(data, aes(x = data[[x]], y = data[[y]]))
    bivar.rug <- bivar.rug + ggplot2::scale_x_continuous(limit=c(min(data[[x]]), max(data[[x]]))) + ggplot2::scale_y_continuous(limit=c(min(data[[y]]), max(data[[y]])))
    bivar.rug <- bivar.rug + ggplot2::geom_point() + ggplot2::geom_rug(size=0.2) + ggplot2::theme_bw()
    print(bivar.rug)
  }
  )
}
