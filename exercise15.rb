#!/usr/bin/ruby
# Programa que calcula ecuaciones de segundo grado a partir de los coeficientes a, b y c mostrando las dos soluciones.
print "Introduce el coeficiente a: "
a = gets.chomp.to_i
print "Introduce el coeficiente b: "
b = gets.chomp.to_i
print "Introduce el coeficiente c: "
c = gets.chomp.to_i
x1 = (-b + (Math.sqrt((b ** 2) - (4 * a * c)))) / (2 * a)
x2 = (-b - (Math.sqrt((b ** 2) - (4 * a * c)))) / (2 * a)
puts "Solución 1: " + x1.to_s
puts "Solución 2: " + x2.to_s 
