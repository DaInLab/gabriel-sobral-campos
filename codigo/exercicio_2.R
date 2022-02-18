# Instalando biblioteca readxl para importar para o R arquivos com extensÃ£o .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")
library(readxl)
df.ex2 <- read_excel("./dados/exercicio2.xls",skip = 1, col_names = "Casas", col_types = c("numeric"))
ex2.freq_abs<-table(df.ex2$Casas) 
ex2.freq_abs
ex2.freq_rel<-100*prop.table(ex2.freq_abs)
ex2.freq_rel
ex2.freq_acum<-cumsum(ex2.freq_rel) 
ex2.freq_acum

ex2.freq_abs<-c(ex2.freq_abs,sum(ex2.freq_abs)) 
ex2.fe<-c(ex2.freq_rel,sum(ex2.freq_rel)) 
ex2.freq_acum<-c(ex2.freq_acum,NA) 
names(ex2.freq_abs)[40]<-"Total" 

tabela<-cbind (ex2.freq_abs,ex2.freq_rel,ex2.freq_acum) 
tabela

ex2.media <- mean(df.ex2$Casas)
print(paste("MÃ©dia dos numeros das Casas:", ex2.media))

ex2.mediana = median(df.ex2$Casas)
print(paste("MÃ©diana dos numeros das Casas:", ex2.mediana))

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

ex2.moda <- getmode(df.ex2$Casas)
print(paste("Moda dos numeros das Casas:", ex2.moda))

range(df.ex2$Casas)
ex2.amplitude<-diff( range(df.ex2$Casas) )
print(paste("Amplitude dos numeros das Casas:", ex2.amplitude))

ex2.variancia<-var(df.ex2$Casas)
print(paste("Variancia dos numeros das Casas:", ex2.variancia))

ex2.desvio<-sd(df.ex2$Casas)
print(paste("Desvio padrao dos numeros das Casas:", ex2.desvio))

boxplot(df.ex2$Casas)
abline(a = ex2.media, b = 0L, h = NULL, v = T)
abline(a = ex2.mediana, b = 0L, h = NULL, v = T)
abline(a = ex2.moda, b = 0L, h = NULL, v = T)
abline(a = ex2.amplitude, b = 0L, h = NULL, v = T)
abline(a = ex2.variancia, b = 0L, h = NULL, v = T)
abline(a = ex2.desvio, b = 0L, h = NULL, v = T)