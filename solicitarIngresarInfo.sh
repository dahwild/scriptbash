# !/bin/bash
# Programa para ejemplificar el uso de la sentencia CASE
# Autor: Wilder David

opcion=""

echo "--------------Ejemplo sentencia CASE-------------"
echo "Que operación desea realizar:"
echo "1. Verificar Nota"
echo "2. Validar pais"
echo "3. Ubicación Actual"
echo "4. Saber si una aplicación está instalada"
echo "5. Validar si un fichero existe"

read -n1 -p "Ingrese un número del 1 - 5 según la operación que desee realizar " opcion
echo -e "\n"

case $opcion in 
    "1") 
    read -p "ingrese la nota del examen 1 - 9: " nota
    if (( $nota < 5 )); then
        echo "El estudiante perdió el examen ";
    elif (( $nota >= 5 )) && (( $nota <= 8 )); then
        echo "La persona tuvo SOBRESALIENTE ";
    else
        echo "La persona sacó una nota EXCELENTE";
    fi;;      
    
    "2") 
    read -p "ingrese el pais de la persona Colombia, Japon, China, :" pais
    if  [ $pais = "Colombia" ]; then
        echo "La persona pertenece a Sur America"
    elif [ $pais = "Japon" ] || [ $pais = "China" ]; then
        echo "La Persona es ASIATICA"
    else 
        echo "La persona puede ser de NORTE Americana, Africana, entre otras..."
    fi;;
    
    "3") 
    echo -e "\nEsta es la ruta donde se encuentra actualmente: "
    pwd
    echo -e "\n";;
    "4")
    read -p "ingrese el nombre de la aplicación: " aplicacion
    dpkg -s $aplicacion
    echo -e "\n";;
    
    "5")
    read -p "ingrese el nombre del fichero: " filePath
    if [-d $filePath ]; then
        echo "el fichero existe"
    else
        echo "el fichero no existe"
    fi;;
    "*") echo "opción Incorreta"
esac
