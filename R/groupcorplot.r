#--- Group correlation plot function ---#
#'@title Plots the correlation coefficient between measures across units
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@seealso \code{\link{bivarplots}}, \code{\link{groupcor}}
#'@param x A vector.
#'@param y A vector.
#'@param unit A vector that contians unit identifiers.
#'@param data A data frame.
#'@param stat The type of correlation coefficient to be calculated. One of "pearson", "kendall", or "spearman".
#'@return A figure that plots the correlation coefficient between measures across units.
#'@examples
#'\dontrun{
#'a <- runif(1000, min = 0, max = 1)
#'b <- x + rnorm(1000, mean = 0, sd =1)
#'c <- rep(c(1:10), times = 100)
#'data <- data.frame(a, b, c)
#'groupcorplot("a", "b", "c", data, "pearson")
#'print(dat)
#'}
#'@importFrom dplyr "%>%"
#'@export

groupcorplot <- function(x, y, unit, data, stat) {
  with(data, {dat <- data %>%
    group_by(data[[unit]]) %>%
    dplyr::summarize(correlation = cor(data[[x]], data[[y]], method = c(stat)))
    dat <- data.frame(dat)
    corplot <- ggplot2::ggplot(dat, aes_string(x = 'dat[, 1]', y = 'dat[ ,2]'))
    corplot <- corplot + ggplot2::geom_point() + ggplot2::theme_bw()
    print(corplot)
  }
  )
}

