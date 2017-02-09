#--- Group correlation function ---#
#'@title Calculates the correlation between measures within groups
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@seealso \code{\link{bivarplots}}, \code{\link{groupcorplots}}
#'@param x A vector.
#'@param y A vector.
#'@param unit A vector that contians unit identifiers.
#'@param plotdata A data frame.
#'@param stat The type of correlation coefficient to be calculated. One of "pearson", "kendall", or "spearman".
#'@return A data frame with unit identifiers and calculated correlation coefficients.
#'@examples
#'\dontrun{
#'data$x <- runif(1000, min = 0, max = 1)
#'data$y <- x + rnorm(1000, mean = 0, sd =1)
#'data$z <- rep(c(1:10), times = 100)
#'groupcor(x, y, z, data)
#'print(dat)
#'}
#'@export

groupcor <- function(x, y, unit, plotdata, stat) {
 with(plotdata, {dat %>%
    dplyr::group_by(plotdata$unit) %>%
    dplyr::summarise(correlation == cor(x, y, na.rm = TRUE, method = c("stat")))
    print(dat)
 }
 )
}
