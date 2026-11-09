# EEAL
# MATRICULA 2186874
# 19/09/2026 Tercera clase

+Archivo excel

# Importar datos----
# Usar la funcion "read.csv" para importar datos de excel.

Obs <- read.csv("vivero.csv", header = TRUE)

#Declarar columna de tratamiento como un factor y sus niveles
#Se utilizo la funcion "as.factor".

Obs$Tratamiento <-as.factor(Obs$Tratamiento)
Obs$Tratamiento

#Grafica----

#Boxplot de los datos

boxplot(Obs$IE ~ Obs$Tratamiento,
        xlab = "Factor = Fertilizante",
        ylab = "Indice (IE)",
        col = "lightblue",
        main = "Unidad experimental")
        



