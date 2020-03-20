# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
#Autor: Wilder David

arregloNumeros=( 1 2 3 4 5 6)
echo "Iterar en la Lista de Números"
for num in ${arregloNumeros[*]}
do
    echo "Numero: $num"
done

echo "Iterar en la lista de cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombre: $nom"
done

echo "Iterar en Archivos"
for file in *
do 
    echo "nombre archivo: $file"
done

echo "Iterar utilizando un comando"
for fil in $(ls)
do
    echo "nombre: $fil"
done

echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "Numero;$i"
done


