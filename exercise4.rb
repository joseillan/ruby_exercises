#!/usr/bin/env ruby
# Programa que pregunta por el nombre y la edad y muestra mensaje
print "¿Cuál es tu nombre? "
name = gets.chomp
print "¿Cuál es tu edad? "
years = gets.chomp
puts "¡Hola, " + name + "! es un placer habla contigo."
puts "Te conservas muy bien para tener sólo " + years + " años."
