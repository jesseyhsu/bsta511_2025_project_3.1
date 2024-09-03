# settings ----------------------------------------------------------------
library(tidyverse)


# explore -----------------------------------------------------------------
str(mtcars)


# summarize ---------------------------------------------------------------
mtcars |>
  group_by(cyl) |>
  summarise(
    mean_mpg = mean(mpg),
    min_mpg = min(mpg),
    max_mpg = max(mpg)
  ) |>
  ungroup()
