# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")
if (!("qcc") %in% installed.packages()) install.packages("qcc")
library(readxl)

exercicio6 <- read_excel("./dados/exercicio6.xls")

library(qcc)

causas <- (exercicio6$`Nº pessoas`)
names(causas) <- exercicio6$Qualidade

pareto <- pareto.chart(causas, main='Qualidade',ylab = "N. Pessoas")
