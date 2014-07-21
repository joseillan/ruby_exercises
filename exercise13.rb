#!/usr/bin/ruby
# Programa que preguntando el tamaño del depósito, el % de combustible restante y el consume muestre si puedes llegar a la próxima gasolinera situada a 200 Km.
print "Introduce el tamaño del depósito (litros): "
deposito = gets.chomp.to_i
print "Introduce el % de combustible que te queda: "
combustible = gets.chomp.to_i
print "Introduce el consumo (l/100 km): "
consumo = gets.chomp.to_i
distancia = ((deposito * combustible)/100) * consumo
puts "Puedes recorrer " + distancia.to_s + " Km más."
if distancia > 200
    alert = "Puedes esperar."
else
    alert = "¡¡ECHA GASOLINA!!"
end
puts "La próxima gasolinera está a 200 km. " + alert
