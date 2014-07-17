#!/usr/bin/ruby
# Programa que calcula la superficie de un triángulo a partir de la base y de la altura.
puts "Vamos a calcular la superficie de un triángulo..."
print "¿Cuánto mide la base en cm? "
base = gets.chomp.to_f
print "¿Cuánto mide la altura en cm? "
altura = gets.chomp.to_f
area = (base * altura)/2
puts "La superficie del triángulo es de " + area.to_s + " cm^2."
