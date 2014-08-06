#!/usr/bin/env ruby
# Programa que lee un número y muestra la tabla de multiplicar de dicho número utilizando un bucle while.
print "Número: "
num = gets.chomp.to_i
multiplo = 0
while multiplo <= 10 do
    print num.to_s + " x " + multiplo.to_s + " = " + (num * multiplo).to_s + "\n"
multiplo = (multiplo + 1)
end
