#Realizar la captura automática de 10 pacientes con un ciclo For
#Recuperar datos de los pacientes inicales
#Nombre, Edad, Sexo
#Recuperar condiciones existentes
#Obesidad, Hipertensión, Diabetes u otra condición asociada

#Creamos las variables de tipo vector para almacenar las condiciones de los pacientes
nombre_paciente <- c()
edad_paciente <- c()
sexo_paciente <- c()

paciente_diabetes <- c()
paciente_hipertenso <- c()
paciente_obesidad <- c()
paciente_otra_cond <- c()

paciente_alerta <- c()

paciente_temperatura <- c()
paciente_fiebre <- c()
paciente_dolor_cabeza <- c()
paciente_tos <- c()

paciente_dolor_torax <- c()
paciente_saturacion_oxigeno <- c()
paciente_dif_respiratoria <- c()
paciente_condicion <- c()

#Creamos el ciclo para realizar la captura de datos para cinco personas
for (i in 1:5){
  
  nombre_paciente[i] <- readline(prompt = "Nombre del paciente: ")
  edad_paciente[i] <- readline(prompt = "edad del paciente: ")
  sexo_paciente[i] <- readline(prompt = "sexo del paciente: ")
  
  #Contestamos Sí o No
  paciente_diabetes[i] <- readline(prompt = "¿El paciente es diabético?: (SI/NO)")
  paciente_hipertenso[i] <- readline(prompt = "¿El paciente es hipertenso?: (SI/NO) ")
  paciente_obesidad[i] <- readline(prompt = "¿El paciente tiene obesidad?: (SI/NO)")
  paciente_otra_cond[i] <- readline(prompt = "¿El paciente tiene alguna otra enfermedad?: (SI/NO) ")
  
  #Capturammos datos
  paciente_fiebre[i] <- readline(prompt = "Cuál es la temperatura del paciente?: ")
  paciente_dolor_cabeza[i] <- readline(prompt = "¿El paciente tiene dolor de cabeza?: (SI/NO) ")
  paciente_tos[i] <- readline(prompt = "¿El paciente presenta tos?: (SI/NO)")
  
  paciente_dolor_torax[i] <- readline(prompt = "¿El paciente tiene dolor de torax ?: (SI/NO)")
  paciente_saturacion_oxigeno[i] <- readline(prompt = "¿Cuál es la saturación de oxigeno ?: (SI/NO) ")
  paciente_dif_respiratoria[i] <- readline(prompt = "¿El paciente tiene dificultad respiratoria ?: (SI/NO)")
  
  
  #Empezamos con el análisis de los datos obtenidos
  if(paciente_diabetes[i] == 'SI' | paciente_hipertenso[i] == 'SI' | paciente_obesidad[i] == 'SI' | paciente_otra_cond[i] == 'SI'){
    paciente_alerta[i] <- 'SI'
    print("PACIENTE CON ALUGUNA CONDICION ASOCIADA, SE SUGIERE REVISIÓN")
  }
  
  # ANALIZAMOS SI ES FIBRE
  if(paciente_fiebre[i] > 38.5 ){
    paciente_fiebre[i] <- 'SI'
    print('PACIENTE CON FIEBRE')
  }else {
    print('paciente con temperatura normal')
  }
  
  if(paciente_dif_respiratoria[i] == 'SI'){
    print('Paciente con Dificultad respiratoria')
    if(paciente_dolor_torax[i] == 'SI'){
      print('Paciente probablemente deba intubarse si no hay mejoría')
      paciente_condicion[i] <- 'HOSPITALIZACIÓN'
    }else{
      print("Vigilar el progreso en unidad hospitalaria")
      paciente_condicion[i] <- 'EN VIGILANCIA'
    }
  }else{
    print('PACIENTE SIN DIFICULTAD RESPIRATORIA, SE SUGIERE VIGILANCIA EN CASA')
  }
}
