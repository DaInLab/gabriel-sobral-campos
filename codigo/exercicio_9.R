# Instalando biblioteca readxl para importar para o R arquivos com extensÃ£o .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")
library(readxl)

salarios = read_excel("./dados/exercicio9.xls", col_types = c("numeric"))
salarios <- as.matrix(salarios)

# Criando divisoes de classes de 4 a 24 a cada 2
classes <- seq(4, 24, by=2)

distrib_frequencia <- transform(table(cut(salarios, classes)))
colnames(distrib_frequencia) = c("Faixa de Salarios", "Frequencia")
print(distrib_frequencia)

# Histograma
hist(salarios, breaks=classes, main="Histograma de Salarios de Funcionarios", xlab="Salarios Minimos", col="blue")
