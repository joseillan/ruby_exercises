#!/usr/bin/env ruby
# Programa que pregunta nombre, primer apellido y segundo apellido. A continuación escribe el nombre completo de dos maneras:
#       - Nombre + Apellidos.
#       - Apellidos + Nombre.
print "¿Cuál es tu nombre? "
name = gets.chomp 
print "¿Cuál es tu primer apellido? "
firstname = gets.chomp
print "¿Cuál es tu segundo apellido? "
secondname = gets.chomp
puts "Ok. Entonces te llamas " + name + " " + firstname + " " + secondname + "."
puts "Pero en las listas apareceras como " + firstname + " " + secondname + ", " + name + "."
