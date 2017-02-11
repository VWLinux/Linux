#!/bin/bash
# Autor: Victor Hugo Arnaud Deon
# Script: ./adobe_flash.sh
# ----------------------------------- #
# Esse programa irá instalar o Adobe Flash
# Entrada: N/A
# Saida: Adobe flash instalado
# ----------------------------------- #

echo "Abra a opção 'Programas e atualizações' das 'configurações do sistema' e marque a opção 'Parceiros da Canonica' no guia 'Outros programas'"
echo -n "Ao marcar a opção digite ok: "; read ok

if [ $ok = 'ok' ]; then
  sudo apt-get update
  sudo apt-get install adobe-flashplugin
else
  echo "Opção invalida!"
fi
