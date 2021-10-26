library("tidyverse")
library("readxl")

timeperiods_data <- read_xlsx("data-raw/transit-data.xlsx", sheet = "info")
colnames(timeperiods_data) <- tolower(make.names(colnames(timeperiods_data)))

timeperiods_data

library("lubridate")

ymd("1800-01-01") %>%
  class




write_csv(timeperiods_data, "data/timeperiods_data.csv")
