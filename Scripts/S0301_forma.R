# Librerías
install.packages("moments")
install.packages("lubridate")
install.packages("ggVennDiagram")
install.packages('Rcpp')

library(downloader)
library(moments)
library(lubridate)
library(dplyr)
library(Rcpp)
library(ggVennDiagram)
library(eulerr)


# Descargar datos
url <- "https://raw.githubusercontent.com/cjjmdata/curso_analisis_de_datos_I/main/Examen/AAPL.csv"
filename <- "aapl.csv"
download(url, destfile=filename)
aapl <- read.csv(filename)


#
head(aapl)

summary(aapl)
class(aapl)


plot(aapl$Cierre, type="l")
?plot
# skewness
skewness(a)
skewness(b)
skewness(c)


install.packages("PearsonDS")
library(PearsonDS)
moments <- c(mean = 0,variance = 1,skewness = 0, kurtosis = 2)
a <- rpearson(10000, moments = moments)
hist(a, main='Distribución simétrica', xlab = "Datos")

moments <- c(mean = 0,variance = 1,skewness = 0, kurtosis = 3)
b <- rpearson(10000, moments = moments)
hist(b, main='Distribución simétrica', xlab = "Datos")

moments <- c(mean = 0,variance = 1,skewness = 0, kurtosis = 6)
c <- rpearson(10000, moments = moments)
hist(c, main='Distribución simétrica', xlab = "Datos")


# Lista de vectores
x <- list(A = 1:2, B = 5:6)
# Diagrama de Venn 3D
ggVennDiagram(x)





disjoint_sets <- euler(c("A" = 10, "B" = 10, "A&B" = 5))
plot(disjoint_sets,
     edges = list(col = "grey", lex = 2),
     fills = c("cyan", "orange"))







