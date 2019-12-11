#' Plots Movies Length vs rating and highlights selected movie
#'
#' @param queryTitle character
#' @param color character
#'
#' @return plot
#'
#' @export
#'
#' @importFrom magrittr "%>%"
#'
#' @examples
plotMovie <- function(queryTitle, color = "green"){

  queryYear <- getYear(queryTitle)

  ggplot2movies::movies %>%
    dplyr::filter(.data$year == queryYear) %>%
    ggplot2::ggplot(ggplot2::aes(.data$length, .data$rating)) +
    ggplot2::geom_point(alpha = 0.4)  +
    ggplot2::labs(title = queryTitle) +
    ggplot2::geom_point(data = ggplot2movies::movies[ggplot2movies::movies$title == queryTitle,],
               color = color) +
    ggrepel::geom_label_repel(ggplot2::aes(label = queryTitle),
                     data = ggplot2movies::movies[ggplot2movies::movies$title == queryTitle,],
                     box.padding   = 0.5,
                     label.padding = 0.5)
}
