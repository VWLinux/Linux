#!/bin/bash
# Autor: Victor Hugo Arnaud Deon
# Script: ./git.sh
# TODO: Inserir o GIT no Bashrc
# ----------------------------------- #
# Esse programa irá instalar o GIT
# Entrada: N/A
# Saida: versão do GIT instalado
# ----------------------------------- #

echo -e "Instalando o Git...\n"
sudo apt-get install openssl git-core && git
echo

echo -e "Inserindo o GIT no bashrc"
