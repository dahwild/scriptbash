# ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando GZIP
#Autor: Wilder David

echo "Empaquetar todos los scripts de la carpeta $PWD"
tar -cvf shellCourse.tar *.sh

#Cuando empaquetamos con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo, con ratio 9"
gzip -9 9_options.sh
