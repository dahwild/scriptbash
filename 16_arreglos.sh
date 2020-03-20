# ! /bin/bash
# Programa para ejemplificar el uso de arreglos
#Autor: Wilder David

arregloNumeros=( 1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRangos=({A..Z} {10..20})

# Imprimir todos los valores
echo "Arreglo de números: ${arregloNumeros[*]}"
echo "Arreglo de cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rangos: ${arregloRangos[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño Arreglo de Números: ${#arregloNumeros[*]}"
echo "Tamaño Areglo de cadenas: ${#arregloCadenas[*]}"
echo "Tamaño Areglo de Rangos: ${#arregloRangos[*]}"

#Imprimir la posición 3 del arreglo de número, cadenas y rango
echo "Posición 3 Arreglo de números: ${arregloNumeros[3]}"
echo "Posición 3 Arreglo de cadenas: ${arregloCadenas[3]}"
echo "posición 3 Arreglo de Rangos: ${arregloRangos[3]}"

#Añadir y Eliminar valores en un arreglo
arregloNumeros[7]=20
#Unset sirve para eliminar datos de la posición cero según el ejemplo
unset arregloNumeros[0]
echo "Arreglo de Numeros: ${arregloNumeros[*]}"
echo "Tamaño arreglo de Números: ${#arregloNumeros[*]}"
