library(jsonlite)
library(tidyverse)
library(rvest)
library(stringr)

# Create directories
if(!dir.exists("data")){
  dir.create("data")
}

if(!dir.exists("data/wawa")){
  dir.create("data/wawa")
}

# Store index
index <- c(0:1000, 8000:9000)
num <- str_pad(index, 5 ,pad = "0")

# Scrape function
get_list_all <- function(i){
  store.url <- paste0("http://www2.stat.duke.edu/~sms185/data/fuel/bystore/awaw/awawstore=",i,".json")
  tryCatch(
    read_json(store.url),
    error = function(cond) return(NULL) 
  )
}

# Apply to all possible stores
all_list <- lapply(
  as.list(num), 
  function (x)
  {
    y <- get_list_all(x)
    Sys.sleep(0.01)
    y
  }
)

#Save the results
all_list <- all_list[-which(sapply(all_list, is.null))]
saveRDS(all_list,"data/wawa/wawa_data.rds")