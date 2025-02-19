#! /bin/bash

#Calcular dias hasta 31 de Diciembre
#Cogemos la fecha actual y la del 31 como variables expresadas en segundos

hoy=$(date +%s)
ultimo=$(date -d "2025-12-31" +%s)

#Las restamos y dividimos por 86400, que son los segundos en un día 

dias_restantes=$(( ( $ultimo - $hoy ) / 86400))

echo "Faltan $dias_restantes días para el 31 de diciembre."

