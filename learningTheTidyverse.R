# -`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-` 

# Installing Libraries

# -`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`

library("tidyverse")
# this would be from the stats library
stats::filter
# specfic function from that library

# plyr was first started in 2008 and provided a split-apply-combine workflow for data manipulation. 

# dpylr is the modern replacement for pylr
# dpylr os built to work with the tidy data structures of the tidyverse

# avoid issues by loaded dplyr before plyr

library("tidyverse")
library("plyr")

# Error msg:: 
# # Attaching package: ‘plyr’
# The following objects are masked from ‘package:dplyr’:
#   arrange, count, desc, failwith, id, mutate, rename,
# summarise, summarize

# swap them

library("plyr")
library("dplyr")
library("tidyverse")

# ----- or ----- just call the function you want

plyr::mapvalues
# this loads just the one function from plyr
# _____________________________________________________________|





# -`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-` 

# Tidyverse Hallmarks- why should you use it?

# -`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-`-` 

# Easier Import 
# Improved Reproducibility
# Improved Collaboration

# Import
# working directories are where R looks for data files
# Projects - negate the use of use of setwd("blah computer name/folders")

#Projects teach good practise and never have to use absolute file paths
# jump right to read.csv("just the file name ")


# Reproducibility