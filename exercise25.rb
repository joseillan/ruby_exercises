#!/usr/bin/env ruby
# Programa que imprime las 10 tablas de multiplicar
for num in 1..10 do
    print "TABLA DEL " + num.to_s + "\n"
    for multiplo in 0..10 do
        print num.to_s + " x " + multiplo.to_s + " = " + (num * multiplo).to_s + "\n"
    end
    print "\n"
end
