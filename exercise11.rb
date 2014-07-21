#!/usr/bin/ruby
# Programa que calcula el tiempo que se tarda en llegar a un sitio dada la velocidad y la distancia.
print "Introduce el origen: "
origen = gets.chomp
print "Introduce el destino: "
destino = gets.chomp
print "Introduce la distancia (km): "
distancia = gets.chomp
print "Introduce la velocidad media (km/h): "
velocidad = gets.chomp
tiempo1 = (distancia.to_f / velocidad.to_f).round(2)
velocidad2 = velocidad.to_i + 20
tiempo2 = (distancia.to_f / velocidad2).round(2)
puts "A " + velocidad.to_s + " km/h se tardarían " + tiempo1.to_s + " horas entre " + origen + " y " + destino + "."
puts "A " + velocidad2.to_s + " km/h se tardarían " + tiempo2.to_s + " horas. Pero mejor no correr :)"
