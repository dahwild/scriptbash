# ! /bin/bash
# Programa para ejemplificar el uso de Break and Continue
#Autor: Wilder David

echo "Sentencias break y Continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fil = "10_download.sh" ]; then
            break;
        elif [[ $fil == 4* ]]; then
            continue;
        else
            echo "Nombre archivo:$fil _ $nombre"
        fi
    done
done
