
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

paciente_fiebre <- c()
paciente_dolor_cabeza <- c()
paciente_tos <- c()

paciente_dolor_torax <- c()
paciente_saturacion_oxigeno <- c()
paciente_dif_respiratoria <- c()




for (i in 1:1){
  
  nombre_paciente[i] <- readline(prompt = "Nombre del paciente: ")
  edad_paciente[i] <- readline(prompt = "edad del paciente: ")
  sexo_paciente[i] <- readline(prompt = "sexo del paciente: ")
  
  #Contestamos Sí o No
  paciente_diabetes[i] <- readline(prompt = "El paciente es diabético: ")
  paciente_hipertenso[i] <- readline(prompt = "El paciente es hipertenso: ")
  paciente_obesidad[i] <- readline(prompt = "El paciente es obeso: ")
  paciente_otra_condicion[i] <- readline(prompt = "El paciente tiene alguna otra enfermedad: ")
  
  #Capturammos datos
  paciente_fiebre[i] <- readline(prompt = "Cuál es la temperatura del paciente?: ")
  paciente_dolor_cabeza[i] <- readline(prompt = "El paciente tiene dolor de cabeza?: ")
  paciente_tos[i] <- readline(prompt = "El paciente presenta tos?: ")
  
  paciente_dolor_torax <- readline(prompt = "El paciente tiene dolor de torax ?: ")
  paciente_saturacion_oxigeno <- readline(prompt = "Cuál es la saturación de oxigeno ?: ")
  paciente_dif_respiratoria <- readline(prompt = "El paciente tiene dificultad respiratoria ?: ")
  
  #Empezamos con el análisis de los datos obtenidos
  if(paciente_diabetes[i] == 'SI' | paciente_hipertenso[i] == 'SI' | paciente_obesidad[i] == 'SI' | paciente_otra_cond[i] == 'SI'){
    paciente_alerta[i] <- 'SI'
  }
  
  
  
  
  
  
}
