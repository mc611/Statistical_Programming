library(tidyverse)
library(plyr)

# Read the saved data
sheetz_data <- readRDS("data/sheetz/sheetz_data.rds")

# Subset data frames and combine to one
data <- NULL
for(i in 1:10){
  df <- subset(sheetz_data[[i]], select = c(1,5,8,9))
  data[[i]] <- df
}

sheetz_df <- bind_rows(data)
sheetz_df <- sheetz_df[-c(278:300), ]

# Save 
saveRDS(sheetz_df, file = "data/sheetz/sheetz.rds")