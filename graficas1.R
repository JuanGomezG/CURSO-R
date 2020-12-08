
library(ggplot2)
library(dplyr)
library(gganimate)
################################################################################
#Cargamos el Dataset de OMS
paises<- read.csv("https://covid19.who.int/WHO-COVID-19-global-data.csv")

################################################################################
#No siempre es necesario categorizar por factores, sin embargo 
#si necesitamos transformar variables numéricas a categóricas es importante realizar este paso
unique(paises$WHO_region)
paises$WHO_region <- factor(paises$WHO_region, 
                               levels= c("EMRO", "EURO", "AFRO", "WPRO", "AMRO","SEARO", "Other"),
                               labels = c(1,2,3,4,5,6,7))

#La solución sería transformar estos valorea a variables categóricas

paises$WHO_region <- factor(paises$WHO_region, 
                            levels= c(1,2,3,4,5,6,7),
                            labels = c("EMRO", "EURO", "AFRO", "WPRO", "AMRO","SEARO", "Other"))

#En este caso no es necesario declarar las etiquetas y niveles, pero sí indicar que las variables 
# de cada región (caracteres ) serán categóricas

paises$WHO_region <- factor(paises$WHO_region, c("EMRO", "EURO", "AFRO", "WPRO", "AMRO","SEARO", "Other"),
                               c("Mediterraneo Oriental", "Europa", "África", "Pacífico del Oeste", "América","Sureste de Asia", "Otros"))
class(paises$WHO_region)

#Para variables categóricas utilizamos la función plot, que nos muestra una gráfica de barras
plot(paises$WHO_region)

#color = c("green", "yellow", "red", "black", "pink", "blue", "orange")
plot(paises$WHO_region,
     col = "#488A96",
     #col = color,
     main = "Gráfica de Barras Regiones OMS",
     xlab = "Regiones",
     ylab = "Cantidad")


################################################################################
#Filtramos por región y acumulamos los casos nuevos
paises_filtrado <- paises %>%  
  group_by(Fecha_Reporte = Date_reported, Region=WHO_region) %>% 
  summarise(Casos_Nuevos = sum(New_cases)) 

paises_filtrado$Fecha_Reporte <- as.Date(paises_filtrado$Fecha_Reporte, format = "%Y-%m-%d")


################################################################################
#Gráfica básica (boxplot)
ggplot(paises_filtrado,
       aes(x = Fecha_Reporte,
           y = Casos_Nuevos,
           fill = Region)) + 
  #geom_line() +
  geom_boxplot()

#Gráfica básica (lineas)
ggplot(paises_filtrado,
       aes(x = Fecha_Reporte,
           y = Casos_Nuevos,
           color = Region)) + 
  geom_line() 
 
  
################################################################################
#Gráfico con elementos
paises_filtrado <- paises %>%  
  group_by(Fecha_Reporte = Date_reported, Region=WHO_region) %>% 
  summarise(Casos_Nuevos = sum(New_cases)) 

paises_filtrado$Fecha_Reporte <- as.Date(paises_filtrado$Fecha_Reporte, format = "%Y-%m-%d")

ggplot(paises_filtrado,
       aes(x = Fecha_Reporte,
           y = Casos_Nuevos,
           color = Region)) + 
  geom_line(size =2) + 
  geom_point(size =2 )+
  #geom_boxplot()
  
  #labs(title= 'Casos de Covid en el mundo {frame_along}',
  labs(title= 'Casos de Covid en el mundo',
       x = 'Fecha',
       y = 'Años de vida') +
  
  theme_minimal()
#Animamos el gráfico con la función transition reveal
#transition_reveal(Fecha_Reporte)
################################################################################
#Realizamos un merge con otra base de datos
#Traemos solo los paises y la cantidad de nuevos casos

casos_nuevos_pais <- paises %>% group_by(Country) %>%
  summarise(Casos_N = sum(New_cases)) %>%
  arrange(desc(Casos_N))

poblacion <- read.csv("https://raw.githubusercontent.com/AllanZamb/CURSO-R/main/BasesDataFrame/pop_world.csv")

poblacion <- poblacion %>% select(Country=country, pop, year)%>%
  filter(year == 2007)


nueva <- left_join(casos_nuevos_pais, poblacion, by= "Country")


#Realizamos la mezcla de las tablas
Casos_por_millon <- nueva %>% mutate(Casos_Nmillon = as.numeric(round(Casos_N / pop * 1000000,0)))  


#############################################################################3
paises_filtrado_pais <- paises %>%  filter(Country == c('Mexico', "Denmark")) %>% 
  group_by(Fecha_Reporte = Date_reported, Pais=Country) %>% 
  summarise(Casos_Nuevos = sum(New_cases)) 

paises_filtrado_pais$Fecha_Reporte <- as.Date(paises_filtrado_pais$Fecha_Reporte, format = "%Y-%m-%d")

ggplot(paises_filtrado_pais,
       aes(x = Fecha_Reporte,
           y = Casos_Nuevos,
           color = Pais)) +
  geom_bar(stat="identity") +
  geom_line() +
  facet_grid(Pais~.) + 
  transition_reveal(Fecha_Reporte)
  
  #geom_line() +
  #geom_point()


###############################################################################
#Creamos otro tipo de gráficas acumuladas por región
library(ggplot2)

#creo el objeto ggplot
ggplot(paises, aes(x=Date_reported, y=New_cases)) +
  geom_bar(stat="identity") + 
  labs(y= "Nuevos casos", x="Fecha", title= "Covid 19 Global") +
  theme(axis.text.x = element_text(angle=90, size=6)) 


ggplot(paises, aes(x=Date_reported, y=New_cases, fill=WHO_region)) + 
  geom_bar(stat="identity") + 
  theme(axis.text.x = element_text(angle=90, size=6)) + 
  labs(y= "Nuevos casos", x="Fecha", title= "Covid 19 Global")


ggplot(paises, aes(Date_reported, y=New_cases, fill=WHO_region)) + 
  geom_bar(stat="identity")  + 
  theme(axis.text.x = element_text(angle=90, size=6)) + 
  labs(y= "Nuevos casos", x="Fecha", title= "Covid 19 Global")+
  facet_grid(WHO_region~.)



america <- subset(paises, paises$WHO_region =="AMRO")
#creo el objeto ggplot
ggplot(america, aes(x=Date_reported, y=New_cases)) + 
  geom_bar(stat="identity") + 
  theme(axis.text.x = element_text(angle=90, size=6)) + 
  labs(y= "Nuevos casos", x="Fecha", title= "Covid 19 America")



Mexico <- subset(paises, paises$Country=="Mexico")
#creo el objeto ggplot
ggplot(Mexico, aes(x=Date_reported, y=New_cases,  group=Country)) + 
  geom_line() + 
  theme(axis.text.x = element_text(angle=90, size=6)) + 
  labs(y= "Nuevos casos", x="Fecha", title= "Covid 19 México")

ggplot(Mexico, aes(x=Date_reported, y=New_cases,  group=Country)) + 
  geom_line()+ 
  theme(axis.text.x = element_text(angle=90, size=6))+ 
  labs(y= "Nuevos casos", x="Fecha", title= "Covid 19 México") +
  geom_smooth()
