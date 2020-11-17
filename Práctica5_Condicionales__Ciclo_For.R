###############################################################################
######################  PRÁCTICA 4 CONDICIONALES ANIDADAS Y CICLO FOR ############

#En esta práctica crearemos un sistema para detectar si alguien está enfermo de COVID

#Creamos los vectores para recolectar los datos del cada paciente
nombre_paciente <- c()
edad_paciente <- c()
sexo_paciente <- c()

paciente_diabetes <- c()
paciente_hipertenso <- c()
paciente_obesidad <- c()

#Creamos los vectores para determinar sintomatología
temperatura <- c()
dif_resp <- c()
dolor_pecho <- c()
paciente_condicion <- c()


for (i in 1:2){
  
  nombre_paciente[i] <- readline(prompt = "Nombre del paciente: ")
  edad_paciente[i] <- readline(prompt = "Edad del paciente: ")
  sexo_paciente[i] <- readline(prompt = "Sexo del paciente: ")
    
  paciente_diabetes[i] <- readline(prompt = "¿Es diabético? (SI / NO): ")
  paciente_hipertenso[i] <- readline(prompt = "¿Es hipertenso? (SI / NO): ")
  
  temperatura[i] <- readline(prompt = "Temperatura del paciente: ")
  dif_resp[i] <- readline(prompt = "Presenta dificultad para respirar: ")
  dolor_pecho[i] <- readline(prompt = "Presenta dolor de pecho: ")
  
  
  if (edad_paciente[i] >= 60 | paciente_diabetes[i] == 'SI' | paciente_hipertenso[i] == 'SI' ){
    
    if(temperatura[i] >= 36.5){
      print('Paciente con fiebre')
    }
    
    else{
      print('Paciente con temperatura normal')
    }
    
    
    if(dif_resp[i] == 'SI'){
      print('Paciente con dificultad respiratoria')
      
      if(dolor_pecho[i] == 'SI') {
        print('!Urgente! Se debe intubar al paciente')
        paciente_condicion[i] <- 'HOSPITALIZADO'
        
      }
      else{
        print('Vigilar Progreso de la enfermedad en unidad hospitalaria')
        paciente_condicion[i] <- 'EN_VIGILANCIA'
      }
    }
    
    else{
      print('Paciente sin dificultad respiratoria')
    }
  }
  
  else {
    
    print('Paciente bajo observación domiciliaria')
    paciente_condicion[i] <- 'OBSERVACION'
  }
  
}




