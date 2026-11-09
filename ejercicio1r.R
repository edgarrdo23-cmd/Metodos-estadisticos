#Edgar Eduardo Aguirre de León
#2186874
# EJERCICIO 1
speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
abundance <- c(6, 3, 5, 23, 16, 12, 48, 43)

# Diagrama de dispersión
plot(speed, abundance,
     xlab = "Velocidad del arroyo",
     ylab = "Abundancia de efímeras",
     main = "Relación entre velocidad y abundancia")

# Correlación de Pearson
cor.test(speed, abundance, method = "pearson")
#t = 3.8568, df = 6, p-value = 0.008393
modelo <- lm(abundance ~ speed)
abline(modelo)
# EJERCICIO 2

pH <- c(5.40, 5.65, 5.14, 5.14, 5.14, 5.10, 4.70)

N <- c(0.188, 0.165, 0.260, 0.169, 0.164, 0.094, 0.100)

Dens <- c(0.92, 1.04, 0.95, 1.10, 1.12, 1.22, 1.52)

P <- c(215, 208, 300, 248, 174, 129, 117)

Ca <- c(16.35, 12.25, 13.02, 11.92, 14.17, 8.55, 8.74)

Mg <- c(7.65, 5.15, 5.68, 7.88, 8.12, 6.92, 8.16)

K <- c(0.72, 0.71, 0.68, 1.09, 0.70, 0.81, 0.39)

Na <- c(1.14, 0.94, 0.60, 1.01, 2.17, 2.67, 3.32)
cor.test(pH, N)
cor.test(pH, Dens)
cor.test(pH, P)
cor.test(pH, Ca)
cor.test(pH, Mg)
cor.test(pH, K)
cor.test(pH, Na)
# EJERCICIO 3
data(anscombe)

# Ver los datos
anscombe
cor(anscombe$x1, anscombe$y1)
cor(anscombe$x2, anscombe$y2)
cor(anscombe$x3, anscombe$y3)
cor(anscombe$x4, anscombe$y4)

par(mfrow = c(2,2))

plot(anscombe$x1, anscombe$y1)
plot(anscombe$x2, anscombe$y2)
plot(anscombe$x3, anscombe$y3)
plot(anscombe$x4, anscombe$y4)
