# ! /bin/bash
#Script para la creación de un usuario en ubuntu
echo "|--------------------------------Ubuntu-----------------------------------|"
echo "|---------------------------CreacionDeUsuario-----------------------------|"
echo "\n"
echo "Bienvenido este escript le permitirá crear un nuevo usuario"

echo "\n"
echo "\n Escriba el nombre del usuario a crear"
read var1
sudo adduser -m $var1
echo "\n EL usuario creado es $var1"
echo "\n"
echo "|------------------------------Contraseña------------------------------|"
echo "|----------------------AsignarContraseñaAlUsuario----------------------|"
echo "\n"
echo "\n Escriba la contraseña para el usuario $var1"
read $var2
sudo passwd $var2







