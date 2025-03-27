#!/usr/bin/env zsh

while true; do
    echo "Reiniciando a rede..."
    sudo systemctl restart NetworkManager
    echo "Verificando status da rede... (1)"
    sleep 2  # Espera 2 segundos antes de verificar o status
    nmcli device status
    echo "Verificando o status da rede... (2)"
    sleep 5  # Espera 5 segundos antes de verificar o status definitivamente
    nmcli device status
    echo "Pressione Ctrl + C para interromper se a rede estiver OK."
    sleep 2  # Espera mais 2 segundo antes de repetir
done
