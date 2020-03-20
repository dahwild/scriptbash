# ! /bin/bash
# Programa para ejemplificar el empaquetamiento con clave utilizando ZIP
#Autor: Wilder David

echo "Empaquetar todos los scripts de la carpeta $PWD con ZIP y asignarle clave de seguridad"
zip -e shellCourse.zip *.sh
