library(tidyverse)
library(purrr)
library(dplyr)

wawa_data<-readRDS("data/wawa/wawa_data.rds")

# get the first 12 entries of the list
df1 <- map_df(wawa_data,`[`,c(1:12))

# get elements from "amentities" 
list.amenities <- map(wawa_data,`[`,13)
get_amen <- function(i){
  map_df(list.amenities[[i]],`[`,1:5)
}
df2 <- map_df(seq_along(1:length(wawa_data)),get_amen)


# get elements from "address"
list.address <- map(wawa_data,`[`,14)

name_set <- function(i){
  set_names(list.address[[i]]$addresses[c(1:2)],c("a","b"))
}
list.address<-lapply(seq_along(1:length(wawa_data)),name_set)

df.address <- df.address0 <- NULL
coln <- unique(unlist(list.address) %>% names())
get_address <- function(i){
  df.a <- data.frame(matrix(unlist(list.address[[i]]$a), nrow=1, byrow=T),stringsAsFactors=FALSE)
  df.b <- data.frame(matrix(unlist(list.address[[i]]$b), nrow=1, byrow=T),stringsAsFactors=FALSE)
  df.address0 <- cbind(df.a,df.b)
}
for (i in seq_along(1:length(wawa_data))) {
  df.address <- rbind(df.address,get_address(i))
}
coln <- unique(unlist(list.address) %>% names()) %>% str_replace_all(c("a","b"),"address")
# "a", "b" both represent "address" in the dataframe
colnames(df.address) <- coln

# get element from last two entries
# ignore the "fuel types" since it's a list of 0
df4 <- map_df(wawa_data,`[`,c(16:17))

# combine all the dataframes and clean the new dataframe
wawa_df <- cbind(df1,df2,df.address,df4) %>% subset(select = -c(2))
names(wawa_df)[names(wawa_df) %in% c("a.address","a.state","b.loc1")] <- 
  c("address.address","address.state","address.loc1")

# save
saveRDS(wawa_df,"data/wawa/wawa.rds")
