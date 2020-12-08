#Agregamos movimiento a las gráficas

#Cargar libreria tidyverse
library (tidyverse)
library(gganimate)
library (gifski)
library(gapminder)
library(lubridate)

#Cargamos datos a nuestro entorno
data("gapminder")



gapminder$year <- as.Date(as.character(gapminder$year), format = "%Y")
#y <- year(yr)



#Grafica básica
vida <- gapminder %>%
  group_by(year, continente = continent) %>%       #Crea agrupaciones por año y continente
  summarise(esperanza_Vida = mean(lifeExp)) %>% #Calculamos esperanza de vida y agrupamos en summarise
  ggplot(aes(x=year,
             y = esperanza_Vida,
             color = continente)) + 
  geom_line()

class(vida$data$year)
class(vida$data$esperanza_Vida)
class(vida$data$continente)


#Grafica animada
gapminder %>%
  group_by(year, continente = continent) %>%       #Crea agrupaciones por año y continente
  summarise(esperanzaVida = mean(lifeExp)) %>% #Calculamos esperanza de vida y agrupamos en summarise
  ggplot(aes(x=year,
             y = esperanzaVida,
             color = continente)) + 
  geom_line()+
  transition_reveal(year)

#Mejorando grafica animada

gapminder %>%
  group_by(year, continente = continent) %>%       #Crea agrupaciones por año y continente
  summarise(esperanzaVida = mean(lifeExp)) %>% #Calculamos esperanza de vida y agrupamos en summarise
  ggplot(aes(x=year,
             y = esperanzaVida,
             color = continente)) + 
  geom_line(size =2)+
  geom_point(size = 4)+
  labs(title= 'Esperanza de vida en {frame_along}',
       x = 'Fecha',
       y = 'Años de vida') +
  
  theme_minimal()+
  transition_reveal(year) +
  
