su landeira
landeira
sudo fdisk -l
sudo fdisk /dev/sde << EOF
n
p
1

+10M
N
P
2

+1.5G
Wq
EOF
sudo fdisk /dev/sdc << EOF
n
p
1

+700M
Wq
EOF
sudo pvcreate /dev/sde1 /dev/sde2 /dev/sdc1
sudo vgcreate vg_datos /dev/sde1 /dev/sde2
sudo lvcreate -L +1.5G vg_datos -n lv_workareas
sudo lvcreate -L +4M vg_datos -n lv_docker
sudo lvcreate -L 512M vg_temp -n lv_swap

sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
cd /
sudo mkdir work
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/

sudo su
landeira

cat << EOF >> /etc/fstab
UUID=76b64ff1-7693-458d-9a8a-436b7f85da18 none swap sw 0 0
UUID=2e07237f-00f6-4fad-be53-49dbbf71745e /work ext4 defaults 0 0
UUID=a76aedd0-5663-4004-ad7f-603e3b0527d5 /var/lib/docker ext4 defaults 00
EOF
sudo systemctl restart docker

