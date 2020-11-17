
############################################################
##### PRACTICA VECTORES, LISTAS, DATAFRAMES ################
############################################################

#Vectores de películas
nombre_peliculas <- c('Los juegos del Hambre 1', 
                      'Los juegos del Hambre 2',
                      'Los juegos del Hambre 3', 
                      'Los juegos del Hambre 4')


año_pelicula <- c(2012, 2013, 2014, 2015)

calificacion_pelicula <- c(6.5, 6.3, 8.2, 7.8)

# Pasamos nuestros vectores a una lista

peliculas <- list(nombre_peliculas, 
                  año_pelicula, 
                  calificacion_pelicula )

#Podemos acceder al contenido de la lista :)
peliculas[[2]][4]


#Insertar elementos en un DataFrame (hoja de datos)
data_frame_peliculas <- as.data.frame(peliculas)
names(data_frame_peliculas) <- c('Pelicula', 'Año', 'Calificación')

#Escribimos el documento en formato CSV
write.csv(data_frame_peliculas, "peliculas.csv", row.names = FALSE)

#Traemos el documento en un Datframe a R
lectura_peliculas <- read.csv('peliculas.csv')


#Acceder a los elementos de un Dataframe
lectura_peliculas$Pelicula[[4]]

