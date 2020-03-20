# ! /bin/bash
# Reto 2: Programa para solicitar información
echo -e "\n"
echo "--------------Información Básica--------------"
echo "--Por favor ingrese la siguiente información--"
echo -e

echo "Ingresa su nombre"
read nombre
echo -e "\n"

echo "Ingrese sus apellidos"
read apellido
echo -e "\n"

echo "Ingrese su edad"
read -n2 edad
echo -e "\n"
 
echo "Ingrese dirección de vivienda"
read -n25 direccion
echo -e "\n"

echo "Ingrese su número telefonico"
read -n10 telefono
echo -e "\n"

echo "Bienvenido(a) $nombre $apellido, su edad es $edad, la dirección donde resides es $direccion y el número telefonico donde te podemos contactar es $telefono"
echo -e "\n"
echo "----------------Muchas gracias----------------"




