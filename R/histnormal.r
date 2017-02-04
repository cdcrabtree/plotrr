#--- Histogram with normal density curve function ---#

histnormal <- function(x, plotdata) {
  with(plotdata, {
  histn <- ggplot2::ggplot(plotdata, aes_string(x = 'x'))
  histn <- histn + ggplot2::geom_histogram(binwidth = 2, color = "black", aes_string(y= ..density.., fill = ..count..))
  histn <- histn + ggplot2::stat_function(fun = dnorm, color = "red", args = list(mean = mean(plotdata$x), sd = sd(plotdata$x)))
  histn <- histn + ggplot2::theme_bw()
  print(histn)
  }
 )
}
