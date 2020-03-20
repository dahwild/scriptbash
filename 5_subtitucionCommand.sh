# ! /bin/bash
# Programa para revisar como ejecutar comandos dentro de un programa y almacenarlos en una variable, para su posterior utilización
# Autor: Wilder David

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo -e "\nLa ubicación actual es la siguiente: $ubicacionActual"
echo -e "\nInformación del Kernel: $infoKernel"
echo -e "\nel contenido de la carpeta es: `ls -la`"
