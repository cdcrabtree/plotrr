#--- Rugplot function ---#

bivarrugplots <- function(x, plotdata) {
  with(plotdata, {
    bivar.rug <- ggplot2::ggplot(plotdata, aes_string(x = 'x'))
    bivar.rug <- bivar.rug + ggplot2::scale_x_continuous(limit=c(min(x), max(x))) + ggplot2::scale_y_continuous(limit=c(min(y), max(y)))
    bivar.rug <- bivar.rug + ggplot2::geom_point() + ggplot2::geom_rug(size=0.2) + ggplot2::theme_bw()
    print(bivar.rug)
  }
  )
}
