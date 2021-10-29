library("tidyverse")

transport_data <- read_csv("data/transport_data.csv")

transport_data %>%
  group_by(reciever.country, receiver.city)

grouped_data <- transport_data %>%
  group_by(receiver.country, receiver.city) %>%
  select(date, number.of.items)

grouped_data %>%
  sample_frac(0.1) %>%
  mutate(percent.items = 100* number.of.items / sum(number.of.items)) %>%
  mutate(check = sum(percent.items)) %>%
  view()
