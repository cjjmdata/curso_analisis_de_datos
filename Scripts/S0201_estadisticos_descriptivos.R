# Librerías
library(downloader)

# Descargar datos
url <- "https://raw.githubusercontent.com/cjjmdata/curso_analisis_de_datos_I/main/Datos/grupo_edad_altura.csv"
filename <- "datos_grupo.csv"
download(url, destfile=filename)
data_gpo <- read.csv(filename)


# Mediana
median(data_gpo$Edad)
median(data_gpo$Altura)


# Moda
# 1. Hacer la tabla de frecuencias
table(data_gpo$Edad)
# 2. Convertir la tabla en un dataframe
data.frame(table(data_gpo$Edad))
# 3. Asignar el resultado a una variable
frecuencias <- data.frame(table(data_gpo$Edad))
# 4. Extraer el máximo
moda <- frecuencias[which.max(frecuencias$Freq),1]
paste('La moda de la edad es:', moda)

# Alternativa:
install.packages("modeest")
library(modeest)
# Multimodal discreta
mlv(data_gpo$Edad, method = "mfv")

mlv(data_gpo$Altura, method = "mfv")


# Media
mean(data_gpo$Edad)
mean(data_gpo$Altura)

# Media por género
install.packages("dplyr")
library(dplyr)

H <- filter(data_gpo, GÃ.nero == "Masculino")
M <- filter(data_gpo, GÃ.nero == "Femenino")

mean(H$Edad)
mean(H$Altura)

mean(M$Edad)
mean(M$Altura)

# Media ponderada
calificaciones <- c(10,9,9,6.9)
pesos <- c(4,4,4,18)

weighted.mean(calificaciones, pesos)

# Media geométrica
install.packages("psych")
library(psych)

rendimiento <- c(1.0469, 1.0550, 1.0642, 1.0427)
geometric.mean(rendimiento)

# Media armónica
velocidad <- c(90,70,45,40,50)
harmonic.mean(velocidad)

# Rango
range(data_gpo$Altura)  # Retorna el valor mínimo y máximo
diff(range(data_gpo$Altura))

range(data_gpo$Edad)
diff(range(data_gpo$Edad))

# Rango intercuartil
quantile(data_gpo$Altura, probs = c(0.25, 0.75)) # Regresa el Q1 y Q3
diff(quantile(data_gpo$Altura, probs = c(0.25, 0.75))) # Diferencia entre valor máximo Q3 y mínimo Q1

quantile(data_gpo$Edad, probs = c(0.25, 0.75))
diff(quantile(data_gpo$Edad, probs = c(0.25, 0.75)))

# Boxplot
boxplot(data_gpo$Altura, horizontal=TRUE)
boxplot(data_gpo$Edad, horizontal=TRUE)


# Varianza
x_1 <- rep(50, 5)
x_2 <- c(45, 50, 55, 47, 53)
x_3 <- c(3, 97, 10, 105, 35)
# promedio
mean(x_1)
mean(x_2)
mean(x_3)
# Varianza
var(x_1)
var(x_2)
var(x_3)





