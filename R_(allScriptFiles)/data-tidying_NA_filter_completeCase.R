library("tidyverse")

transport_data <- read_csv("data-raw/transport_data.csv")

transport_data %>%
  filter(is.na(sender.state))

# only want to find complete observations

transport_data %>%
  filter(complete.cases(.))

# all incomplete cases
transport_data %>%
  filter(!complete.cases(.))


write_csv(transport_data, path = "data/transport_data.csv")