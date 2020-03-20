# ! /bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: Wilder David

opcion=0
fechaActual=`date +%Y%m%d`

#función para instalar postgres
instalar_postgres () {
    echo -e "\n Verificar Instalación de Postgres ...."
    verifyInstall= $(which psql)
    if [ $? -ew 0 ]; then
        echo -e "\n Postgres ya se encuentra instalado en el equipo"
    else
        read -s -p "Ingresar contraseña de sudo: " password
        read -s -p "Ingresar contraseña a utilizar en postgres: " passwordPostgres
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER  USER postgres WITH PASSWORD '{$passwordPostgres}'; "
        echo "$password" | sudo -S systemctl enable postgresql.service 
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

#Función para desinstalar postgres
desinstalar_postgres () {
    read -s -p "Ingresar contraseña de sudo: " password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgresql
    echo "$password" | sudo -S groupdel postgresql
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

#Función para sacar respaldo postgres
sacar_respaldo () {
    echo "Listar las bases de datos"
    sudo -u postgres psql -c "\l"
    read -p "Elegir la base de datos a Respaldar: " bddRespaldo
    echo -e "\n"
    if [ -d "$1" ]; then
        echo "Establecer permisos directorio"
        echo "$password" | sudo -S chmod 755 $1
        echo "Realizando respaldo..."
        sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bddRespaldo$fechaActual.bak"
        echo "Respaldo realizado correctamente en la ubicación: $1/bddRespaldo$fechaActual.bak "
    else
        echo "El directorio $1 no existe"
    fi
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

#Función para restaurar respaldo postgres
restaurar_respaldo () {
    echo  "Listar respaldos"
    ls -1 $1/*.bak
    read -p "Elegir el respaldo a restaurar" respaldoRestaurar
    echo -e "\n"
    read -p "Ingrese el nombre de la base de datos destino:" bddDestino
    #Verificar si la BDD existe
    verifyBdd=$(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $bddDestino)
    if [ $? -eq 0 ]; then
        echo "Restaurando la bdd destino: $bddDestino"
    else
        sudo -u postgres psql -c "create database $bddDestino"
    fi

    if [ -f "$1/$respaldoRestaurar" ]; then
        echo "restaurando respaldo..."
        sudo -u postgres pd_restore -Fc -d $bddDestino "$directorioBackup/$respaldoRestaurar"
        echo "Listar la base de datos"
        sudo -u postgres psql -c "\l"
    else
        echo "El respaldo $respaldoRestaurar no existe"
    fi
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}


#Asé se declara un while infinito
while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opcione
    echo "_________________________________________"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "_________________________________________"
    echo "              MENÚ PRINCIPAL             "
    echo "_________________________________________"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"

    # Leer los datos de usurario - capturar información
    read -n1 -p "Ingrese una opción [1-5]: " opcion

    # Validar la opcion ingresada
    case $opcion in
        1)
            instalar_postgres
            sleep 3
            ;;
        2) 
            desinstalar_postgres
            sleep 3
            ;;
        3)  
            read -p "Directorio de Backup: " directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3
            ;;
        4)  
            read -p "Directorio de Respaldo: " directorioRespaldos
            restaurar_respaldo $directorioRespaldos            
            sleep 3
            ;;
        5)  echo -e "\nSALIR DEL PROGRAMA"
            exit 0
            ;;
    esac
done



