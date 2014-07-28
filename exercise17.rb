#!/usr/bin/env ruby
#Una tienda que vende ropa está de rebajas. La tienda ofrece un 10% de descuento para compras por un importe por debajo de los 20€. Para compras de 20€ en adelante el descuento esdel 20%. Escribe un programa que dada la cantidad total de la compra aplique el descuento correctamente y muestra la cantidad final.
print "Importe total: "
importe = gets.chomp.to_i
if importe <= 20
    descuento = (importe * 0.1).round(2)
    puts "Descuento: " + descuento.to_s + " € (10%)."
else
    descuento = (importe * 0.2).round(2)
    puts "Descuento: " + descuento.to_s + " € (20%)."
end
final = importe - descuento
puts "Importe tras descuento: " + final.to_s + " €."

