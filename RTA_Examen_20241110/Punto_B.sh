Su landeira
landeira
cd /usr/local/bin/
sudo vim Landeira_AltaUser-Groups.sh
i #para editar el archivo

# lo que escribi adentro del archivo
#!/bin/bash

sudo groupadd R2P_202311_GDesa
sudo groupadd R2P_202311_GTest

lista=$1
usuario=$2

ANT_IFS=$IFS
IFS=$'\n'
for i in `cat $lista | awk -F ',' '{print $1" "$2" "$3}' | grep -v ^#`
do

        contra=$(grep "^$usuario:" /etc/shadow | awk -F ':' '{print$2}')
        usuarioRecibido=$(echo $i | awk '{print$1}')
        grupo=$(echo $i | awk '{print$2}')
        home=$(echo $i | awk '{print$3}')
        sudo useradd -d $home -g $grupo -p $contra $usuarioRecibido
done
IFS=$ANT_IFS

:wq #guardo y salgo
sudo chmod 733 Landeira_AltaUser-Groups.sh #cambio los permisos para poder ejecutar el archivo
sudo ./Landeira_AltaUser-Groups.sh landeira /home/landeira/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt

