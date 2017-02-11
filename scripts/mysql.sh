#!/bin/bash
# Autor: Victor Hugo Arnaud Deon
# Script: ./mysql.sh
# TODO: Inserir Opção em letra maiuscula
# ----------------------------------- #
# Esse programa irá instalar o MySql ou desistala-lo
# Entrada: N/A
# Saida: Entrando no mysql
# ----------------------------------- #

function install_mysql() {
  sudo apt-get update
  sudo apt-get -y install mysql-server
  echo -n "Você inseriu senha e usuário? (S/N): "; read option
  if [ $option = 'S' ]; then
    mysql -u root -p
  else
    mysql -u root
  fi
}

function unistall_mysql() {
  sudo apt-get purge mysql-server mysql-client mysql-common mysql-server-core-5.5 mysql-client-core-5.5
  sudo rm -rf /etc/mysql /var/lib/mysql
  sudo apt-get autoremove
  sudo apt-get autoclean
}

options=("Instalar" "Desinstalar" "exit")
select option in ${options[@]}
do
  case $option in
    "Instalar")
      install_mysql;;
    "Desinstalar")
      unistall_mysql;;
    "exit")
      echo "Saindo...";
      break;;
    *) echo "Opção invalida!";;
  esac
done
