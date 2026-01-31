#/bin/bash
salir="n"
while [[ "$salir" =~ ^[Nn]$ ]]; do
	cd
	clear
	pwd
	ls
	echo #
	read -p "Ingrese el nombre del Directorio: " nombredir
	buscard=$(find -type d -name "$nombredir")
	if [ "$nombredir"  = "." ]; then
		echo "Estas trabajando en el directorio Actual. "
		sleep 1
	elif [ "$buscard" = "" ]; then
		echo "El directorio no existe..."
		sleep 4
		continue
	else
		cd "$nombredir"
		echo "El directorio actual es "$nombredir""
		ls
		sleep 1
	fi
	echo #
	read -p "Ingrese el nombre del archivo: " nombre
	buscar=$(find . -name "$nombre")
	if [ "$buscar" = "" ]; then
		echo "El archivo buscado ("$nombre") no existe"
		sleep 4
		continue 
	fi
	cat "$nombre"
	read -p "Desea salir S/N: " salir

done

mostrar(){
	local detall="Ultimo directorio: $1 - Ultimo archivo: $2"
	echo $detall
}
detalle=$(mostrar $nombredir $nombre)
echo "detalles: $detalle"
