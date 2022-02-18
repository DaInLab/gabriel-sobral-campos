# Importando o arquivo do exercÃ­cio 3
if(!("xlsx") %in% installed.packages()) install.packages("xlsx", type = "source") 
library(xlsx)
eb = read.xlsx("./dados/exercicio3.xlsx",encoding =  "UTF-8", sheetName = "Sheet1")
head(eb)
ex3.mediana = median(eb$Familias)
print(paste("Mediana nº filhos:", ex3.mediana))
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
ex3.moda <- getmode(eb$Familias)
print(paste("Moda nº filhos:", ex3.moda))
plot(eb$Numero.de.filhos, eb$Familias)