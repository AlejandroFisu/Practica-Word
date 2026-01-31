clear
seguir="S"
datos=()
i=0
while [[ "$seguir" =~ ^[Ss]$ ]]; do
	read -p "Nombre: " nombre
	datos[$i]=$nombre
	i+=1       
	read -p "Edad: " edad
	datos[$i]=$edad
	i+=1
	#datos=($nombre $edad)
	#echo "nom: "${datos[0]}""
	read -p "Seguir s/n: " seguir
	if ! [[ "$seguir" =~ ^[Ss]$ ]]; then
		for dato in "${datos[@]}"; do
			echo "Matriz datos "$dato""
			echo "$dato" >> matriz.txt
		done
	fi
done
