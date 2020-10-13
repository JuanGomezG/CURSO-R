###############################################################################
######################  PRÁCTICA 3 CONDICIONALES ##############################

#Creamos los vectores para recolectar los datos del cada paciente
nombre_paciente <- 'ALAN'      #char
edad_paciente <- 30L          #Integer
sexo_paciente <- 'MASCULINO' #char

paciente_diabetes <- 'NO'   #char
paciente_hipertenso <- 'NO' #char
paciente_obesidad <- 'NO'   #char

#Creamos los vectores para determinar sintomatología
temperatura <- 38.5         #Numeric
dif_resp <- 'NO'             #char
dolor_pecho <- 'SI'           #char
paciente_condicion <- ''       #char


if (edad_paciente >= 60 | paciente_diabetes == 'SI' | paciente_hipertenso == 'SI' ){
  print('##### DATOS CLÍNICOS DEL PACIENTE #####')
  
  if (edad_paciente[i] >= 60 | paciente_diabetes[i] == 'SI' | paciente_hipertenso[i] == 'SI' ){
    
    print(nombre_paciente[i])
    if(temperatura[i] >= 36.5){
      print('Paciente con fiebre')
    } else{
      print('Paciente con temperatura normal')
    }
    
    if(dif_resp[i] == 'SI'){
      print('Paciente con dificultad respiratoria')
      
      if(dolor_pecho[i] == 'SI') {
        print('!Urgente! Se debe intubar al paciente')
        paciente_condicion[i] <- 'HOSPITALIZADO'
        
      } else{
        print('Vigilar Progreso de la enfermedad en unidad hospitalaria')
        paciente_condicion[i] <- 'EN_VIGILANCIA'
      }
    }
    
    else{
      print('Paciente sin dificultad respiratoria')
    }
  } 
  
} else {
  print('##### DATOS CLÍNICOS DEL PACIENTE #####')
  print(nombre_paciente)
  print('Sistematología ambulatoria')
  print('El paciente queda bajo observación domiciliaria')
  paciente_condicion <- 'OBSERVACION'
}


