#!/usr/bin/ruby
# Programa que calcula la longitud de una circunferencia a partir del radio
print "Escribe el radio de la circunferencia (en cm): "
radio = gets.chomp.to_i
longitud = 2 * Math::PI * radio
puts "La longitud de la circunferencia es: " + longitud.to_s + " cm."
