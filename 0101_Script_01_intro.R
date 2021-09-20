# Introducciòn al manejo de R

## R es interactivo
2 + 2

## R es una calculadora
## Resta
12-14
## Multiplicación
4*5
## División
5/2
## División entera
5%/%2
## Módulo resto
5%%2

# Ejemplo de uso de divisiones
## Tenemos un grupo de 23 alumnos
## y debemos asignarlos en equipos de 5
## ¿Cuátos equipos se forman y cuántos alumnos
## sobran?
## Equipos que se pueden formar:
23%/%5
## Cuántos alumnos quedan fuera de un equipo
## Utiliza el módulo resto
23%%5

## Potencia
5**3
5^3
# Raíz cuadrada
sqrt(9)
sqrt(16)
sqrt(8)

# Logaritmo
log(3)

# Número e (base de los logaritmos neperianos)
exp(1)

exp(1.0986122)

# Valor absoluto
abs(-42.56)


# Instalación de librerías (paquetes)
## Instalar librería para descarga de información en
## línea
install.packages("downloader")
# Cargar la librería
library(downloader)

# Ayuda en R
?downloader
help("downloader")
?summary

# Asignación
variable_a <- 4
variable_a
variable_a <- 18
variable_a
# Vector
variable_v <- c(2,4,7,11,34)
variable_v

# Carga de base de datos interna de R
data(iris)
# Ver la base de datos
View(iris)
# Tipo de datos/objetos
class(iris)
class(4)
class(4.2)
class("Hola")
class(TRUE)
class(FALSE)

# Seleccionar columnas
# Opción 1
iris$Species
especies <- iris$Species
especies
View(especies)
# Seleccionar columna numèrica
especies_num <- iris$Petal.Length
class(especies_num)
# Borrar objeto
rm(especies_num)
long_petalo <- iris$Petal.Length
class(long_petalo)
# Opción 2 (selección de columnas)
# Por índices
# Seleccionar una columna
columna_2 <- iris[,2]
# Seleccionar grupos de columnas
columna_2_3_4 <- iris[,2:4]
class(columna_2_3_4)
# Seleccionar columnas salteadas
columna_1_3_5 <- iris[,c(1,3,5)]
# Seleccionar filas
fila_2_columna2 <- iris[2,2]
fila_2_columna2
#Seleccionar filas 120 a 140 para toda la base
fila_120_140 <- iris[120:140,]
View(fila_120_140)
class(fila_120_140)
#Seleccionar filas y columnas
# Consecutivas
filas_20_30_columnas_2_4 <- iris[20:30,2:4]

# Directorio de trabajo
getwd()
# Cambio de directorio de trabajo
setwd("/Users/kxcj/OneDrive/Trabajo/Academia/Anahuac/Cursos/Analisis_datos_I/R_ejercicios")

# Importar datos
# Menú 'Import Dataset'
# O directamente con sintaxis:
library(readxl)
grupo_edad_altura <- read_excel("grupo_edad_altura.xlsx")

# Importar archivos directamente de internet
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv"
download(url, destfile=filename)
data_ratones <- read.csv(filename)

head(data_ratones)
head(iris)

# Longitud de un objeto
length(iris)
length(data_ratones)
length(iris$Petal.Length)

long <- length(iris$Petal.Length)
long

# Notación matemática
# Sumatorias y secuencias
n <- 1000
x <- 1:n
S <- sum(x)
S
