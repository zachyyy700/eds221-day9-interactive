rm(list = ls())

pacman::p_load("tidyverse", "palmerpenguins")

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(aes(color = species)) + 
  labs(x = "Flipper Length (mm)",
       y = "Body Mass (g)",
       title = "Penguin Body Size") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = "magenta"),
        panel.grid.major.x = element_line(color = "blue", size = 2),
        panel.grid.major.y = element_line(color = "brown", size = 3),
        panel.grid.minor = element_line(color = "green", size = 3))

# source function from other themes.Rscript
source(here::here("my_ggplot_themes.R"))
ggplot(penguins, aes(x = body_mass_g, y = bill_length_mm)) + 
  geom_point() +
  awesome_theme()
