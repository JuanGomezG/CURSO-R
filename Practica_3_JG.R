#############################################################
################# Practica 3 - Condicionales e iteradores 



#Forma basica de if (si, algo) - else (de lo contario haz otra cosa)
if(6 > 5){
  print("Si,es verdadero")
              
}else{
print("no, no es verdadero")

}

#############################################################################
numero1<-15
numero2<-20

if(numero1 > numero2){
  print("Si,es verdadero")
  
}else{
  print("no, no es verdadero")
  
}
#############################################################################
# Condición de tres variables 
#& Ampersand (AND) me asegura que mi condición sea oblidada
numero3<-30
if((numero1>numero2 & numero3<numero2)){
print("Si,es verdadero")

}else{
  print("no, no es verdadero")
  
}
#############################################################################
# Condición de tres variables 
#| OR (OR) me asegura que mi condición sea oblidada
numero3<-30
if((numero1>numero2 | numero3<numero2)){
print("Si,es verdadero")

}else{
  print("no, no es verdadero")
  
}

#############################################################################


# Ciclos. i es una abreviatura de un rango 

vector_numeros<- c(1:9)
for (i in vector_numeros){
  print ("Hola")
}




for (i in 1:10){
  print ("Hola")
}


for (i in 1:1000){
  print (i)
}

#############################################################################

# Ciclos de control (FOR)
# Utlización de la función PASTE para concatenar. 
# Utlización de grafico es importante para pegar estos alimentos. 
# Ulilización de la función PASTE() para quitar el 


for(i in 1:5){
  print(paste("iterador",i))
  
}

for(i in 1:5){
  print(paste("iterador",i))
  
}