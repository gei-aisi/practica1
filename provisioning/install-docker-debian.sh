#!/bin/bash

# Paso 1: instalación de otros paquetes necesarios
sudo apt-get update
sudo apt-get install -y lynx gnupg lsb-release

# Paso 2: Descargar la clave de Docker y añadir 
# el repositorio a las fuentes de APT


# Paso 3: instalación de los paquetes de Docker


# Paso 4: creación del grupo docker


# Paso 5: añadir el usuario actual (vagrant) al
# grupo docker


# Paso 6: desactivamos IPv6 para evitar problemas con Docker Swarm
echo "net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1" | sudo tee /etc/sysctl.d/99-disable-ipv6.conf
