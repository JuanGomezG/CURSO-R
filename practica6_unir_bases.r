library (plyr)
#Cargamos las bases
base1 <- read.csv("/Users/salademonitoreo1/Documents/BASES/base1.csv")

#Bases desde un sitio web
base1 <-read_csv("https://raw.githubusercontent.com/AllanZamb/CURSO-R/main/BASES/base1.csv")
base2 <-read_csv("https://raw.githubusercontent.com/AllanZamb/CURSO-R/main/BASES/base2.csv")
base3 <-read_csv("https://raw.githubusercontent.com/AllanZamb/CURSO-R/main/BASES/base3.csv")
base4 <-read_csv("https://raw.githubusercontent.com/AllanZamb/CURSO-R/main/BASES/base4.csv")
base5 <-read_csv("https://raw.githubusercontent.com/AllanZamb/CURSO-R/main/BASES/base5.csv")


#rbind.fill nos ayuda a combinar por filas
BASE <- rbind.fill(base1,base2,base3,base4,base5)
