library("praise")
library("tidyverse")
data <- c(1, 3, 5, 7, 11, 13, 17)

rep(praise(), 10)

#native R
rep(praise(), mean(diff(data)))

data %>%
  diff() %>%
  mean() %>%
  rep(praise(),.)

data %>%
  diff() %>%
  mean() %>%
  replicate(praise(),n=.)

# -- - - - - - - - - - - - - - - - - - - - - - | 

midwest %>%
  select(state) %>%
  unique()
# returns as a tibble
 
midwest %>%
  select(state) %>%
  unique() %>%
  .[[1]]