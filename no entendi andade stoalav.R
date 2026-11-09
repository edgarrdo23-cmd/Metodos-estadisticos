#coorrelacion
#insertar datos de altura y diametro

erupciones <-("faithful")

#crear una grafica base para revisar el comportamiento 
#de las dos variables numericas

plot(erupciones $ waiting,erupciones $ eruptions,
          xTab = "tiempo de espera" "(min)"
          yTab = "duracion de la erupcion" "(min)"
          pch = 19 col = "red")

#conocer el rango del tiempo
range(erupciones$waiting)

#conocer el rango de la erupcion
range(erupciones$eruptions)

boxplot(erupciones$eruptions)
fivenum(erupciones$eruptions)

cor.test(erupciones$eruptions, erupciones$waiting)
