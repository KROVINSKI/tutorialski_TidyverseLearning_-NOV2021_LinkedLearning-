library("tidyverse")
library("readxl")


# weak way of calling data
read_excel("data-raw/transit-data.xlsx",
           sheet = "info",
           range = "B1:C7")

# more robust way to call data
read_excel("data-raw/transit-data.xlsx",
           sheet = "info",
           range = cell_cols("B:C"))

# create a dataframe

info <- read_excel("data-raw/transit-data.xlsx",
           sheet = "info",
           range = cell_cols("B:C"))


write_csv(info, path = "data/timeperiods.csv")


read_excel("data-raw/transit-data.xlsx",
           sheet = "transport data",
           skip = 1)

#notice the spaces in the names
#   it's very human readable but not R friendly


transport_data <- read_excel("data-raw/transit-data.xlsx",
           sheet = "transport data",
           skip = 1)

colnames(transport_data) <- make.names(colnames(transport_data))
colnames(transport_data)
# 
# [1] "sender.location"    "sender.latitude"    "sender.longitude"  
# [4] "receiver.location"  "receiver.latitude"  "receiver.longitude"
# [7] "date"               "number.of.items" 

# nice clean tidy names

write_csv(transport_data, path = "data/transport_data.csv")
