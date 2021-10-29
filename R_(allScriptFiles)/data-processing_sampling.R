library("tidyverse")

normal_transport_data <- read_csv("data/transport_data.csv")
## load the grouped_transport_data object
load("data/grouped_transport_data.rdata")

grouped_transport_data

normal_transport_data %>$
  sample_frac(.5)

normal_transport_data %>%
  sample_n(50)
