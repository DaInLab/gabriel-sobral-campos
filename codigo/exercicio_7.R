# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")
library(readxl)

exercicio7 <- read_excel("./dados/exercicio7.xls")

barplot(exercicio7$Atendimento,
        main = "Atendimentos/Area",
        xlab = "Area",
        ylab = "Atendimentos",
        names.arg = exercicio7$Áreas)