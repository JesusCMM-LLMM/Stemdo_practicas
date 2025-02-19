#!/bin/bash

#Consultar la ip de un dominio 

read -p "Introduce una URL: " dominio

ip=$( dig +short "$dominio")

echo "la ip de $dominio es $ip"
