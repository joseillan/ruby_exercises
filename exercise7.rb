#!/usr/bin/env ruby
# Programa que calcula la superficie de un cuadrado a partir de la longitud del lado.

puts "Vamos a calcular la superficie de un cuadrado..."
print "¿Cuánto mide el lado en cm? "
lado = gets.chomp
lado = lado.to_i
area = lado * lado
#area = area.to_s
puts "La superficie del cuadrado es de " + area.to_s + " cm^2."
