#--- Group correlation function ---#
#'@title Calculates the correlation between measures within units/groups
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@seealso \code{\link{bivarplots}}, \code{\link{groupcorplots}}
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
#'groupcor("a", "b", "c", data, "pearson")
#'print(dat)
#'}
#'@importFrom dplyr "%>%"
#'@export

groupcor <- function(x, y, unit, data, stat) {
    dat <- data %>%
    group_by(data[[unit]]) %>%
    dplyr::summarize(correlation = cor(data[[x]], data[[y]], method = c(stat)))
    print(dat)
}


