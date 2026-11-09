# Evaluación III - Principios de estadística
# Anillos de crecimiento y temperatura
# Nombre: Edgar Eduardo Aguirre de León
# Matrícula: 2186874

# EJERCICIO 1

# a) Datos
AFres1 <- c(2.45, 1.98, 3.12, 2.67, 1.85, 2.90, 3.35, 2.20, 2.76, 2.58)
ACal1 <- c(2.51, 1.90, 3.20, 2.55, 1.92, 2.84, 3.41, 2.12, 2.70, 2.66)

anillos <- data.frame(
  Temperatura = c(rep("AFres", 10), rep("ACal", 10)),
  Ancho = c(AFres1, ACal1)
)
print(anillos)

# b) Hipótesis
# H0: el ancho medio es igual en los dos años.
# H1: el ancho medio es diferente en los dos años.

# c) Medias
round(mean(AFres1), 3)
round(mean(ACal1), 3)

# d) Desviaciones estándar
round(sd(AFres1), 3)
round(sd(ACal1), 3)

# e) Diferencia media (AFres - ACal)
dif1 <- AFres1 - ACal1
round(mean(dif1), 3)

# f y g) Prueba t pareada y valor p
prueba1 <- t.test(AFres1, ACal1, paired = TRUE)
round(prueba1$statistic, 3)
prueba1$parameter
round(prueba1$p.value, 3)

# h) Conclusión
# Como p = 0.850 es mayor que 0.05, no se rechaza H0.
# No se encontró una diferencia significativa entre ambos años.
# Con estos datos no se puede afirmar que el año cálido redujo el crecimiento.


# EJERCICIO 2

# Datos
AFres2 <- c(2.45, 1.98, 3.12, 2.67, 1.85, 2.90, 3.35, 2.20, 2.76, 2.58)
ACal2 <- c(2.10, 1.82, 2.64, 2.48, 1.70, 2.41, 2.95, 2.15, 2.30, 2.35)

# Hipótesis
# H0: el ancho medio es igual en los dos años.
# H1: el ancho medio es diferente en los dos años.

# a) Medias
round(mean(AFres2), 3)
round(mean(ACal2), 3)

# b) Desviaciones estándar
round(sd(AFres2), 3)
round(sd(ACal2), 3)

# c) Diferencia media (AFres - ACal)
dif2 <- AFres2 - ACal2
round(mean(dif2), 3)

# d y e) Prueba t pareada y valor p
prueba2 <- t.test(AFres2, ACal2, paired = TRUE)
round(prueba2$statistic, 3)
prueba2$parameter
prueba2$p.value

# f) Conclusión
# Como p es menor que 0.05, se rechaza H0.
# Sí existe una diferencia significativa: los anillos fueron más estrechos
# en el año cálido. El sitio podría ser vulnerable, aunque la prueba no
# demuestra que la temperatura sea la única causa.
