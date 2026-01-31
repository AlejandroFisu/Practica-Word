#!/bin/bash
clear
seguir="s"
while [[ "$seguir" =~ ^[Ss]$ ]]; do
	clear
	pwd
	ls
	read -p "Ingrese Nombre: " datos[0]
	read -p "Ingrese Apellido: " datos[1]
	read -p "Ingrese su edad: " datos[2]
	for dato in "${datos[@]}"; do
		echo "$dato"
	done 
	archivo=$(find . -name "datos.txt")
	if [ "$archivo" = "" ]; then
		touch datos.txt
	fi
	for dato1 in "${datos[@]}"; do
		echo $dato1 >> datos.txt
	done
	cat datos.txt
	read -p "Seguir s/n: " seguir
	if [[ "$seguir" =~ ^[Ss]$ ]]; then
		continue
	else
		break
	fi
done
