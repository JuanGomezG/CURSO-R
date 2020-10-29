###############################################################################
######### PRACTICA 5 VECTORES, LISTAS Y DATAFRAMES ############################

#CARGAMOS VECTORES
peliculas_nombre <- c('The Hunger Games 1', 
                      'The Hunger Games 2',
                      'The Hunger Games 3', 
                      'The Hunger Games 4')

peliculas_año <- c(2012, 2013, 2014, 2015)
peliculas_calificacion <- c(6.2, 6.5, 5.6, 5.6 )

# METEMOS EN LISTAS
lista_peliculas <- list(peliculas_nombre, peliculas_año, peliculas_calificacion)

# PODEMOS ACCEDER A LAS LISTAS
lista_peliculas[[1]][4]


#DATAFRAME
data_frame_peliculas <- as.data.frame(lista_peliculas)
names(data_frame_peliculas) <- c('Película', 'Año', 'Calificación')

#Exportamos los datos a un documento CSV
write.csv(data_frame_peliculas, "peliculas.csv", row.names = F)

#Cargamos los datos generados
peliculas <-read.csv('peliculas.csv', header =T)


