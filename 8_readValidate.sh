# ! /bin/bash
# Programa para ejemplificar como capturar la informaciòn del usuario y validarla
# Autor: Wilder David

option=0
backupName=""
clave=""


echo "Programa Utilidades Postgres"
#Acepta el ingreso de información de solo un caracter
read -n1 -p "Ingresar una Opción: " option
echo -e "\n"
read -n10 -p "Ingresar el Nombre del Archivo del Backup: " backupName
echo -e "\n"
echo "Opción: $option, backupName:$backupName"
read -s -p "Clave:" clave
echo "clave: $clave"
