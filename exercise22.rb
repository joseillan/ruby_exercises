#!/usr/bin/env ruby
# Programa que lee la nota de 5 alumnos y dice cuántos están aprobados y cuál es la nota media (Sin bucles)
print "Nota del alumno 01: "
nota1 = gets.chomp.to_f
until nota1 >= 0 and nota1 <= 10 do
    print "Valor de nota no válido. Vuelva a intentarlo...\n"
    print "Nota del alumno 01: "
    nota1 = gets.chomp.to_f
end
print "Nota del alumno 02: "
nota2 = gets.chomp.to_f
until nota2 >= 0 and nota2 <= 10 do
    print "Valor de nota no válido. Vuelva a intentarlo...\n"
    print "Nota del alumno 02: "
    nota2 = gets.chomp.to_f
end
print "Nota del alumno 03: "
nota3 = gets.chomp.to_f
until nota3 >= 0 and nota3 <= 10 do
    print "Valor de nota no válido. Vuelva a intentarlo...\n"
    print "Nota del alumno 03: "
    nota3 = gets.chomp.to_f
end
print "Nota del alumno 04: "
nota4 = gets.chomp.to_f
until nota4 >= 0 and nota4 <= 10 do
    print "Valor de nota no válido. Vuelva a intentarlo...\n"
    print "Nota del alumno 04: "
    nota4 = gets.chomp.to_f
end
print "Nota del alumno 05: "
nota5 = gets.chomp.to_f
until nota5 >= 0 and nota5 <= 10 do
    print "Valor de nota no válido. Vuelva a intentarlo...\n"
    print "Nota del alumno 05: "
    nota5 = gets.chomp.to_f
end
aprobados = 0
suspensos = 0
media = ((nota1 + nota2 + nota3 + nota4 + nota5) / 5).round(2)
if nota1 >= 5
    aprobados = (aprobados + 1)
else
    suspensos = (suspensos + 1)
end
if nota2 >= 5
    aprobados = (aprobados + 1)
else
    suspensos = (suspensos + 1)
end
if nota3 >= 5
    aprobados = (aprobados + 1)
else
    suspensos = (suspensos + 1)
end
if nota4 >= 5
    aprobados = (aprobados + 1)
else 
    suspensos = (suspensos + 1)
end
if nota5 >= 5
    aprobados = (aprobados + 1)
else
    suspensos = (suspensos + 1)
end
print "Aprobados: " + aprobados.to_s + "\n"
print "Suspensos: " + suspensos.to_s + "\n"
print "Nota media: " + media.to_s + "\n"
   
