# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")
library(readxl)
df.ex1 <- read_excel("./dados/exercicio1.xls",skip = 1, col_names = "tx.juros", col_types = c("numeric"))
ex1.media <- mean(df.ex1$tx.juros)
print(paste("Média das taxas de juros:", ex1.media))
ex1.mediana = median(df.ex1$tx.juros)
print(paste("Médiana das taxas de juros:", ex1.mediana))
ex1_desviop = round(sd(df.ex1$tx.juros),6)
print(paste("Desvio Padrão das taxas de juros:", ex1_desviop))
ex1_varianca <- round(var(df.ex1$tx.juros),6)
print(paste("Variância das taxas de juros:", ex1_varianca))
ex1.minimo <- min(df.ex1$tx.juros)
print(paste("Valor mínimo das taxas de juros:", ex1.minimo))
ex1.maximo <- max(df.ex1$tx.juros)
print(paste("Valor máximo das taxas de juros:", ex1.maximo))
ex1.quartis <- round(quantile(df.ex1$tx.juros),2)
q1 <- ex1.quartis[2]
print(paste("Q1:", q1))
q3 <- ex1.quartis[4]
print(paste("Q3:", q3))
boxplot(df.ex1$tx.juros,
        main = "Taxas de Juros Recebidas em Ações",
        xlab = "Taxas de Juros",
        ylab = "Ações",
        col = "blue",
        border = "black",
        horizontal = TRUE,
        notch = T
)
