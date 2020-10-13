

###############################################################################
######################  PRÁCTICA 4 CICLO FOR    ##############################
#Ciclo FOR ( para cada elemento en mi vector... haz algo)

#La forma más eleaborada de imprimir un ciclo for es utilizando un vector numérico
mi_vector <- 1:5

for (iterador in mi_vector){
  print(paste('Lee una base de datos',iterador))
}


#Concatenar variables

saludo <- 'Hola'
nombre <- readline("Introduce un nombre: ")
apellido <- readline("Cuál es tu apellido: ")
paste(saludo, nombre, apellido, ', mucho gusto')


#EJERCICIO
#Ciclo FOR con Readline
nombre_paciente <- c()
edad_paciente <- c()
diabetico_paciente <- c()

for (cosaqueaumenta in 1:2){
  nombre_paciente[cosaqueaumenta] <- readline("Nombre del paciente: ")
  edad_paciente[cosaqueaumenta] <- readline("Edad del paciente: ")
  diabetico_paciente[cosaqueaumenta] <- readline('El paciente es diabetico (SI / NO):')
  
  if (edad_paciente >= 60){
    print(paste(nombre_paciente[cosaqueaumenta], ', No debería salir de casa'))
  }
}


