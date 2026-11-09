#Edgar Aguirre
#2186874
#08/10/26
datos1 <- read.csv(file.choose())
View(datos1)
mean(datos1$eruptions)
sd(datos1$eruptions)
var(datos1$eruptions)

mean(datos1$waiting)
sd(datos1$waiting)
var(datos1$waiting)
cor.test(datos1$waiting, datos1$eruptions)
modelo1 <- lm(eruptions ~ waiting, data = datos1)

summary(modelo1)
plot(datos1$waiting, datos1$eruptions,
     xlab = "Tiempo de espera",
     ylab = "Duración de la erupción",
     main = "Regresión lineal")
abline(modelo1)
predict(modelo1)
residuals(modelo1)
coef(modelo1)
modelo2 <- lm(EDAD ~ DAP, data = datos_control_Rascon)
summary(modelo2)
names(modelo2)
head(modelo2)
str(modelo2)
predict(modelo2)
datos_control_Rascon$EDAD_ESTIMADA <- predict(modelo)

View(datos_control_Rascon)
summary(modelo2)
datos_control_Rascon$DAP

