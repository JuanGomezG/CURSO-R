##################### Practica 9 #################################
##################################################################

library(tidyverse)
library(gganimate)
library (gifski)
################################################################################

paises<- read.csv("https://covid19.who.int/WHO-COVID-19-global-data.csv")

colnames(paises) <- c("Fecha_Reporte", 
                      "Código", 
                      "Pais", 
                      "Region",
                      "Nuevos_casos",
                      "Casos_Acumulados", 
                      "Nuevas_Defunciones",
                      "Defunciones_Acumuladas")


str(paises)
summary(paises)


unique(paises$Region)

paises$Region <- as.factor(paises$Region )

paises$Region <- factor(paises$Region, 
                        levels = c("EMRO","EURO","AFRO","WPRO","AMRO","SEARO","Other"),
                        labels = c("Mediterraneo Oriental","Europa","Africa","Pacífico","América", "Sureste de Asia", "Otros"))


par(mfrow = c(1,1))
plot(paises$Region, 
     main = "Regiones de la OMS",
     xlab = "Regiones",
     ylab = "Frecuencias",
     col = "red"
)

boxplot(paises$Nuevos_casos~paises$Region)

###############################################################################
## Verbo Dplyr (paréntesis)
# %>%  PIPES

colnames(paises)

paises$Fecha_Reporte

paises_filtrado <- paises %>% 
  select(Fecha_Reporte, Region, Nuevos_casos ) %>% 
  filter(Fecha_Reporte == "2020-08-29") %>% 
  arrange(Nuevos_casos)

###############################################################################

paises_filtrado <- paises %>% 
  group_by(Fecha_Reporte, Region) %>% 
  summarise( Casos_Totales = sum(Nuevos_casos))

class(paises_filtrado$Fecha_Reporte)


paises_filtrado$Fecha_Reporte <- as.Date(paises_filtrado$Fecha_Reporte, format = "%Y-%m-%d")

# 
class(paises_filtrado$Fecha_Reporte)
class(paises_filtrado$Region)
class(paises_filtrado$Casos_Totales)


ggplot(paises_filtrado, 
       aes(x = Fecha_Reporte, y = Casos_Totales, fill = Region)) + 
  geom_boxplot()





























#Se cargan Librerias. 

library (tidyverse)
library (gganimate)
library (gifski)

# Se carga información directo de la información de la OMS Raw Data
library(tidyverse)
paises<-read.csv ("https://covid19.who.int/WHO-COVID-19-global-data.csv")
colnames(paises)<- c("Fecha_de_reporte","Codigo_Pais","Pais","Region_OMS","Nuevos_casos",
 
                                        "Casos_Acumulados","Nuevas_Muertes","Muertes_Acumuladas")
#Valores muestra
str(paises)


#Valores de cuartiles y estadisticos. 
summary(paises)

class(paises$Region_OMS)

paises$Region_OMS<-as.factor(paises$Region_OMS)
class(paises$Region_OMS)
unique(paises$Region_OMS)

paises$Region_OMS<-factor(paises$Region_OMS,
                          levels=c("EMRO","EURO",  "AFRO",  "WPRO",  "AMRO",  "SEARO", "Other"),
                          labels=c("Mediterraneo", "Europa", "Africa", "Pacifico", "America", "Sureste Asiatico", "Otro"))

plot(paises$Region_OMS,main="Covid 19 OMS Region")


boxplot(paises$Nuevos_casos~paises$Region_OMS)

##################### Practica 9 #################################
##################################################################

#Detnro de Tidyverse hay mas opciones muy interesantes. La que mas nos einteresa DPLYR. Nos permite hacer cosas con los datos. 
#Se puede hacer una oración completa con todas estas funciones. 
#Si necesitamos seleccion logica como filter o el select.  Dos funciones como select y filter van a ayudar muchisimo. 
#Despues podemos renombrar variables que se llama rename para poder renombrar la información. 
#Mutate toma una columna y bajo ciertas renglones pero auxiliarse de otra columna como
#el %>% nos va a ayudar a unir una Contrl Shift y M 



#################################################################
## dplyir
# %>% 

library (tidyverse)
library (dplyr)
colnames(paises)
paises$Fecha_de_reporte

#Estamos utlizando funcionaes para seleccionar

paises_filtrado<-paises %>% 
  select(Fecha_de_reporte,Region_OMS, Nuevos_casos) %>% 
  filter(Fecha_de_reporte=="2020-08-29") %>% 
  arrange(Nuevos_Casos)


################################################################
paises_filtrado<-paises %>% 
  group_by(Fecha_de_reporte,Region_OMS) %>% 
  summarise ((Casos_Totales==sum(Nuevos_casos))
             
paises_filtrado$Fecha_de_reporte<-as.Date(paises_filtrado$Fecha_de_reporte, format="%y-%m-%d")

             

ggplot (paises_filtrado,aes())
