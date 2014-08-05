#!/usr/bin/env ruby
# Programa que pide cuatro números enteros en la misma línea (separados por un espacio) y determina cuál es el mayor y cuál es es el menor

print "Introduzca 4 números enteros (separados por espacios): "
input = gets.chomp
until input =~ /^((-?\d+\s){3})-?\d+$/ do
    print "Introduzca 4 números enteros (separados por espacios): "
    input = gets.chomp
end
numbers = input.split(" ", 4)
num1 = numbers.first.to_i
num2 = numbers[1].to_i
num3 = numbers[2].to_i
num4 = numbers.last.to_i
if num1 == num2
    mayor = num1
    menor = num1
end
if num1 > num2
    mayor = num1
    menor = num2
end
if num2 > num1
    mayor = num2
    menor = num1
end
if num3 > mayor
   mayor = num3
end
if num3 < menor
   menor = num3
end
if num4 > mayor
   mayor = num4
end
if num4 < menor
   menor = num4
end
print "El mayor es: " + mayor.to_s + "\n"
print "El menor es: " + menor.to_s + "\n"
