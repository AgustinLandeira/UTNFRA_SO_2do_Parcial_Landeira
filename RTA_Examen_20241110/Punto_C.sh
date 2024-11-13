sudo usermod -a -G docker landeira
sudo su – landeira
docker login -u <nombrel de usuario>
#aca iria la clave(no la pongo porque violo las reglas de seguridad de github)
touch dockerfile
#en docker file pongo 
sudo fdisk /dev/sdc << EOF
n
p
2

+380M
T
2
8e
Wq
EOF
sudo fdisk /dev/sde << EOF
p
n
3


T
3
8e
Wq
EOF
#genero el volumen fisico
sudo pvcreate /dev/sdc2
#agrego espacio al grupo de volumenes ya creado
sudo vgextend vg_datos /dev/sdc2
# le agrego espacio al volumen logico
sudo lvextend -L +320M /dev/mapper/vg_datos-lv_docker
#para que me reconozca el nuevo espacio
sudo resize2fs /dev/mapper/vg_datos-lv_docker
#mismo proceso
sudo pvcreate /dev/sde3
sudo vgextend vg_datos /dev/sde3
sudo lvextend -L +300M /dev/mapper/vg_datos-lv_docker
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
#creo la foto
docker build -t agus200420/web1-landeira:latest .
#subo la foto a la pagina de docker
idocker push agus200420/web1-landeira:latest
#corro la foto
docker run -d -p 8080:80 agus200420/web1-landeira
sudo vim run.sh #contiene esto: docker run -d -p 8080:80 agus200420/web1-landeira
sudo chmod 755 run.sh

