#!/usr/bin/env ruby
# Conversor de € a pesetas (1€ = 166.386 ptas)
print "Introduce una cantidad en euros: "
euros = gets.chomp
euros2 = euros.to_f
pesetas = euros2 * 166.386
pesetas = pesetas.to_s
puts euros + " euros son " + pesetas + " pesetas."
