#!/bin/bash
# Autor: Victor Hugo Arnaud Deon
# Script: ./install_java8.sh
# ----------------------------------- #
# Esse programa irá instalar o JAVA 8
# Entrada: N/A
# Saida: versão do java 8 instalado
# ----------------------------------- #

echo -e "Adicionando o repositorio \n"
sudo add-apt-repository ppa:webupd8team/java
echo

echo -e "Atualizando os pacotes \n"
sudo apt-get update
echo

echo -e "Instalando o Java 8 \n"
sudo apt-get install oracle-java8-installer
echo

echo -e "Versão do java 8 instalado \n"
java -version
