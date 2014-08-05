#!/usr/bin/env ruby
# Programa que dada la hora en formato hh:mm:ss muestre el siguiente instante.
print "Hora: "
input = gets.chomp
until input =~ /^(?:(?:([01]?\d|2[0-3]):)?([0-5]+\d):)?([0-5]+\d)$/ do
    print "Formato de hora incorrecto (" + input + ")\n"
    print "Inténtelo de nuevo... \n"
    print "Hora: "
    input = gets.chomp
end
time = input.split(":", 3)
hora = time.first.to_i
minutos = time[1].to_i
segundos = time.last.to_i
if segundos < 59 
    segundos = (segundos + 1)
elsif segundos == 59 and minutos < 59
    segundos = "00"
    minutos = (minutos + 1)
elsif segundos == 59 and minutos == 59 and hora < 23
    segundos = "00"
    minutos = "00"
    hora = (hora + 1)
elsif segundos == 59 and minutos == 59 and hora == 23
    segundos = "00"
    minutos = "00"
    hora = "00"
end
print hora.to_s + ":" + minutos.to_s + ":" + segundos.to_s + "\n"
