library (plyr)


#Vectores Primarios
nombre_paciente <- c('ALAN', 'GERARDO', 'LUIS', 'GUILLERMO', 'MARÍA')
edad_paciente <- c(31,34,65,44,66)
sexo_paciente <- c('M','M','M','M','F')

#Lista
datos_del_paciente <- list(nombre_paciente,edad_paciente, sexo_paciente)

#DataFrame
datos_pacientes <- as.data.frame(datos_del_paciente)
colnames(datos_pacientes) <- c("Nombre", 'Edad', "Sexo") 

base1 <- read.csv('https://raw.githubusercontent.com/AllanZamb/CURSO-R/main/BASES/base1.csv')
base2 <- read.csv('https://raw.githubusercontent.com/AllanZamb/CURSO-R/main/BASES/base2.csv')
base3 <- read.csv('https://raw.githubusercontent.com/AllanZamb/CURSO-R/main/BASES/base3.csv')
base4 <- read.csv('https://raw.githubusercontent.com/AllanZamb/CURSO-R/main/BASES/base4.csv')
base5 <- read.csv('https://raw.githubusercontent.com/AllanZamb/CURSO-R/main/BASES/base5.csv')

#Metemos las bases en listas
BASES_LISTAS <- list(base1, base2, base3, base4, base5)

#UNIMOS las bases de datos en un objeto
BASE_PACIENTES_COVID <- rbind.fill(BASES_LISTAS)
