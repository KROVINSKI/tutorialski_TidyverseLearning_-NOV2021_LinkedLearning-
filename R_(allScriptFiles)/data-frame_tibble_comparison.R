library("tidyverse")

baseR_dataframe <- read.csv("data/timeperiods.csv")
baseR_dataframe
# > baseR_dataframe
# time.period                    name
# 1 1800 - 1870         Pre-unification
# 2 1871 - 1913 Post German unification
# 3 1914 - 1918         First World War
# 4 1919 - 1938        Inter-war period
# 5 1939 - 1945        Second World War
# 6 1945 - 2000   Post Second World War



tidyverse_tibble <- read_csv("data/timeperiods.csv")
# you are given information about the function "read_csv" interprets the column contents. 

# > tidyverse_tibble <- read_csv("data/timeperiods.csv")
# Parsed with column specification:
#   cols(
#     time.period = col_character(),
#     name = col_character()
#   )

# the variables will come in as character strings
# unlike read.csv always imports strings as factors 


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - | 

#class function investigation 

class(baseR_dataframe)
# > class(baseR_dataframe)
# [1] "data.frame"

class(tidyverse_tibble)
# > class(tidyverse_tibble)
# [1] "spec_tbl_df" "tbl_df"      "tbl"         "data.frame" 


tidyverse_tibble

# notice the type of variable you get from this two column tibble

# > tidyverse_tibble
# # A tibble: 6 x 2
# time.period name                   
# <chr>       <chr>                  
#   1 1800 - 1870 Pre-unification        
# 2 1871 - 1913 Post German unification
# 3 1914 - 1918 First World War        
# 4 1919 - 1938 Inter-war period       
# 5 1939 - 1945 Second World War       
# 6 1945 - 2000 Post Second World War  


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - | 

# R*E*V*I*E*W* of dataframes

# data.frame
# created by base R functions
# Print output does include column info
# Coverts strings to factors
# class(df) is just [1]df

# R*E*V*I*E*W* of tibbles
# created by tidyverse functions
# print output is prettier and includes column information
# strings always remain as strings
# class tibbles is always table tibble dataframe



transport_data <- read_csv("data/transport-data.csv")
transport_data %>% 
    group_by(sender.location)

# A tibble: 670 x 8
# Groups:   sender.location [133]


transport_data <- read_csv("data/transport-data.csv")
transport_data %>% 
  group_by(sender.location) %>%
  class()


# the tidyverse will often silently convert df to tibbles
# older packages won't know about 2014 tibbles

# convert back

as.data.frame(tibble)















