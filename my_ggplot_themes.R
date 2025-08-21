#' My Super Awesome Theme
#'
#' @returns
#' @export
#'
#' @examples
#' ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
#'   geom_point() +
#'   awesome_theme()
awesome_theme <- function() {
  theme(panel.background = element_rect(fill = "magenta"),
        panel.grid.major.x = element_line(color = "blue", size = 2),
        panel.grid.major.y = element_line(color = "brown", size = 3),
        panel.grid.minor = element_line(color = "green", size = 3))
  
}