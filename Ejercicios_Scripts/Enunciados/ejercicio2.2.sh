#! /bin/bash

#!/bin/bash

# 1. Mostrar valores alineados en columnas
# Con el formato %-10s le decimos que el texto se alinea a la izquierda
# con un campo de 10 caracteres; si hay menos, se rellenará con espacios por la derecha.
#Si hay más, se ajusta a la cadena introducida y empujaría a la adyacente
# Como hay tres columnas, lo repetimos tres veces.
# \n sirve para indicar saltos de línea

echo "Valores alineados en columnas:"
printf "%-10s %-10s %-10s\n" "Nombre" "Edad" "Ciudad"
printf "%-10s %-10d %-10s\n" "Vicky" 23 "Huelva"
printf "%-10s %-10d %-10s\n" "Jose" 53 "Punta Umbria"
printf "%-10s %-10d %-10s\n" "Dani" 18 "Huelva"
printf "%-10s %-10d %-10s\n" "Jesus" 34 "Valencia"
echo  "" #Este echo está solo para crear un poco de espacio

# 2. Formatear números con decimales
# El . indica la precision, el numero (2 y 4 en este caso) el num de decimales
# y f que se trata de un número de punto flotante.

echo "Números formateados con decimales:"
num1=5.8897665
num2=248.8755787567567
printf "Valor del primer número: %.2f\n" "$num1"
printf "Valor del segundo número: %.4f\n" "$num2"
echo ""

# 3. Agregar caracteres especiales a la salida
#\t es el caracter de escape que indica tabulacion
#\" es lo mismo, pero para las comillas

echo "Mensajes con caracteres especiales:"
printf "Texto en una línea.\n"
printf "Texto con tabulación:\tEsto está tabulado.\n"
printf "Texto con comillas: \"Texto entre comillas\"\n"
