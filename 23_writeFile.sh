# ! /bin/bash
# Programa para ejemplificar como se escribe en un archivo
#Autor: Wilder David

echo "Escribir en un Archivo"

echo "Guardar informaciòn utilizando echo" >> $1

#adición multilinea
cat <<EOM>>$1
$2
EOM
