library(data.table)
library(plyr)
library(readr)


paises <- read.csv("https://covid19.who.int/WHO-COVID-19-global-data.csv")


dfs <- split(paises, paises$ï..Date_reported) # list of dfs
# use numbers as file names

lapply(names(dfs),
       function(x){write.csv(dfs[[x]], paste0(x,".csv"),
                             row.names = FALSE)}) 


files = list.files(pattern="*.csv")


#Método 1
dat_csv = ldply(files, read_csv)

#Método 2
paises_list <- list()
for (i in 1:length(files)){
  paises_list[[i]] <- read.csv(files[i])
}
paises_data <- rbind.fill(paises_list)



