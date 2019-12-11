#' GetYear
#'Identify year of publishing of movie
#'
#' @param title character
#'
#' @return numeric
#' @export
#'
#' @importFrom magrittr "%>%"
#'
#' @examples
getYear <- function(title) {

  title <- dplyr::enquo(title)

  ggplot2movies::movies %>%
    dplyr::filter(.data$title == !!title) -> temp
  return(temp$year)
}
