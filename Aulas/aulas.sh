#!/bin/bash
# Autor: Victor Arnaud
# Execução:
#   chmod 744 aulas.sh
#   ./aulas.sh
# Licença: GPL
# Para executar funções sem argumentos ($1 ou $2 ...) só inserir o nome da função
# Para executar funções que pedem argumentos passe o nome da função mais os argumentos: verify_args $1 ou sum 10 20
# ------------------------------------------------------------------------------

flag_option=1

dialog() {
  gdialog \
    --title "Titulo" \
    --msgbox "Hello World"
}

hello_word() {
  echo "Hello world!!"
}

# Criando Condições -----------------------------------------------------------

conditional() {
  if [ $flag_option -eq 1 ]; then
    hello_word
  else
    dialog
  fi
}

# Criando menus com select ----------------------------------------------------

menu() {
  options=("python" "shell" "haskell" "exit")
  select language in ${options[@]}
  do
    case $language in
      "python")
        echo "Você escolheu a linguagem python";;
      "shell")
        echo "Você escolheu a linguagem shell";;
      "haskell")
        echo "Você escolheu a linguagem haskell";;
      "exit")
        echo "Saindo...";
        break;;
      *) echo "Opção invalida";;
    esac
  done
}


# Armazenando dados nas variáveis ---------------------------------------------
# Insere o retorno de um comando dentro de uma variável
text() {
  texto="Texto muito DOIDO"
  upper=$(echo $texto | tr a-z A-Z)
  lower=$(echo $texto | tr A-Z a-z)
  echo $upper
  echo $lower
}

# Verificando argumentos ------------------------------------------------------
is_empty() {
  if [ -z $1 ]; then
    return 0
  fi
  return 1
}

verify_args() {
  # Verifica se o primeiro argumento da função é vazio retornando 0
  if is_empty $1; then
    echo "Não passou argumento"
  else
    echo "Passou argumento"
  fi
}

# Criando Funções -------------------------------------------------------------
# Irá somar os dois argumentos passados para a função: sum 10 20
function sum() {
  sum_arguments=$(($1 + $2))
  echo "$1 + $2 = $sum_arguments"
}

# Cores -----------------------------------------------------------------------

red() {
  echo -e '\033[31;40;1m www.google.com \033[m'
}

# Vetores ---------------------------------------------------------------------

arrays() {
  array[0]="shell script"
  array[1]="C"
  array[2]="java"
  array_length=${#array[@]}
  echo "O Vetor possui $array_length elementos."

  for ((i=0; i<${array_length}; i++))
  do
    echo "vetor[$i] = ${array[$i]}"
  done
}

# grep ------------------------------------------------------------------------
# Imprime as linhas de um arquivo que tem a palavra passada
# EX: ./script ^java arquivo.txt
# Isso irá imprimir todas as linhas do arquivo.txt que começa(^) com a palavra java
# Utilize expressões regulares para pesquisas mais avançadas

search_line() {
  grep $1 $2
}

# test ------------------------------------------------------------------------

test_key() {
  key=0
  if test $key = 1; then
    echo "Chave ligada"
  else
    echo "Chave desligada"
  fi
}

