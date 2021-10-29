library("tidyverse")
library("readxl")

timeperiods_data <- read_xlsx("data-raw/transit-data.xlsx", sheet = "info")
colnames(timeperiods_data) <- tolower(make.names(colnames(timeperiods_data)))

timeperiods_data

library("lubridate")

ymd("1800-01-01") %>%
  class

paste0(1800, "-01-01") %>%
  ymd() %>%
  class()


# Using the mutate verb
timeperiods_data %>% 
  mutate(period.start = ymd(paste0(period.start, "01-01")))


timeperiods_data %>% 
  mutate(period.start = ymd(paste0(period.start, "01-01")),
         period.end = ymd(paste0(period.end, "-01-01"))) %>%
  mutate(chars.in.name= nchar(period.name))


timeperiods_data <- timeperiods_data %>% 
  mutate(period.start = ymd(paste0(period.start, "01-01")),
         period.end = ymd(paste0(period.end, "-01-01"))) %>%
  mutate(chars.in.name= nchar(period.name))


write_csv(timeperiods_data, "data/timeperiods_data.csv")
