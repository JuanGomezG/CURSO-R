billboards <- read.csv("https://query.data.world/s/ujgyeerihykzmkhsvgq3kgs5bzrg6g")
billboards <- read.csv("C:\\Users\\alan2\\Downloads\\billboard_2000_2018_spotify_lyrics.csv")

billboards <- read.csv("C:\\Users\\alan2\\Downloads\\albumlist.csv")

billboards$year[is.na(billboards$year)] <- 2018L

billboards_dfs <- split(billboards, billboards$Year) # list of dfs

lapply(names(billboards_dfs),
       function(x){write.csv(billboards_dfs[[x]], paste0(x,".csv"),
                             row.names = FALSE)}) 

files = list.files(pattern="*.csv")

fechas_list<- list()

for (i in 1:length(files)){
  fechas_list[[i]] <- read.csv(files[i])
}

library(plyr)
paises_data <- rbind.fill(fechas_list)


library(tidyverse)
library(factoextra)
library(dplyr)
library(ggplot)

glimpse(billboards)

ggcorr(billboards,label = T, label_size = 3)
