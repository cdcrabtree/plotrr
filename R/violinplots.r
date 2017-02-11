#--- Violin plots function ---#
#'@title Creates violin plots for the relationship between two measures for each group/unit
#'@description Returns violin plots for the relationship between two measures for each group/unit.
#'@author Charles Crabtree \email{ccrabtr@umich.edu}
#'@param x A vector.
#'@param y A vector.
#'@param group A vector that contains unit/group identifiers.
#'@param data A data frame.
#'@return Violin plots for the relationship between two measures for each group/unit.
#'@examples
#'\dontrun{
#'a <- runif(1000, min = 0, max = 1)
#'b <- x + rnorm(1000, mean = 0, sd =1)
#'c <- rep(c(1:10), times = 100)
#'data <- data.frame(a, b, c)
#'violinplots("a", "b", "c", data)
#'}
#'@export

violinplots <- function(x, y, group, data) {
  with(data, {
    for(i in 1:length(unique(data[[group]]))) {
      j <- unique(data[[group]])[i]
      violin.j <- ggplot2::ggplot(data[data[[group]]==j, ], aes(x = data[[x]][data[[group]]==j], y = data[[y]][data[[group]]==j])) + ggplot2::geom_violin() + ggplot2::labs(title = j) + xlab(x) + ylab(y)
      violin.j <- violin.j + ggplot2::theme_bw()
      print(violin.j)
    }
  }
  )
}
