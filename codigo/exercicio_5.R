# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")
library(readxl)

exercicio5 <- read_excel("./dados/exercicio5.xls")

barplot(exercicio5$`Nº pessoas`,
        main = "Antitérmico Escolhido",
        xlab = "Marcas",
        ylab = "N Pessoas",
        names.arg = exercicio5$Marcas)
