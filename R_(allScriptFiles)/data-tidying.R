library("tidyverse")
library("readxl")
library("lubridate")

transport_data <- read_xlsx("data-raw/transit-data.xlsx", sheet = "transport data", skip = 1)
colnames(transport_data) <- tolower(make.names(colnames(transport_data)))

transport_data
# note the city and country

transport_data %>%
  separate(sender.location, c("sender.country", "sender.city", sep = ","))


transport_data %>%
  select(sender.location) %>%
  slice(c(19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38))

# notice multiple deliminators
# # A tibble: 20 x 1
# sender.location           
# <chr>                     
#   1 USA, St Louis (MS)        
# 2 USA, Mobile (AL)          
# 3 USA, Mobile (AL)          
# 4 USA, Laevenworth City (KA)
# 5 USA, St Louis (MS)  


transport_data %>%
  separate(sender.location, c("sender.country", "sender.city", sep = ",", extra = "merge")) %>%
  separate(receiver.location,
           c("receiver.country", "receiver.city"), sep = ",", extra = "merge")



transport_data %>%
  select(receiver.location)


write_csv(transport_data, "data/transport_data.csv")
