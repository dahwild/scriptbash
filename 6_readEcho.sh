# ! /bin/bash
# Programa para ejemplificar como capturar la informaciòn del usuario utilizando el comando echo, read y $REPLY
# Autor: Wilder David

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una Opción: "
read
option=$REPLY
echo -n "Ingresar el Nombre del Archivo del Backup: "
read
backupName=$REPLY
echo "Opción: $option, backupName:$backupName"

