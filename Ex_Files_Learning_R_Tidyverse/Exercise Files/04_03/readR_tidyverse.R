# Review
# the readr is a member of the tidyverse 
# readr provides excellent tools for importing "flat files" - such as CSV and TSV

# readr provides a much simpler and faster approach to importing files than the base R functions (read.csv, etc)


library("tidyverse")
baseR_import <- read.csv("data/transit-data.csv")


#Comparing base R imports to readR

baseR_import <- read.csv("data/transit-data.csv", skip = 1)

readr_import <- read_csv("data/transit-data.csv", skip = 1) 
# note that characters are not converted to factors
# note that names are not changed, they remain the same

colnames(baseR_import)
colnames(readr_import)
# 
# > colnames(baseR_import)
# [1] "Sender.Location"    "Sender.latitude"    "Sender.longitude"  
# [4] "Receiver.Location"  "Receiver.latitude"  "Receiver.longitude"
# [7] "Date"               "Number.of.items"   
# > colnames(readr_import)
# [1] "Sender Location"    "Sender latitude"    "Sender longitude"  
# [4] "Receiver Location"  "Receiver latitude"  "Receiver longitude"
# [7] "Date"               "Number of items" 


class(baseR_import)
class(readr_import)

# > class(baseR_import)
# [1] "data.frame"
# > class(readr_import)
# [1] "spec_tbl_df" "tbl_df"      "tbl"         "data.frame" 

# dataframe versus a tibble
