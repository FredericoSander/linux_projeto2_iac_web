#!/bin/bash

echo "Atualização do sistema do servidor"

apt-get update
apt-get upgrade -y

echo "Instalando o Apache2 e unzip"

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main

cd linux-site-dio-main

cp -R * /var/www/html/

echo "Fim..."
