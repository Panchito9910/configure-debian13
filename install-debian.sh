#!/bin/bash
# Actualizar repositorios
sudo apt update

# Instalar entorno de escritorio y de inicio de sesion
sudo apt install -y gnome-core gdm3

# Instar brave browser
sudo apt install -y curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources

sudo apt update

sudo apt install -y brave-browser

# Eliminar firefox
sudo apt remove -y firefox-esr

# Descargar steam
curl -o /home/fran/Descargas/steam.deb https://cdn.fastly.steamstatic.com/client/installer/steam.deb

# Reiniciar SO
sudo reboot
