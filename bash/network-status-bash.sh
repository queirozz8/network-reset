#!/bin/bash

while true; do
    echo "Verificando status da rede... (pressione Ctrl + C para parar)"
    sleep 1.5  # Espera 2 segundos antes de verificar o status
    nmcli device status
done
