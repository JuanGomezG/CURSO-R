
###########################################################################
####  Practica 7 del Curso de R############################################






library(tidyverse)
paises<-read.csv ("https://covid19.who.int/WHO-COVID-19-global-data.csv")
colnames(paises)<- c("Fecha_de_reporte","Codigo_Pais","Pais","Region_OMS","Nuevos_casos",
                     "Casos_Acumulados","Nuevas_Muertes","Muertes_Acumuladas")


#Resumen de la variable cumulative_cases. 
summary(paises$Cumulative_cases)

# Hacer una selección por variable en este caso esta Country
paises_filtrados<-split(paises, paises$Pais)


class(paises$Fecha_de_reporte)
paises$Fecha_de_reporte<-as.Date(paises$Fecha_de_reporte,format ="%y.%m-%d")

paises_filtrados<-filter(paises_filtrados,Fecha_de_reporte >"2020-11-05" & Fecha_de_reporte<"2020-12-05" )
