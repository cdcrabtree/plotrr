#--- Violin plots function ---#
#' @export

violinplots <- function(x, y, unit, data) {
  with(plotdata, {
    for(i in 1:length(unique(plotdata$unit))) {
      j <- unique(plotdata$unit)[i]
      violin.j <- ggplot2::ggplot(plotdata[plotdata$unit==j, ], aes_string(x = 'x', y = 'y')) + ggplot2::geom_violin() + ggplot2::labs(title = j)
      violin.j <- violin.j + ggplot2::theme_bw()
      print(violin.j)
    }
  }
  )
}
