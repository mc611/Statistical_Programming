library(rvest)
library(tidyverse)
library(jsonlite)

url <- read_html("http://www2.stat.duke.edu/~sms185/data/fuel/bystore/zteehs/regions.html") 

# Create directories
if(!dir.exists("data")){
  dir.create("data")
}

if(!dir.exists("data/sheetz")){
  dir.create("data/sheetz")
}

# url
sheetz <- url %>% 
  html_nodes(css = ".col-md-2 a") %>% 
  head(10) %>% 
  html_attrs()
  
# Scrape function
sheetz_function <- function(i){
  read_html(i) %>% 
    html_nodes(css = "body") %>% 
    html_text() %>% 
    fromJSON()
}

# Apply to all stores
sheetz_data <- map(.x = sheetz, .f =  ~ sheetz_function(.x))

# Save the results
saveRDS(sheetz_data, "data/sheetz/sheetz_data.rds")
