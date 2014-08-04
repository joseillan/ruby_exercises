#!/usr/bin/env ruby
# Programa que pide un número comprendido entre 0 y 100 y lo escribe con letra.
xtena = ["veinte", "treinta", "cuarenta", "cincuenta", "sesenta", "setenta", "ochenta", "noventa"]
unidad = ["cero", "uno", "dos", "tres", "cuatro", "cinco", "seis", "siete", "ocho", "nueve"]
decena = ["diez", "once", "doce", "trece", "catorce", "quince"]
print "Introduzca un número entre 0 y 100: "
num = gets.chomp.to_i
dec = num / 10
uni = num % 10
if num > 100 or num < 0
    print "El número no es válido. Debe estar entre 0 y 100. \n"
elsif num == 100
    print "El número introducido es el cien."
elsif num == 20 or num == 30 or num == 40 or num == 50 or num == 60 or num == 70 or num == 80 or num == 90
    print "El número introducido es el " + xtena[dec - 2] + ". \n"
elsif num >= 30 and num < 100
    print "El número introducido es el " + xtena[dec - 2] + " y " + unidad[uni] + ". \n"
elsif num < 30 and num > 20
    print "El número introducido es el veinti" + unidad[uni] + ". \n"
elsif num < 20 and num > 15
    print "El número introducido es el dieci" + unidad[uni] + ". \n"
elsif num <= 15 and num >= 10
    print "El número introducido es el " + decena[uni] + ". \n"
else
    print "El número introducido es el " + unidad[uni] + ". \n"
end
