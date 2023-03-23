#!/bin/bash

clear

sleep 1

echo -e "\e[31m
██ ██████  ██    ██  ██████  ██      ███████  █████  ██   ██ 
██ ██   ██ ██    ██ ██       ██      ██      ██   ██ ██  ██  
██ ██████  ██    ██ ███████  ██      █████   ███████ █████   
██ ██       ██  ██  ██    ██ ██      ██      ██   ██ ██  ██  
██ ██        ████    ██████  ███████ ███████ ██   ██ ██   ██ 
\e[33m
"

sleep 1
echo """By connecting to the internet with PIA VPN, you get IPv6 leak protection. 
PIA VPN will disable IPv6 traffic to ensure that no IPv6 internet data leaks out from your regular internet connection while connected to the VPN."""
sleep 1
echo """This script delete this problem

"""
echo """[1] Start
[2] Exit"""
read num

if [ $num -eq 1 ]
then
    clear
    echo "[!] Starting..."
    nmcli device delete ipv6leakintrf0
    sudo nmcli connection delete pvpn-ipv6leak-protection
    echo -e "\e[32m[!] Done!\e[0m"


elif [ $num -eq 2 ]
then
    echo "[!] Exiting..."
    exit
else
    echo -e "\e[31m[!] Invalid option!\e[0m"
fi
