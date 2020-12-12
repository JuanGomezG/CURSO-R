###########################################################################
####  Practica 8 del Curso de R############################################
##### Factores ######
#Se necesita cargar una Base de Datos#

library(tidyverse)
bikes<-read.csv ("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/bikes.csv")
str(Bikes)
summary(bikes)
bikes$season
class(bikes$season)

unique (bikes$season)


bikes$season<-factor(bikes$season,levels= c(1:4), labels=c("Invierno","Primavera", "Verano","otoño"))

#Impresión de la información pero como Categoria. Se cambio la información de Numero a Categoria.

#Se establece un vector de colores para poder trabajar con los mismos en cada categoria. 

colores<-c("#1B3C93","#1B9359","#93481B","#931B6F")

plot(bikes$season, main="Categoria del uso de Bicicletas del año",
     xlab ="Temporada",
     ylab ="Frecuencias",
  
#Se pueden poner colores con el #4fdoca usando los colores y su código en Google. 
#Se establece un vector de colores para asignarlos a cada fecha
#Se estable el llamado a la clase de colroes que busque en la pagina https://htmlcolorcodes.com/es/

     col=colores)
#Aqui se necesita hacer una reconversión de variable a la variable.

class(bikes$workingday)
summary (bikes$workingday)
#Se esta reconvertiendo la información a factores para realizar estadisticos. 

bikes$workingday <-factor(bikes$workingday,levels=c(0:1),labels=c("No Laborales","Laboral"))

plot(bikes$workingday,main="Categoria del uso de Bicicletas por tipoo de Dia",
xlab ="Tipo de Dia",
ylab ="Frecuencias",
col=colores)


bikes$weathersit<-factor(bikes$weathersit,level=c(1:3),labels=c("Despejado","Nublado","Lluvioso"))
plot(bikes$weathersit,main="Categoria del uso de Bicicletas por tipo de dia",
xlab ="Clima",
ylab ="Frecuencias",
col=colores)


#Funciones para crear subconjutos de datos
#Funcion SPLIT para crear subconjuto de datos

#Creamos un subset por temporada 
Invierno<-subset(bikes,season=="Invierno")$cnt
Primavera<-subset(bikes,season=="Primavera")$cnt
Verano<-subset(bikes,season=="Verano")$cnt
otoño<-subset(bikes,season=="otoño")$cnt
#Utilizamos función Hist para hacer histogramas.


#Función para hacer 2 histrogramas arriba y 2 abajos 
par(mfrow =c(2,2))

#Función de histograma para poder poner nombre, definir los nombres de los ejes
# la función prob tiene que estar en True
# despues la información de lineas, nos puede dar la información de la densidad. 

hist(Invierno, main="Renta de Bicicletas en Invierno",
     xlab="Invierno",
     ylab="Frencuencia",
     col=colores,prob=T)
lines(density(Invierno))

hist(Verano)
abline(v=mean(Verano))
abline=(v=median(Verano))
mean(Verano)      
      
      
hist(Primavera, main="Renta de Bicicletas en Primavera", 
     col=colores,prob=T,
xlab="Primavera",
ylab="Frencuencia",
col=colores,prob=T)
lines(density(Primavera))


hist(otoño,main="Renta de Bicicletas en Otoño", col=colores,prob=T,
xlab="Otoño",
ylab="Frencuencia",
col=colores,prob=T)
lines(density(Otoño))

hist(Verano,main="Renta de Bicicletas en Verano", col=colores,prob=T,
xlab="Veranoo",
ylab="Frencuencia",
col=colores,prob=T)
lines(density(Verano))



#Funcion para preguntar si es un vector. 
is.vector (Invierno)

par(mfrow-c(1:3))
