#!/bin/bash

#Ponemos el input para la ruta del fichero
echo -n "Pon la ruta del fichero: "
read input
#Vamos linea por linea del archivo
for linea in $(<"$input"); do
#Eliminamos los comentarios del archivo
echo "${linea%%#*}" >> "arhivosincomentarios.txt" 
done

#Creamos otro input para introducir la palabra of frase a enonctrar
echo -n "Pon una palabra o frase para comprobar si esta en el archivo: "
read input2

existe="no"
#Creamos ahora el if que comprobara si existe en el archivo
for linea2 in $(<"$input"); do
#El *"$variable'* hace que ese contenido de la variable sea
# en cualquier posicion no hace falta que sea en toda la linea 
if [[ "$linea2" == *"$input2"* ]]; then
existe="si"
fi
done
echo "$existe"

#Pedimos que introduzca la frase que se va a añadir al archivo
echo -n "Pon la frase que se va a añadir: "
read input3
echo "$input3" >> "$input"
