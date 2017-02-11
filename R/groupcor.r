#--- Group correlation function ---#
#'@title Calculates the correlation between measures within groups/units
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@param x A vector.
#'@param y A vector.
#'@param group A vector that contains group/unit identifiers.
#'@param data A data frame.
#'@param stat The type of correlation coefficient to be calculated. One of "pearson", "kendall", or "spearman".
#'@return A tibble data frame with group identifiers and calculated correlation coefficients.
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

groupcor <- function(x, y, group, data, stat) {
    dat <- data %>%
    dplyr::group_by(data[[group]]) %>%
    dplyr::summarize(correlation = cor(data[[x]], data[[y]], method = c(stat)))
    print(dat)
}


