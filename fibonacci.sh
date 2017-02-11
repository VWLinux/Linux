#!/bin/bash
# Autor: Victor Arnaud <victorhad@gmail.com>
# Esse script irá executar a sequência de fibonacci, imprimindo os N primeiros termos da sequência de acordo com o que o usuário passar
# Sequência de Fibonacci: 1 1 2 3 5 8 13 ...
# Os dois primeiros termos é 1 e cada termo seguinte é soma dos dois primeiros
# termos imediatamente anteriores
# -----------------------------------------------------------------------------

HELP_MESSAGE="USO: fibonacci [Número da sequência]"
VERSION="Versão 1.0"

check_arguments() {
  if [ -z $1 ]; then
    echo "Argumentos insuficientes"
    echo "Ex: ./fibonacci.sh 4"
    exit 1
  fi
}

fibonacci() {
  if [ $1 == 1 ]; then
    echo "1"
    exit 0
  elif [ $1 == 2 ]; then
    echo "1 1"
    exit 0
  fi

  n1=1
  n2=1

  echo -n "1 1"

  for i in `seq 3 $1`
  do
    prox=$(($n1 + $n2))
    echo -n " $prox"
    aux=$n2
    n2=$prox
    n1=$aux
  done

  echo

}

is_numeric() {
  if (echo $1 | grep -e '[^0-9]' &> /dev/null); then
    # Variável é númerica
    return 1
  else
    # Variável não númerica
    return 0
  fi
}

main() {
  check_arguments $1

  if [ $1 == "--help" ]; then
    echo $HELP_MESSAGE
    exit 0
  elif [ $1 == "--version" ]; then
    echo $VERSION
    exit 0
  elif is_numeric $1; then
    fibonacci $1
  else
    echo "Insira uma variável númerica!"
    echo "Ex: ./fibonacci 3"
  fi
}

main $1
# Teoria -------------------------------------------
# echo -n: Não pula uma linha
# `seq 3 $1`: Cria uma sequência de números começando em 3 até o número passado como primeiro parâmetro $1
# echo -e: interpreta valores depois da \
