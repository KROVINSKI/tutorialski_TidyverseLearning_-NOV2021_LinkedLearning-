library("tidyverse")

transport_data <- read_csv("data/transport-data.csv")

transport_data %>%
  select(sender.location, receiver.location) 

transport_data %>%
  select(sender.location, receiver.location) %>%
  unique()

# notice the 153 observation tibble


transport_data %>%
  filter(receiver.location = "DEU. Templin")

# Did you mean `receiver.location == "DEU, Templin"`?
# yes, yes you do need ==



transport_data %>%
  filter(receiver.location == "DEU, Templin")


transport_data %>%
  select(date) %>%
  .[[1]] %>%
  max()
# Expected Result
# > transport_data %>%
#   +   select(date) %>%
#   +   .[[1]] %>%
#   +   max()
# [1] "1989-08-23"

transport_data %>%
  filter(receiver.location == "DEU, Templin" & date == max(date))


transport_data %>%
  filter(receiver.location == "DEU, Templin") %>%
  filter(date == max(date))
# A tibble: 1 x 8
# sender.location sender.latitude sender.longitude receiver.locati…
# <chr>                     <dbl>            <dbl> <chr>           
#   1 USA, Conover (…            35.7            -81.2 DEU, Templin  



transport_data %>%
  filter(receiver.location == "DEU, Templin") %>%
  filter(date == max(date)) %>%
  select(-receiver.location)


transport_data %>%
  filter(receiver.location == "DEU, Templin") %>%
  filter(date == max(date)) %>%
  select(-contains("receive"))



transport_data %>%
  filter(receiver.location == "DEU, Templin") %>%
  filter(date == max(date)) %>%
  select(sender.location:receiver.longitude)

# column orders may change
# fragile way of returning columns

# Do you do want to change the order of columns? 
transport_data %>%
  filter(receiver.location == "DEU, Templin") %>%
  filter(date == max(date)) %>%
  select(number.of.items, everything())

