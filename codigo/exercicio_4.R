# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")
library(readxl)
exercicio4 <- read_excel("./dados/exercicio4.xls")

range(sort(exercicio4$Salários))
at <- ceiling((max(exercicio4$Salários)- min(exercicio4$Salários)))
at
k <- nclass.Sturges(exercicio4$Salários)
length(exercicio4$Salários)
k <- ceiling((sqrt(length(exercicio4$Salários))))
k
h <- ceiling(at/k)
h

classe_inf <- min(exercicio4$Salários)
classe_sup <- classe_inf+(k*h)

brk <-seq(classe_inf,classe_sup,h)
tab_salarios<-table(cut(exercicio4$Salários,breaks = brk, right = FALSE))
tab_salarios

tab_salarios_r <- prop.table(tab_salarios)
tab_salarios_r

hist(exercicio4$Salários, main="Salarios")
axis(1, at=seq(classe_inf,classe_sup,h))
axis(2, at=seq(0,max(tab_salarios),2))

hist(exercicio4$Salários, main="Salarios")
axis(1, at=seq(classe_inf,classe_sup,h))
axis(2, at=seq(0,max(tab_salarios_r),0.05))
