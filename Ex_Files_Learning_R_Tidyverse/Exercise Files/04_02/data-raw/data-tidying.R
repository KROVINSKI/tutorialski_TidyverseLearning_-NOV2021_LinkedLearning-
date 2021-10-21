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


# - - - - - - - - - - - - - - - - - - - - - - - - - - | 

# Working with data formats

transport_data$date

# example of the format problems:
# # [306] "6289"       "6572"       "9326"       "9633"       "9691"      
# [311] "9769"       "10983"      "10989"      "1865-05-03" "1865-12-27"
# [316] "1866-03-31" "1870-08-26" "1871-10-04" "1872-08-14" "1872-12-25"
# [321] "1873-07-07" "1874-03-21" "1875-05-26" "1877-09-25" "1877-11-15"
# [326] "1878-04-17" "1878-08-21" "1879-04-30" "1883-05-02" "1885-08-06"

# dates in excel are the number of days since 31DEC1899
# any date before that is stored not as a date but as a string


# dplyr - is needed to conditionally mutate these dates

# - - - - - - - - - - - - - - - - - - - - - - - - - - | 
# 
# # Summary
# the readr is a member of the tidyverse 
# readr provides excellent tools for importing "flat files" - such as CSV and TSV

# readr provides a much simpler and faster approach to importing files than the base R functions (read.csv, etc)



