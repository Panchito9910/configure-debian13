#!/bin/bash
# Actualizar repositorios
sudo apt update

# Instalar entorno de escritorio y de inicio de sesion
sudo apt install -y gnome-core gdm3 && sudo reboot
