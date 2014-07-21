#!/usr/bin/ruby
# Programa que pide tres números y determina cuál es el mayor y el menor.
print "Introduce el primer número: "
num1 = gets.chomp.to_i
print "Introduce el segundo número: "
num2 = gets.chomp.to_i
print "Introduce el tercer número: "
num3 = gets.chomp.to_i
if num1 >= num2
    mayor = num1
    menor = num2
else
    mayor = num2
    menor = num1
end
if num3 >= mayor
    mayor = num3
end
if num3 <= menor
    menor = num3
end
puts "El mayor es el " + mayor.to_s
puts "El menor es el " + menor.to_s
