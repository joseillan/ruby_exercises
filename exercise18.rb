#!/usr/bin/env ruby
# Programa que dada una fecha en formato DÍA/MES/AÑO, dice si la fecha es correcta o incorrecta. Si la fecha es correcta el programa debe escribirla con el formato DÍA de MES de AÑO. (NOTA: Hay que controlar los años bisiestos).
meses = ["enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"]
print "Introduzca una fecha (dd/mm/aaaa): "
fecha = gets.chomp.to_s
# Validamos la entrada: sólo números, extensión y separadores.
until fecha[0,2] =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/ and fecha[3,2] =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/ and fecha[6,4] =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/ and fecha.length == 10 and fecha[2] == "/" and fecha[5] == "/"
    print "Valor '" + fecha + "' incorrecto. Inténtelo de nuevo: \n"
    print "Introduzca una fecha (dd/mm/aaaa): "
    fecha = gets.chomp.to_s
end
# Controlamos el número del més
if fecha[3,2].to_i > 12 or fecha[3,2].to_i < 1
    print "La fecha '" + fecha + "' no es válida. Número de mes incorrecto.\n"
# Controlamos los meses con 31 días
elsif fecha[3,2] == "01" or fecha[3,2] == "03" or fecha[3,2] == "05" or fecha[3,2] == "07" or fecha[3,2] == "08" or fecha[3,2] == "10" or fecha[3,2] == "12" and (fecha[0,2].to_i < 1 or fecha[0,2].to_i > 31)
    print "La fecha '" + fecha + "' no es válida. El més de " + meses[fecha[3,2].to_i - 1] + " no tiene día " + fecha[0,2] + ". \n"
# Controlamos los meses con 30 días.
elsif fecha[3,2] == "04" or fecha[3,2] == "06" or fecha[3,2] ==  "09" or fecha[3,2] == "11" and (fecha[0,2].to_i < 1 or fecha[0,2].to_i > 30)
    print "La fecha '" + fecha + "' no es válida. El més de " + meses[fecha[3,2].to_i - 1] + " no tiene día " + fecha[0,2] + ". \n"
# Controlamos febrero (bisiesto)
elsif (fecha[3,2] == "02") and (fecha[0,2].to_i < 1 or fecha[0,2].to_i > 29) and ((((fecha[6,4].to_i % 4) == 0) and not ((fecha[6,4].to_i % 100) == 0)) or (fecha[6,4].to_i % 400 ) == 0)
        print "La fecha '" + fecha + "' no es válida. El més de " + meses[fecha[3,2].to_i - 1] + " no tiene día " + fecha[0,2] + ". \n"
# Controlamos febrero (NO bisiesto)
elsif (fecha[3,2] == "02") and (fecha[0,2].to_i < 1 or fecha[0,2].to_i > 28) and not ((((fecha[6,4].to_i % 4) == 0) and not ((fecha[6,4].to_i % 100) == 0)) or ((fecha[6,4].to_i % 400 ) == 0)) 
        print "La fecha '" + fecha + "' no es válida. El més de " + meses[fecha[3,2].to_i - 1] + " no tiene día " + fecha[0,2] + ". \n"
else
    puts "La fecha es el " + fecha[0,2] + " de " + meses[fecha[3,2].to_i - 1] + " de " + fecha[6,4] + ".\n"
end
