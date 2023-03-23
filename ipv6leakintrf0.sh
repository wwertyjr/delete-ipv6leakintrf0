#!/bin/bash

# Definir colores
COLOR_CYAN='\033[0;36m'
COLOR_RED='\033[0;31m'
COLOR_NC='\033[0m'

# Mostrar mensaje
echo -e "${COLOR_CYAN}Eliminando ipv6leakintrf0...${COLOR_NC}"

# Ejecutar comando
nmcli device delete ipv6leakintrf0

# Mostrar mensaje de confirmación
echo -e "${COLOR_RED}La interfaz ipv6leakintrf0 ha sido eliminada.${COLOR_NC}"
