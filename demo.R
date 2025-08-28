# settings ----------------------------------------------------------------
library(tidyverse)


# explore -----------------------------------------------------------------
str(mtcars)


# summarize ---------------------------------------------------------------
mtcars |>
  group_by(cyl) |>
  summarise(
    mean_mpg = mean(mpg),
    sd_mpg = sd(mpg),
    min_mpg = min(mpg),
    max_mpg = max(mpg)
  ) |>
  ungroup()


# Plot -----
plot(mtcars$mpg, mtcars$wt)

# ggplot2 equivalent
mtcars |>
  ggplot(aes(x = mpg, y = wt)) +
  geom_point() +
  theme_minimal()