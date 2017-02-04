#--- Bivariate plots function ---#

bivarplots <- function(x, y, unit, plotdata) {
  for(i in 1:length(unique(plotdata$unit))) {
    j <- unique(plotdata$unit)[i]
    bivar_j <- ggplot2::ggplot(plotdata[plotdata$unit==j,], aes_string(x = 'x', y = 'y')) + ggplot2::geom_jitter() + ggplot2::geom_smooth(method=loess) + ggplot2::labs(title=j)
    print(bivar_j)
  }
}
