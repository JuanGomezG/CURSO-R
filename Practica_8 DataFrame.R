#Cargamos las librerías que vamos a utilizar
library(data.table)
library(plyr)
library(readr)

paises <- read.csv("https://covid19.who.int/WHO-COVID-19-global-data.csv")

#DESINTEGRAMOS EL DATASET
#Dividimos la base de datos en función de las fechas reportadas
dfs_paises <- split(paises, paises$Country) 


#Lapply se aplica a una función para cada elemento de la lista para enviar cada una de las listas a un archivo de escritura DataFrame

lapply(names(dfs_paises),
       function(x){write.csv(dfs_paises[[x]], paste0("BasesDataFrame/",x,".csv"),
                             row.names = FALSE)}) 

#INTEGRAMOS EL DATASET
#Encontramos patrones en los archivos
patrones_csv = list.files("BasesDataFrame/",pattern="*.csv")

#Método 1 (sencillo)
Data_Frame_Completo = ldply(paste0("BasesDataFrame/",patrones_csv), read_csv)

#Método 2 (con iteracón)
paises_list <- list()
for (i in 1:length(files)){
  paises_list[[i]] <- read.csv(files[i])
}

paises_data <- rbind.fill(paises_list)

