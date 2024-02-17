#!/bin/bash

opciones=("tijeras" "piedra" "papel")
jugar=true

while $jugar; do
    echo "Vamos a jugar a piedra, papel o tijera!"
    echo "Si quieres acabar de jugar escribe 'basta', de lo contrario escribe 'juego'"
    echo -n "¿Quieres jugar?: "
    read input

    if [[ $input == "juego" ]]; then
        echo "¡A jugar!"
        echo "-----------------------"
        echo -n "Elige tijeras, piedra o papel: "
        read mano

        mano_maquina=$(shuf -n 1 -e "${opciones[@]}")

        if [[ "$mano" == "$mano_maquina" ]]; then
            echo "La maquina a sacado $mano_maquina"
	    echo "Empate"
	    echo ""
        elif [[ "$mano" == "tijeras" && "$mano_maquina" == "piedra" ]]; then
            echo "La maquina a sacado $mano_maquina"
            echo "Gana la máquina"
	    echo ""

        elif [[ "$mano" == "piedra" && "$mano_maquina" == "tijeras" ]]; then
            echo "La maquina a sacado $mano_maquina"
            echo "Ganas"
	    echo ""

        elif [[ "$mano" == "papel" && "$mano_maquina" == "tijeras" ]]; then
            echo "La maquina a sacado $mano_maquina"            
	    echo "Gana la máquina"
	    echo ""
        elif [[ "$mano" == "tijeras" && "$mano_maquina" == "papel" ]]; then
            echo "La maquina a sacado $mano_maquina"
	    echo "Ganas"
	    echo ""
        elif [[ "$mano" == "papel" && "$mano_maquina" == "piedra" ]]; then
            echo "La maquina a sacado $mano_maquina"
	    echo "Ganas"
	    echo ""
        elif [[ "$mano" == "piedra" && "$mano_maquina" == "papel" ]]; then
            echo "La maquina a sacado $mano_maquina"
	    echo "Gana la máquina"
	    echo ""
	else
	   echo "No te entendi. "
	   echo ""
        fi

    elif [[ $input == "basta" ]]; then
        echo "Hasta luego Lucas."
        jugar=false
    else
        echo "No te entendí."
	echo ""
    fi
done

