#!/bin/bash

#Baixa os pacotes de atuaização e a executa.
echo "Atualizano o servidor"
apt-get update && apt-get upgrade -y

#Instala o apache 2
echo "Instalando o Apache"
apt-get install apache2 -y

#Instala o Unzip
echo "Instalando o Unzip"
apt-get install unzip -y

#Baixa os arquivos para a pasta Temp
echo "Baixando Aplicação"
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#Descompacta a aplicação baixada
echo "Descompactando arquivos"
unzip /tmp/main.zip -d /tmp

#Copia o arquivo baixado para a pasta padrão do Apache
echo "Copiando aplicação para a pasta padrão do Apache"
cp -R -v /tmp/linux-site-dio-main/* /var/www/html/
