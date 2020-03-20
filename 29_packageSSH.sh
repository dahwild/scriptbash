# ! /bin/bash
# Programa para ejemplificar la forma de como transferir informaciòn por la red utilizando el comando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia.
#Autor: Wilder David

echo "Empaquetar todos los scripts de la carpeta $PWD y transferirlos por la red a otro equipo"
read -p "Ingrese el host: " host
read -p "Ingrese el usuario: " usuario
echo -e "\nEn este momento se procederá a empaquetar la carpeta y transferirla según los datos ingresados"
rsync -avz $(pwd) $usuario@$host:/Users/dahwild/Downloads
