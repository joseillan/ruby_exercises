#!/usr/bin/ruby
# Programa que pide un número de 2 cifras y, a continuación, lo imprime al revés
print "Escribe un número de dos cifras: "
number = gets.chomp
if number.length == 2
    number = number.to_i
    decena = number/10
    unidad = number%10
    decena = decena.to_s
    unidad = unidad.to_s
    puts "El número al revés es: " + unidad + decena
else
    puts "El número " + number + " no tiene dos cifras."
end
