#--- Bivariate plots function ---#

bivarplots <- function(x, y, unit, plotdata) {
  with(plotdata, {
  for(i in 1:length(unique(plotdata$unit))) {
    j <- unique(plotdata$unit)[i]
    bivar.j <- ggplot2::ggplot(plotdata[plotdata$unit==j,], aes_string(x = 'x', y = 'y')) + ggplot2::geom_jitter() + ggplot2::geom_smooth(method = loess) + ggplot2::labs(title = j)
    bivar.j <- bivar.j + ggplot2::theme_bw()
    print(bivar.j)
  }
  }
  )
}
