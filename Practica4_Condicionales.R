################################################################################
##########  Practica 4 Clase - Condicionales ###################################
################################################################################

#Primera condicional
#Determinar si 4 es mayor a 5
#Ejecutamos ELSE

#¿4 es mayor a 5?
if (4 > 5) {
  print('Es verdad')
} else {
  print('es falso')
}

################################################################################
#Segunda condicional
#Almacenamos dos variables en objetos a y b
#No ejecutamos ELSE
a <- 10
b <- 12

#¿a es menor o igual a b?
if (a <= b){
  print('Si, es verdad')
}

################################################################################
#Tercera condicional
#Preguntamos si 5 es menor a 7 o si 4 es menor a 3
#Debe cumplir por lo menos una condición

if ( 5 < 7 | 4 < 3  ){
  print('Es verdad')
}else {
  print('No es verdad')
}

################################################################################
#Utilizamos un Ciclo For con un una condicional anidada en su estructura

#Cada vez que el iterador realice una vuelta:
  #Comprueba que la variable actual 'iterador' sea mayor o igual a 4
  #De lo contrario ELSE demuestra que no es mayor

for (iterador in 1:5){
  #print(paste('Hola', iterador))
  
  if ( iterador >= 4 ){
    print('Si, es mayor o igual')
  }
  else {
    print('No es mayor')
  }
  
}



