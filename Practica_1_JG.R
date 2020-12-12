###########################################################################
####  Practica 1 del Curso de R############################################






#Esta es una linea de codigo
# R es progrma para trabajar en objetos. Un objeto es una abstracción de algo.
# Se pueden crear objetos numericos. 

# Tipos de variables 
objeto_numerico <-5.45
objeto_numerico = 5.75

#Utilización de de <- para el simbolo de =
# Objetos se van a comprar en otros objetos. Todo en R se va a manejar en objetos
# Tendremos 5 tipos de datos atomicos: Caracteres,numeros reales (flotantes), enteros
# complejos y logicos. 

#5 Tipos de variables (Atómicas)

#Tipo de dato char
variable_char <- "¿Hola como estas?"
# Función en class () es como un huevito. Almacenar adentro.
class(variable_char)

# Tipo de dato numerico
varialble_numerico<-5.67
class(varialble_numerico)

# Tipo de dato entero
variable_entero<-5
class(variable_entero)
# R va a entrar todos los datos como numericos o flotantes.
# Puedes ponerle  una L como 10L 

variable_entero <-10L
class(variable_entero)

#Tipo de dato logico
variable_logico <- F

# Función llamada vector se llama c()

variables_caracteres <- c("a","b", "c", "d", "e", "f")

variables_numericas <- c(5.65,434.2,433,343)

variables_numericas

# Forma para poder sacar un valor del vector. 
variables_numericas[2]

# Fomra para podre contar los elementos que estan en un vector

length(variables_numericas)

# Ejercicio un vector de 5 variables logicas 

variables_logicas <- c(T,F,F,F,T)

# Ejercicio un vector de 5 variables enteras. Recordar poner la L. 

variables_enteras <- c(5L,4L,5L,4L,5L)

# R valida la información que tiene el vector. Si se mete un character convierte
# todo a character. 


# R permite crear una varaible de variables vector de vectores es una lista

variable_mixtas <-c(variables_caracteres,variables_logicas,variables_enteras)
variable_mixtas <-list(variables_caracteres,variables_logicas,variables_numericas)

# R permite entrar a las variables de la listas 
# Vector solo puedes almacenar solo un mismo tipo de tipo de variables
# Lista puede almacenar diferentes estructuras (vectores) o tipos de datos

variable_mixtas [[2]]
variable_mixtas [[2]][2]


############################################################################
######################  EJERCICIO 1 ########################################
############################################################################


# Ejercicio el nombre de 3 peliculas, califiación de 3 peliculas
# año de 3 peliculas y critica de filmaffity y si te gusto o no la pelicula.

Nombre_pelicula<- c("Contigo en la mar",
                    "Helmut Newton",
                    "2020")
Ano_pelicula <-c(2019L,
                 2020L,
                 2020L)
Calificacion_pelicula <-c(5.3,
                          "No tiene",
                          6.6)
Critica_pelicula <-c("Un thriller sólidamente competente de sustos en las 
                     profundidades que gana contrapeso con las apariciones 
                     de Dougray Scott y Connie Nielsen","Pese a su esquema 
                     convencional, este documental aporta claves interesantes 
                     sobre la obra del célebre fotógrafo berlinés (...) 
                     amable disección del personaje","La película 
                     se empeña en que el olvido no lo sepulte. Y ahí, 
                     sin duda, su principal logro. (...) El valor de la 
                     película es su vocación de testimonio y su claridad 
                     en rechazar el deseo de pasar página")
Likes <-c(T,F,T)


Ejercicio <-list(Nombre_pelicula,
                 Ano_pelicula,
                 Calificacion_pelicula,
                 Critica_pelicula,
                 Likes)


#############################################################################



# Estructuración bidimensionaeles
# Columnas 
# Dimensaión 
# Problema en las empresas problema hacia la derecha. 
# Es mas facil que se acumule hacia abajo no hacia arriba. 
# Dataframe un marco de datos. Meter información ahi adentro. 

# Verificar tipo de dato. 
class(Ejercicio)
# Me dice que es una lista. 

# Vamos a crear un data frame 

data_frame_peliculas <- as.data.frame(Ejercicio)


# Vamos a poner el nombre d las variables 
colnames(data_frame_peliculas) <-c("Peliculas","Año","Calificacion","Critica","Like")

# Escribir en una salida para poder enter en Excel. 

write.csv(data_frame_peliculas,"Peliculas.csv")

# Escribir en una salida para quitar los indices 

write.csv(data_frame_peliculas,"Peliculas.csv",row.names = F)


# Presentación objetos. Todo lo que hemos almacenado es un objeto. Un objeto es un espacio de memoria en la computadora. 
# Todas las varaibles que hemos colocado en R son objetos. Todo es una variable. Es una abastracción de algo. 
# Funcionalidad de un objeto es almacenar datos. Un objeto es una caja.  Un objeto podemos guardar mas objetos. 
# Podemos guardar todo lo que queremos en un objeto. 
# R es la parte mas externa. Le metemos la variable y nos regresa un valor. R interactua mas en la parte mas externa.

