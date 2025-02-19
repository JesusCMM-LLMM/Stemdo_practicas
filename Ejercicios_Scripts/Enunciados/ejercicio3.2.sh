#!/bin/bash

#Calculadora de IMC

read -p "Inserte su peso en kg: " peso
read -p "Inserte su estatura en metros: " altura

#No podemos operar con floats dentro de $((..))
#Así que vamos a pasarlo con una tubería por bc, que es una calculadora de precision arbitraria
#scale=2 nos fija los decimales en dos. 

IMC=$(echo "scale=2; $peso / ($altura * $altura)" | bc)
echo "Su IMC es $IMC"


