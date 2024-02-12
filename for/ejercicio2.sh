#!/bin/bash
echo -n "Introduzca la cena de numeros: "
read numeros
cantidad=0
#Vamos numero por numero utilizando el for con el grep -o
# el grep -o se utiliza para buscar la letra o caracter especifico o utilizando el . se puede buscar cualquier caracter
#Despues vamos a hacer el if para vr cual es 0 y si es 0 se sumara
for numero in $(echo "$numeros" | grep -o .); do
	if [ "$numero" == "0" ]; then
		cantidad=$((cantidad + 1))
	fi
done
echo "$cantidad"
