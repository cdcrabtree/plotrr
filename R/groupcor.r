#--- Group correlation function ---#
#' @export

groupcor <- function(x, y, unit, plotdata, stat) {
 with(plotdata, {dat %>%
    dplyr::group_by(plotdata$unit) %>%
    dplyr::summarise(correlation == cor(x, y, na.rm = TRUE, method = c("stat")))
    print(dat)
 }
 )
}
