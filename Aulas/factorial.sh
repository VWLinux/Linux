#!/bin/bash
# Fatorial de X de maneira recursiva
# -------------------

Factorial() {
  if [ $1 -gt 1 ]; then
    i=`expr $1 - 1`
    j=`Factorial $i`
    k=`expr $1 \* $j`
    echo $k
  else
    echo 1
  fi
}

Main() {
  echo -n "Entre com o fatorial: "
  read x
  Factorial $x
}

Main $1
