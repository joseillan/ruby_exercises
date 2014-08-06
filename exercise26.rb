#!/usr/bin/env ruby
# Programa que lee notas de alumnos y dice cuántos están aprobados y cuál es la nota media. El programa dejará de pedir notas cuando se pulse ENTER
print "Introduzca las notas, ENTER para terminar: \n"
alumno = 1
nota = true
aprobados = 0
suspensos = 0
total = 0
while nota == true do
    print "Nota del alumno " + alumno.to_s + ": "
    nota = gets.chomp.to_s
    if nota == ""
        nota = false
    else
        nota = nota.to_f
        until nota >= 0 and nota <= 10 do
            print "La nota debe estar comprendida entre 0 y 10...\n"
            print "Introduzca nuevamente la nota del alumno " + alumno.to_s + ": "
            nota = gets.chomp.to_s
            if nota == ""
                nota = false
            else
                nota = nota.to_f
            end
        end
        if nota >= 5
            aprobados = (aprobados + 1)
        else
            suspensos = (suspensos + 1)
        end
        total = (total + nota)
        alumno = (alumno + 1)
        nota = true
    end
end
media = (total / (alumno - 1)).round(2)
print "Abortando...\n"
print "\n"
print "Número de alumnos: " + (alumno - 1).to_s + "\n"
print "Aprobados: " + aprobados.to_s + "\n"
print "Suspensos: " + suspensos.to_s + "\n"
print "Nota media: " + media.to_s + "\n"
