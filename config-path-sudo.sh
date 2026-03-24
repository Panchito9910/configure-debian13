#!/bin/bash
# Verificar si es root
if ["$EUID" -ne 0]; then
	echo "This script needs to be executed as root"
	exit 1
fi

# Modificar variable de entorno
echo "\nexport PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin" >> .bashrc
echo "\nexport PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin" >> .profile

# Recargar archivos modificados
source .bashrc
source .profile

# Pedir usuario
read -p "Insert your user name: " username

# Actualizar repositorios
apt update

# Instalar sudo
apt install -y sudo

# Agregar usuario al grupo sudo
usermod -aG sudo "$username"

# Dar permisos en sudoers
echo "$username ALL=(ALL:ALL) ALL" > /etc/sudoers.d/$username
chmod 440 /etc/sudoers.d/$username
