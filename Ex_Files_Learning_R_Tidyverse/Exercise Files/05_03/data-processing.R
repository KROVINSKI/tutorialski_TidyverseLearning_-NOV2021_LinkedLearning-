library("tidyverse")

transport_data <- read_csv("data/transport_data.csv")
transport_grouped_data <- transport_data %>%
  group_by(receiver.country, receiver.city) %>%
  select(date, number.of.items) %>%
  sample_frac(0.1)

transport_grouped_data %>%
  mutate(members =n()) %>%
  view()

transport_grouped_data %>%
  mutate(members =n()) %>%
  select(-date, -number.of.items) %>%
  unique()


n_groups(transport_grouped_data)
