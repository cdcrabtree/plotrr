#--- Group correlation plot function ---#
#'@title Plots the correlation coefficient between measures across groups/units
#'@description Returns a figure that plots the correlation coefficient between measures within groups/units. This can be used to visually explore the relationsip between two factors within cases.
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@param x A vector.
#'@param y A vector.
#'@param group A vector that contians group identifiers.
#'@param data A data frame.
#'@param stat The type of correlation coefficient to be calculated. One of "pearson", "kendall", or "spearman".
#'@return A figure that plots the correlation coefficient between measures across groups/units.
#'@examples
#'a <- runif(1000, min = 0, max = 1)
#'b <- a + rnorm(1000, mean = 0, sd =1)
#'c <- rep(c(1:10), times = 100)
#'data <- data.frame(a, b, c)
#'groupcorplot("a", "b", "c", data, "pearson")
#'@importFrom dplyr "%>%" "group_by"
#'@importFrom stats "cor"
#'@export

groupcorplot <- function(x, y, group, data, stat) {
  with(data, {dat <- data %>%
    group_by(data[[group]]) %>%
    dplyr::summarize(correlation = cor(data[[x]], data[[y]], method = c(stat)))
    dat <- data.frame(dat)
    corplot <- ggplot2::ggplot(dat, ggplot2::aes_string(x = 'dat[, 1]', y = 'dat[ ,2]'))
    corplot <- corplot + ggplot2::geom_point() + ggplot2::theme_bw()
    print(corplot)
  }
  )
}
