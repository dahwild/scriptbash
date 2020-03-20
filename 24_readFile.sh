# ! /bin/bash
# Programa para ejemplificar como se lee en un archivo
#Autor: Wilder David

echo "leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

#Se utiliza la variable especial IFS (Internal File Separator) para evitar que los espacios en blanco se recorten al inicio al final.
echo -e "\nLeer archivos lìnea por lìnea while"
while IFS= read linea
do
    echo "$linea"
done < $1

