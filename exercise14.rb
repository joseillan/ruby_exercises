#!/usr/bin/env ruby
# Programa que transforma una nota numérica entre 0 y 10 con dos decimales en la nota literal.
print "Introduce la nota numérica: "
nota = gets.chomp.to_f.round(2)
if nota < 5 and nota >=0
    notalit = "Suspenso"
elsif nota >=5 and nota < 6
    notalit = "Suficiente"
elsif nota >=6 and nota < 7
    notalit = "Bien"
elsif nota >= 7 and nota < 9
    notalit = "Notable"
elsif nota >= 9 and nota <=10
    notalit = "Sobresaliente"
else
    notalit = "Valor incorrecto"
    puts "La nota introducida no es correcta. Tiene que ser un valor entre 0 y 10."
end
puts "Nota: " + notalit
