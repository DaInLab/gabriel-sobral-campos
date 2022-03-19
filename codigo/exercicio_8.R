# Instalando biblioteca readxl para importar para o R arquivos com extensÃ£o .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")
library(readxl)

alturas = read_excel("./dados/exercicio8.xls", col_types = c("numeric"))
alturas <- as.matrix(alturas)

# Criando divisoes de classes de 1.5 a 2m a cada 10cm
classes <- seq(1.5, 2, by=0.1)

distrib_frequencia <- transform(table(cut(alturas, classes)))
colnames(distrib_frequencia) = c("Faixa de Altura", "Frequencia")
print(distrib_frequencia)

# Histograma
hist(alturas, breaks=classes, main="Histograma de Alturas de Pacientes", xlab="Altura (m)", col="blue")
