#Cargamos el DataFrame con url Data.world
billboards <- read.csv("https://query.data.world/s/ujgyeerihykzmkhsvgq3kgs5bzrg6g")

billboards <- read.csv("C:\\Users\\alan2\\Downloads\\billboard_2000_2018_spotify_lyrics.csv")

billboards <- read.csv("C:\\Users\\alan2\\Downloads\\albumlist.csv")

# Quitamos los NA
billboards$year[is.na(billboards$year)] <- 2018L

### DESINTEGRAMOS EL DATAFRAME
# Cortamos el DataFrame por año
billboards_dfs <- split(billboards, billboards$Year) 

#Esta función la utilizamos para construir y escribir las bases de datos en archivos CSV 
lapply(names(billboards_dfs),
       function(x){write.csv(billboards_dfs[[x]], paste0("BasesDataFrame/",x,".csv"),
                             row.names = FALSE)}) 

#INTEGRAMOS EL DATAFRAME A PARTIR DE LOS ARCHIVOS CSV
patrones_csv = list.files("BasesDataFrame/",pattern="*.csv")

#Método 1 (sencillo)
Data_Frame_Completo = ldply(paste0("BasesDataFrame/",patrones_csv), read_csv)




#Método 2 (con iteraciones)
fechas_list<- list()
for (i in 1:length(files)){
  fechas_list[[i]] <- read.csv(files[i])
}

library(plyr)
paises_data <- rbind.fill(fechas_list)

