sudo cd .ssh
ls -la
sudo ls -la
sudo cd .ssh
su vagrant
exit
cat ./UTN-FRA_SO_Examenes
sudo cat ./UTN-FRA_SO_Examenes
sudo ls ./UTN-FRA_SO_Examenes
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
sudo ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
su vagrant
exit
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.g
sudo git clone https://github.com/upszot/UTN-FRA_SO_Examenes.g
su vagrant
sudo useradd -m -s /bin/bash pepe
cat /etc/passwd
ll
ls
sudo ls
su vagrant
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
sudo git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
sudo ls
su vagrant
sudo useradd -m -s /bin/bash pepe
sudo su
su vagrant
sudo apt install wget gpg
sudo apt remove wget gpg
sudo apt update
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ansible --version
sudo fdisk -l
sudo fdisk /dev/sde
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk -l
sudo pvcreate /dev/sde1 /dev/sde2 /dev/sdc1
sudo pvs
sudo vgcreate vg_datos /dev/sde1 /dev/sde2
sudo vgs
sudo lvcreate -L +1.5G vg_datos -n lv_workareas
sudo lvs
sudo vgs
sudo fdisk -l
sudo pvmove /dev/sde1
sudo lvremove /dev/mapper/vg_datos-lv_workareas
sudo vgremove vg_datos
vgs
sudo vgs
sudo pvs
sudo lvs
sudo pvremove /dev/sde1 /dev/sde2 /dev/sdc1
sudo pvs
sudo fdisk /dev/sde
sudo pvcreate /dev/sde1 /dev/sde2 /dev/sdc1
sudo fdisk -l
sudo vgcreate vg_datos /dev/sde1 /dev/sde2
sudo vlcreate -L +1.5G vg_datos -n lv_workareas
sudo lvcreate -L +1.5G vg_datos -n lv_workareas
sudo lvcreate -L +5M vg_datos -n lv_docker
vgs
sudo vgs
sudo lvcreate -L +4M vg_datos -n lv_docker
sudo vgcreate vg_temp /dev/sdc1
sudo lvcreate -L 512M vg_temp -n lv_swap
sudo lvs
ls
sudo ls
cd UTNFRA_SO_2do_Parcial_Landeira
sudo cd UTNFRA_SO_2do_Parcial_Landeira
sudo swapon /dev/mapper/vg_temp-lv_swap
swapon -s
sudo lsblk -f
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
cd /
ls
mkdir work
sudo mkdir work
ll
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo lsblk -f
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo lsblk -f
sudo cat << EOF >> /etc/fstab 
UUID=76b64ff1-7693-458d-9a8a-436b7f85da18 none swap sw 0 0
UUID= 2e07237f-00f6-4fad-be53-49dbbf71745e /work ext4 defaults 0 0
sudo cat << EOF >> /etc/fstab 
UUID=76b64ff1-7693-458d-9a8a-436b7f85da18 none swap sw 0 0
UUID=2e07237f-00f6-4fad-be53-49dbbf71745e /work ext4 defaults 0 0

sudo cat << EOF >> /etc/fstab 
UUID=76b64ff1-7693-458d-9a8a-436b7f85da18 none swap sw 0 0
UUID= 2e07237f-00f6-4fad-be53-49dbbf71745e /work ext4 defaults 0 0
sudo cat << EOF >> /etc/fstab 
UUID=76b64ff1-7693-458d-9a8a-436b7f85da18 none swap sw 0 0
UUID=2e07237f-00f6-4fad-be53-49dbbf71745e /work ext4 defaults 0 0


UUID=a76aedd0-5663-4004-ad7f-603e3b0527d5 /var/lib/docker ext4 defaults 0 0
EOF

vim /etc/fstab 
cat /etc/fstab 
vim /etc/fstab 
cat << EOF >> /etc/fstab 
UUID=76b64ff1-7693-458d-9a8a-436b7f85da18 none swap sw 0 0
UUID= 2e07237f-00f6-4fad-be53-49dbbf71745e /work ext4 defaults 0 0
EOF

sudo cat << EOF >> /etc/fstab 
UUID=76b64ff1-7693-458d-9a8a-436b7f85da18 none swap sw 0 0
UUID=2e07237f-00f6-4fad-be53-49dbbf71745e /work ext4 defaults 0 0
UUID=a76aedd0-5663-4004-ad7f-603e3b0527d5 /var/lib/docker ext4 defaults 0 0
EOF

sudo su
su vagrant
su vagrant
sudo ls docker/
su vagrant
cd /usr/local/bin/
sudo mkdir Landeira_AltaUser-Groups.sh
ll
sudo vim Landeira_AltaUser-Groups.sh/
sudo rm -r Landeira_AltaUser-Groups.sh/
sudo vim Landeira_AltaUser-Groups.sh
ll
ls
sudo vim Landeira_AltaUser-Groups.sh
ll
sudo vim Landeira_AltaUser-Groups.sh
cd
ll
pwd
sudo pvs
git clone git@github.com:AgustinLandeira/UTNFRA_SO_1P2C_2024_-Landeira-.git
cd /home/vagrant/
ls /home/vagrant/
sudo ls /home/vagrant/
sudo cd /home/vagrant/
sudo pvs
pwd
cd
sudo pvs
ll
sudo ls
cd UTN-F
cd UTN-FRA_SO_Examenes
pwd
sudo lsblk -f
ssh-keygen
cd
ssh-keygen
ll
cd .ssh/
ll
cat id_rsa.pub 
cd
git clone git@github.com:AgustinLandeira/UTNFRA_SO_2do_Parcial_Landeira.git
ll
cd UTNFRA_SO_2do_Parcial_Landeira/
ll
cd RTA_Examen_20241110/
sudo vim Punto_A.sh 
cd
sudo lsblk -f
cd /work/
ll
sudo pvs
sudo fdisk -l
cd
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ll
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
cd UTNFRA_SO_2do_Parcial_Landeira/
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
cd ..
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source  ~/.bashrc
ll
cd /usr/local/bin/
sudo vim Landeira_AltaUser-Groups.sh 
sudo rm -r /home/landeira/RTA_Examen_20241112/
ll
./Landeira_AltaUser-Groups.sh landeira /home/landeira/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo ./Landeira_AltaUser-Groups.sh landeira /home/landeira/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo vim ./Landeira_AltaUser-Groups.sh landeira /home/landeira/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo ./Landeira_AltaUser-Groups.sh landeira /home/landeira/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
./Landeira_AltaUser-Groups.sh landeira /home/landeira/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo chmod 733 Landeira_AltaUser-Groups.sh 
./Landeira_AltaUser-Groups.sh landeira /home/landeira/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo ./Landeira_AltaUser-Groups.sh landeira /home/landeira/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat /home/landeira/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo cat /etc/passwd
sudo vim Landeira_AltaUser-Groups.sh 
sudo ./Landeira_AltaUser-Groups.sh landeira /home/landeira/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo cat /etc/passwd
userdel 2P_202406_Prog1
sudo userdel 2P_202406_Prog1
sudo userdel 2P_202406_Prog2
sudo userdel 2P_202406_Test1
sudo groupdel 2P_GDesa
sudo groupdel 2P_GTest
cd /work/
ll
cd ..
cd cd work/
cd work/
ls
cd /usr/local/bin/
sudo vim Landeira_AltaUser-Groups.sh 
sudo ./Landeira_AltaUser-Groups.sh landeira /home/landeira/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
su 2P_202406_Prog1
cd
ll
cd UTNFRA_SO_2do_Parcial_Landeira/
cd RTA_Examen_20241110/
ll
sudo vim Punto_B.sh 
git status
git add .
git commit -m "feat:completando el punto b"
git config --global user.email "landeira2017@gmail.com"
git commit -m "feat:completando el punto b"
git config --global user.email "landeira2017@gmail.com"
git config --global user.name "agus2023"
git commit -m "feat:completando el punto b"
git push origin main
cd ..
ll
cd UTN-FRA_SO_Examenes/
ll
cd 202406
ll
cd docker/
ll
cat index.html 
vim index.html 
cat index.html 
cd ..
ll
cd docker/
ll
sudo cat /etc/group
docker ps
sudo usermod -a -G docker landeira
sudo cat /etc/group
docker ps
cd UTN-FRA_SO_Examenes/202406/docker/
docker ps
sudo apt net-tools
sudo apt install net-tools
ll
docker run -d -p 81:80 nginx
docker login -u agus200420
ll
cd ..
ls
cd _checks/
ll
cat check_A.sh 
cd ..
ll
sudo mkdir dockerfile
ll
sudo rm -r dockerfile/
sudo vim dockerfile
ll
touch dockerfile
vim dockerfile 
cat dockerfile 
ll
cd docker/
ll
cd ..
docker build -t agus200420/web1-landeira:latest .
cd
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fidks -l
sudo fdisk -l
sudo pvcreate /dev/sdc2
sudo vgextend vg_datos /dev/sdc2
sudo vgs
sudo lvs
sudo lvextend -L +320M /dev/mapper/vg_datos-lv_docker
cd UTN-FRA_SO_Examenes/
ll
cd 202406/
ll
docker build -t agus200420/web1-landeira:latest .
sudo du -sh /var/lib/docker
sudo /var/lib/docker/
cd /var/lib/docker/
cd /var/lib/
ls docker/
sudo ls docker/
sudo systemctl restart docker
cd
cd /UTN-FRA_SO_Examenes/202406
cd UTN-FRA_SO_Examenes/202406
ll
docker build -t agus200420/web1-landeira:latest .
df -h /var/lib/docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
df -h /var/lib/docker
docker build -t agus200420/web1-landeira:latest .
docker image ls
sudo fdisk /dev/sde
sudo pvcreate /dev/sde3
sudo vgextend vg_datos /dev/sde3
sudo pvs
sudo fdisk -l
sudo lvextend -L +300M /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
df -h /var/lib/docker
docker build -t agus200420/web1-landeira:latest .
df -h /
df -h /tmp
sudo systemctl restart docker
docker build -t agus200420/web1-landeira:latest .
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
df -h /var/lib/docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
df -h /var/lib/docker
docker build -t agus200420/web1-landeira:latest .
docker image list
docker push agus200420/web1-landeira:latest
docker run -d -p 8080:80 agus200420/web1-landeira
docker ps
sudo vim run.sh
ll
sudo ./run.sh
sudo vim run.sh
sudo ./run.sh
ll
cat run.sh 
./run.sh
sudo ./run.sh
sudo chmod 755 run.sh 
sudo ./run.sh 
sudo pvs
docker pv
docker ps
docker stop da14c786244c
docker ps
sudo ./run.sh 
docker stop da14c786244c
docker ps
docker stop 88bc816e1f74
docker ps
sudo ./run.sh 
docker ps
docker stop 3ba4caeb9aa7
cd
ll
cd UTNFRA_SO_2do_Parcial_Landeira/
cd RTA_Examen_20241110/
vim Punto_C.sh 
git status
git add .
git commit -m "feat:completando punto c"
git push origin main
vim Punto_C.sh 
git status
git add .
ll
cat /home/landeira/UTN-FRA_SO_Examenes/202406/dockerfile 
vim Punto_C.sh 
git status
git add .
git commit -m "feat:completando punto c "
git push origin main
vim Punto_C.sh 
git status
git add .
git commit -m "feat:completando punto c "
git push origin main
vim Punto_C.sh 
git push origin main
vim Punto_C.sh 
git status
git add .
git commit -m "feat:completando punto c "
git push origin main
vim Punto_C.sh 
git filter-repo --path Punto_C.sh --replace-text <(echo "Punto_C.sh==>FILTERED")
git log
git reset --hard 3fc613d3e153628007f0e84bed5b1d3ff6f9b833
git log
git status
ll
vim Punto_C.sh 
git status
git add .
git commit -m "feat:completando el Punto_c"
git push origin main
exit
sudo su - landeira
su vagrant
su vagrant
cd
cd UTN-FRA_SO_Examenes/
cd 202406
ll
docker pvs
docker ps
sudo ./run.sh 
docker ps
docker stop
docker stop a9517f102a63
docker ps
cd ansible/
ll
mkdir -p temp/{2do_parcial{lumno,equipo}}
ll
ls temp/
sudo rm -r temp/
mkdir -p temp/{2do_parcial/{lumno,equipo}}
ls temp/
sudo rm -r temp/
mkdir -p temp/{2do_parcial/alumno,equipo}
ls temp/
sudo rm -r temp/
mkdir -p temp/2do_parcial/{equipo,alumno}
ls temp/
ls temp/2do_parcial/
sudo rm -r temp/
ll
cd roles/
ls
cd 2do_parcial/
ll
cd ..
ll
cd ..
ll
cat playbook.yml 
cat inventory/
ls inventory/
cat inventory/host
cat inventory/hosts
cat inventory/host_vars/
ls roles/
ls roles/2do_parcial/
cat roles/2do_parcial/tasks/main.yml 
ls roles/2do_parcial/tests/
cat roles/2do_parcial/tests/test.yml 
cd roles/
cd tes
ll
cd 2do_parcial/
ll
cd tests/
cat inventory 
vim inventory 
cd ..
cd tasks/
vim main.yml 
cd ../../../
ansible-playbook -i roles/2do_parcial/tests/inventory roles/2do_parcial/tasks/main.yml 
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i roles/2do_parcial/tests/inventory roles/2do_parcial/tasks/main.yml 
vim roles/2do_parcial/tests/inventory 
ansible-playbook -i roles/2do_parcial/tests/inventory roles/2do_parcial/tasks/main.yml 
cd roles/
ll
cd 2do_parcial/tests/
ll
vim test.yml 
docker ps
cd ../../../
ansible-playbook roles/2do_parcial/tests/inventory roles/2do_parcial/tests/test.yml
vim /roles/2do_parcial/tests/inventory
sudo vim /roles/2do_parcial/tests/inventory
sudo chmod 755 /roles/2do_parcial/tests/inventory
cd /roles/2do_parcial/tests/
sudo vim roles/2do_parcial/tests/inventory
ansible-playbook roles/2do_parcial/tests/inventory roles/2do_parcial/tests/test.yml
sudo vim roles/2do_parcial/tests/inventory
ansible-playbook roles/2do_parcial/tests/inventory roles/2do_parcial/tests/test.yml
ll
cd inventory/
ll
vim hosts
sudo vim roles/2do_parcial/tests/inventory
cd ../../
cd ansible/
sudo vim roles/2do_parcial/tests/inventory
cat inventory/hosts
ansible-playbook inventory/hosts roles/2do_parcial/tests/test.yml
ansible all -i /home/landeira/UTN-FRA_SO_Examenes/202406/ansible/inventory/hosts -m ping
cat playbook.yml 
vim roles/2do_parcial/tests/test.yml 
vim roles/2do_parcial/tests/inventory 
vim playbook.yml 
cat roles/2do_parcial/tasks/main.yml
ansible-playbook playbook.yml roles/2do_parcial/tests/test.yml
ansible-playbook inventory/hosts playbook.yml
cat playbook.yml 
vim inventory/hosts
ansible-playbook -i inventory/hosts playbook.yml
vim roles/2do_parcial/tests/test.yml 
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
ll
vim roles/2do_parcial/tasks/main.yml 
ll
cd roles/2do_parcial/
ll
mkdir templates
ll
cd templates/
mkdir datos_alumno.txt.j2
mkdir datos_equipo.txt.j2
ll
vim datos_alumno.txt.j2/
sudo rm -r datos_alumno.txt.j2/
sudo rm -r datos_equipo.txt.j2/
ll
vim datos_alumno.txt.j2
vim datos_equipo.txt.j2
ll
cd ../../../
vim roles/2do_parcial/tasks/main.yml 
sudo mkdir -r /tmp/
sudo mkdir -r /tmp
sudo rm -r /tmp/
ansible-playbook -i inventory/hosts playbook.yml
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
ls /
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
cat playbook.yml 
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
ll
ll /
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
sudo visudo
ansible-playbook -i inventory/hosts playbook.yml
sudo rm -r /tmp/
ansible-playbook -i inventory/hosts playbook.yml
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
sudo rm -r /tmp/
vim roles/2do_parcial/templates/datos_alumno.txt.j2 
cd roles/2do_parcial/vars/
ll
cat main.yml 
vim main.yml 
ansible-playbook -i inventory/hosts playbook.yml
cd ../../../
ansible-playbook -i inventory/hosts playbook.yml
cat /tmp/2do_parcial/equipo/datos_equipo.txt 
cat /tmp/2do_parcial/alumno/datos_alumno.txt 
sudo rm -r /tmp/
vim roles/2do_parcial/tasks/main.yml 
sudo cat /etc/passwd
cat ../bash_script/Lista_Usuarios.txt 
sudo visudo
ansible-playbook -i inventory/hosts playbook.yml
sudo visudo
su 2P_202406_Supervisor
sudo lsblk -f
cd
ll
cd UTNFRA_SO_2do_Parcial_Landeira/
ll
cd RTA_Examen_20241110/
ll
vim Punto_D.sh 
git status
git add .
git commit -m "feat:completando Punto_D"
git push origin main
cd ../../
pwd
ll
cd UTN-FRA_SO_Examenes/
ll
cd ..
mv UTN-FRA_SO_Examenes/202406/ UTNFRA_SO_2do_Parcial_Landeira/
ls UTNFRA_SO_2do_Parcial_Landeira/
cd UTNFRA_SO_2do_Parcial_Landeira/
cd 202406/
ll
cat ansible/roles/2do_parcial/tasks/main.yml 
cd
cd /home/
ll
cd
history -a
cd /home/
ll
cd
ll
ls UTNFRA_SO_2do_Parcial_Landeira/
ll UTNFRA_SO_2do_Parcial_Landeira/
