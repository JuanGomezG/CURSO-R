################################################################################
# #####  Practica 5
################################################################################
library(plyr)

nombre_paciente <- c("ALAN", "GERARDO", "GUSTAVO", "SOFIA", "AMANDA")
edad_paciente <- c(34,55,65,56,34)
sexo_paciente <- c("M", "M", "M","F","F")

paciente_diabetico <- c("S","S","N","N","N")
paciente_hipertenso <-c ("S","N","N","S","N")
paciente_obesidad <- c("S","N","N","S","N")

pacientes <- list(nombre_paciente, edad_paciente,sexo_paciente, paciente_diabetico, paciente_hipertenso,paciente_obesidad)

pacientes <- as.data.frame(pacientes)
colnames(pacientes) <- c("Nombre Paciente", "Edad Paciente", "Sexo paciente", "Paciente diabético", "Paciente Hipertenso", "Paciente Obesidad")

write.csv(pacientes, "Base1.csv", row.names = F)


###############################################################################


# Extracción de bases de datos manuales (se cargan desde la web de Github)
base1 <- read.csv("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base1.csv")
base2 <- read.csv("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base2.csv")
base3 <- read.csv("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base3.csv")
base4 <- read.csv("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base4.csv")
base5 <- read.csv("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base5.csv")


#Crear una lista de DataFrames
Bases_lista <- list(base1,base2,base3,base4,base5)



#Crear una DataFrame con  las listas (plyr) (Tidyverse - dplyr)
#Unificar bases de datos
pacientes_dataframe <- rbind.fill(Bases_lista)

################################################################################
### Funciones ############################################################

#### Función para realizar operaciones  
resultados[i] <- resultados(i,4)

resultados <- function(numero1, numero2){
  
  suma <- numero1+numero2
  resta <- numero1-numero2
  multiplicacion <- numero1*numero2
  division <- numero1/numero2
  
  resultados <- list(suma, resta, multiplicacion, division)
  return(resultados)
}

#################################################################################

### Obtenemos masivamente las bases de datos

base_De_bases <-list()



for (i in 1:5){
  
  base_De_bases[[i]] <- read.csv(paste0("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base",i,".csv"))
  print(paste0("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base",i,".csv"))
  
}






