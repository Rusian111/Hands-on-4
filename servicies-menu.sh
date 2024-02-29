#!/bin/bash

listar_contenido(){
	read -p "Introduce la ruta absoluta al fichero o carpeta:" ruta
	ls -la "$ruta"
}

crear_archivo(){
	read -p "Introduce la linea de texto a almacenar en el archivo:" texto
	echo "$texto" > archivo.txt
	echo "Archivo creado con exito."
}

comparar_archivos(){
read -p "introduce la ruta al primer archivo:" archivo1
read -p "introduce la ruta al segundo archivo:" archivo2

diff "$archivo1" "$archivo2"
}

uso_awk(){
echo "Ejemplo de uso de awk"
echo "Imprimir la segunda coulma de  un archivo CSV:"
awk -F ',' '{print $2}' ejemplo.csv
}

uso_grep(){
echo "Ejemlo de uso de grep:"
echo "Buscar la palabra 'Mundo' en un archivo de texto:"
grep "Mundo" archivo.txt
}

while true; do
	echo "1. Listar el contenido de un fichero(carpeta)"
	echo "2. Crear un archivo de texto con una linea de texto"
	echo "3. Comparar dos archivos de texto"
	echo "4. Mostrar el uso de awk"
	echo "5. Mostrar el uso de grep"
	echo "6. Salir"
	read -p "Elige una opcion:" opcion

	case $opcion in
	1)
	 listar_contenido
	 ;;
	2)
	 crear_archivo
	 ;;
	3)
	 comparar_archivos
	 ;;
	4)
	 uso_awk
	 ;;
	5)
	 uso_grep
	 ;;
	6)
	 echo "Salida del script."
	 exit 0
	 ;;
	*)
	 echo "Opcion no valida. Intentalo de nuevo"
	 ;;
  esac

done
