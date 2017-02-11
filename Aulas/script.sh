#!/bin/bash
# Exemplo Final de Script Shell

Main() {
  echo "Exemplo Final sobre o uso de scripts shell"
  echo "------------------------------------------"
  echo "Opções:"
  echo
  echo "1. Adicionar um usuário no sistema"
  echo "2. Deletar um usuário no sistema"
  echo "3. Fazer backup dos arquivos do /etc"
  echo "4. Sair"
  echo
  echo -n "Qual a opção desejada? "
  read opcao
  case $opcao in
    1) Add ;;
    2) Remove ;;
    3) Backup ;;
    4) Exit ;;
    *) "Opção desconhecida." ; echo ; Principal ;;
  esac
}

Add() {
  clear
  echo -n "Qual o nome do usuário a ser adicionado: "
  read name
  adduser name
  Main
}

Remove() {
  clear
  echo -n "Qual o nome do usuário que deseja deletar: "
  read name
  userdel name
  Main
}

Backup() {
  for arquive in `/bin/ls` /etc; do
    cp -R /etc/$arquive /etc/$arquive.bck
    mv /etc/$arquive.bck /usr/backup
  done
  Main
}

