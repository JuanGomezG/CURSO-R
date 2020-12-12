
##############################################################################
########### Practica 6 #######################################################
##############################################################################




paises <- read.csv("https://covid19.who.int/WHO-COVID-19-global-data.csv")

#Estructura de nuestros datos
str(paises)

#Resumen de los datos
summary(paises$Cumulative_cases)

#Colunmas de nuestro dataset
colnames(paises)

colnames(paises) <- c("Fecha_de_reporte", 
                      "Código_de_país", 
                      "Paises", "Región_OMS" ,
                      "Casos_Nuevos", 
                      "Casos_Acumulados", 
                      "Defunciones_Nuevas", 
                      "Defunciones_Acumuladas" )

#Revisamos cuántos paises tenemos en total
total_paises<- length(unique(paises$Paises))
print(paste("tenemos en total", total_paises, "paises" ))


## Cortamos el dataset original en función de las variables que necesitemos
paises_filtrados <- split(paises, paises$Paises)
fechas_filtrados <- split(paises, paises$Fecha_de_reporte)
regiones_filtrados <- split(paises, paises$Región_OMS)


################################################################################
### DESINTEGRAMOS EL DATASET ORIGINAL
#Lapply se aplica a una función para cada elemento de la lista para enviar cada una de las listas a un archivo de escritura DataFrame


lapply(names(paises_filtrados),
       function(x){write.csv(paises_filtrados[[x]], paste0("BASES/Paises/",x,".csv"),
                             row.names = FALSE)}) 

lapply(names(regiones_filtrados),
       function(x){write.csv(regiones_filtrados[[x]], paste0("BASES/Regiones/",x,".csv"),
                             row.names = FALSE)}) 

lapply(names(fechas_filtrados),
       function(x){write.csv(fechas_filtrados[[x]], paste0("BASES/Fechas/",x,".csv"),
                             row.names = FALSE)}) 


################ INTEGRAR EL DATASET############################################

## Buscamos los patrones que se repiten dentro de las carpetas

patrones_paises_csv <- list.files("BASES/Paises/", pattern = "*.csv")
patrones_regiones_csv <- list.files("BASES/Regiones/", pattern = "*.csv")
patrones_fechas_csv <- list.files("BASES/Fechas/", pattern = "*.csv")


integrar_fechas <- ldply(paste0("BASES/Fechas/",patrones_fechas_csv), read.csv)
integrar_regiones <- ldply(paste0("BASES/Regiones/",patrones_regiones_csv), read.csv)
integrar_paises <- ldply(paste0("BASES/Paises/",patrones_paises_csv), read.csv)

################################################################################




