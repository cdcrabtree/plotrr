#--- Group correlation plot function ---#
#'@title Plots the correlation coefficient between measures across units
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@seealso \code{\link{bivarplots}}, \code{\link{groupcor}}
#'@param x A vector.
#'@param y A vector.
#'@param unit A vector that contians unit identifiers.
#'@param plotdata A data frame.
#'@param stat The type of correlation coefficient to be calculated. One of "pearson", "kendall", or "spearman".
#'@return A figure that plots the correlation coefficient between measures across units.
#'@examples
#'\dontrun{
#'data$x <- runif(1000, min = 0, max = 1)
#'data$y <- x + rnorm(1000, mean = 0, sd =1)
#'data$z <- rep(c(1:10), times = 100)
#'groupcorplot(x, y, z, data, "pearson")
#'print(dat)
#'}
#'@importFrom dplyr "%>%"
#'@export

groupcorplot <- function(x, y, unit, plotdata, stat) {
  with(plotdata, {dat %>%
      dplyr::group_by(plotdata$unit) %>%
      dplyr::summarise(correlation == cor(x, y, na.rm = TRUE, method = c(stat)))
    corplot <- ggplot2::ggplot(plotdata, aes_string(x = 'dat[ ,1]', y = 'dat[ ,2]'))
    corplot <- corplot + ggplot2::geom_point() + ggplot2::theme_bw()
    print(corplot)
  }
  )
}
