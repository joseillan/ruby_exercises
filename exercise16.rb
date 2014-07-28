#!/usr/bin/env ruby
# Calculador de salarios.
# Los empleados de una fábrica trabajan en dos turnos: diurno y nocturno. Escribir un programa que calcule el sueldo bruto mensual en euros a partir de los siguientes datos:
# - Días trabajados.
# - Días festivos trabajados.
# - Turno: mañana, tarde, noche.
# ... con las siguientes restricciones:
# - Un día tiene 8 horas laborales.
# - Las horas de un día normal se pagan a 12 €, las horas de un día festivo se pagan a 24€.
# - Un trabajador en un mes, sólo puede trabajar en un turno y 8 horas al día.
# - Los meses son de 30 días.
# - El turno de noche se paga un 20% más que los turnos de mañana y tarde.
print "Días no festivos trabajados: "
dias = gets.chomp.to_i
print "Días festivos trabajados: "
festivos = gets.chomp.to_i
until (dias + festivos) <= 30 do
    print "ERROR: Un trabajador no puede trabajar más de 30 días al mes. \n"
    print "Días no festivos trabajados: "
    dias = gets.chomp.to_i
    print "Días festivos trabajados: "
    festivos = gets.chomp.to_i
end
print "Turno (M-mañana, T-tarde, N-noche): "
turno = gets.chomp.to_s
until turno == "M" or turno == "T" or turno == "N" do
    print "ERROR: valor de turno inválido. Vuelva a intentarlo: "
    turno = gets.chomp.to_s
end    
salarionor = dias * 12 * 8
salariofes = festivos * 24 * 8
salarionoc = (salarionor + salariofes) + ((salarionor + salariofes) * 0.2)
if turno == "N"
    sueldo = salarionoc
else
    sueldo = salarionor + salariofes
end
puts "Sueldo: " + sueldo.to_s + " euros."
