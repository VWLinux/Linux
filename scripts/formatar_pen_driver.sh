#!/bin/bash
# Autor: Victor Hugo Arnaud Deon
# Script: ./formatar_pen_driver.sh
# TODO: Colocar a option em letra maiuscula para facilitar o IF
# TODO: Colocar isso em modo gráfico
# ----------------------------------- #
# Esse programa irá formatar o pen driver inserido
# Entrada: N/A
# Saida: pen driver formatado
# ----------------------------------- #

echo -e "Identifique qual desses dispositivos é o pen driver que será formatado \n"
sudo mount
echo

echo "Certifique-se que esse é o seu pen driver antes de prosseguir"
echo -n "Digite o nome do pen driver, por exemplo, /dev/sdc1: "; read pen_driver
echo -n "Esse é o seu pen driver? $pen_driver, se for digite sim ou s: "; read option

if [ $option = 's' ] || [ $option = 'sim' ]; then
  echo "Desmontando o pen-driver e formatando"
  sudo umount $pen_driver && sudo mkfs.vfat $pen_driver
else
  echo "Opção invalida!"
fi

