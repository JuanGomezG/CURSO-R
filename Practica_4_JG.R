##############################################################################
########### Practica 4 #######################################################
##############################################################################

# DIABETES, HIPERTENSION, OBSESIDAD, ADULTOMAYOR
nombre_paciente<-c()
edad_paciente<-c()
sexo_paciente<-c()
paciente_diabetico<-c()
paciente_hipertenso<-c()
paciente_obesidad<-c()
paciente_temperatura<-c()
paciente_door_cabeza<-c()
paciente_dolor_torax<-c()
paciente_dificultad_respiratoria<-c()

# Ciclo iterativo para cinco pacientes

for (i in 1:5){
  
  nombre_paciente[i] <-readline(prompt = "Nombre del paciente: ")
  edad_paciente[i]<-readline(prompt = "Edad del paciente: ")
  sexo_paciente[i]<-readline(prompt = "Sexo  del paciente: ")
  paciente_diabetico[i]<-readline(prompt = "¿Es un paciente diabetico?(S/N)")
  paciente_hipertenso[i]<-readline(prompt = "¿Es un paciente hipertenso?(S/N)")
  paciente_obesidad[i]<-readline(prompt = "¿Paciente es obseo?(S/N)")
  paciente_temperatura[i]<-readline(prompt = "¿Cual es la temperatura?")
}
if((edad_paciente>"60" )){
  print("Paciente de alto Riesgo")
  
}else{
  print("No tiene Riesgo")
  
}


