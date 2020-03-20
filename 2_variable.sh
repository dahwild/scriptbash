# !/bin/bash
# programa para revisar la declaraciòn de variables

opcion=0
nombre=Marco

echo "Opción: $opcion y Nombre: $nombre"

#Exportar la variable nombre para que estè disponble a los demás procesos
export nombre

#llamar al siguiente script para recuperar la variable
./2_variable_2.sh
