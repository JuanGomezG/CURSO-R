library("tidyverse")
#Cargamos el DataFrame con url Data.world
billboards <- read.csv("https://query.data.world/s/ujgyeerihykzmkhsvgq3kgs5bzrg6g")

billboards <- read.csv("C:\\Users\\alan2\\Downloads\\billboard_2000_2018_spotify_lyrics.csv")


# Quitamos los NA
billboards$year[is.na(billboards$year)] <- 2018L

#Revisamos los nombres de las columnas
colnames(billboards)

#SELECCIONAR Y FILTRAR
#Método 1 (En líneas separadas)
billboards_filtrado <- select(billboards, date, year, title, artist, weeks, rank, genre)
billboards_filtrado <- filter(billboards_filtrado, year >2015 & year<2019)
billboards_filtrado <- rename(billboards, date, year, title, artist, weeks, rank, genre)

#Método 2 (En una sóla instrucción con pipes %>%  )

billboards_filtrado <- billboards %>% 
  select(date, year, title, artist, weeks, rank, genre, broad_genre) %>% 
  filter(year >2015 & year<2019) %>% 
  rename(fecha = date, año = year, titulo = title, artista =artist, semanas = weeks, ranking = rank, genero = genre, b_genero = broad_genre)


#Eliminamos columnas individualmente
billboards_filtrado$b_genero <- NULL


#OBTENER EL TOTAL DE DÍAS TRANSCURRIDOS
#día actual
dia_hoy <- Sys.Date()

#Corregimos el formato de la Fecha
#Convertimos de character a formato fecha
billboards_filtrado$fecha <- as.Date(billboards_filtrado$fecha, format = "%m/%d/%y")

#Obtenemos ka diferencia de dias y creamos una nueva columna con la diferencia de los dias
billboards_filtrado$dias_transcurridos <-  dia_hoy - billboards_filtrado$fecha

#Cambiamos el tipo de dato de la diferencia (datediff) a Número entero
billboards_filtrado$dias_transcurridos <- as.integer(dia_hoy - billboards_filtrado$fecha)

#Eliminamos columnas que no nos sirven
billboards_filtrado$year <- NULL

billboards_filtrado <- billboards_filtrado %>% 
  mutate(artista = str_to_title(artista )  )


#Seleccionamos para agrupar los que necesitamos

billboards_ranking <- billboards_filtrado %>% select(año, artista, semanas, ranking) 

billboards_ranking <- billboards_ranking %>% 
  group_by(año, artista) %>% 
  summarise(conteo = n()) 



#Letra capital
str_to_title(billboards_filtrado$artista)
#Minúsucas
tolower(billboards_filtrado$artista)
#Mayúsculas
toupper(billboards_filtrado$artista)


