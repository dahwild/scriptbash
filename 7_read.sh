# ! /bin/bash
# Programa para ejemplificar como capturar la informaciòn del usuario utilizando el comando read
# Autor: Wilder David

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una Opción: " option
read -p "Ingresar el Nombre del Archivo del Backup: " backupName
echo "Opción: $option, backupName:$backupName"

