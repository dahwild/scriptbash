# ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando TAR
#Autor: Wilder David

echo "Empaquetar todos los scripts de la carpeta $PWD"
tar -cvf shellCourse.tar *.sh
