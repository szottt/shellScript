#!/bin/bash

cd ~/Documentos/Cursos/Alura/ShellScriptAulaDois

if [ -z $1 ]
then
	while [ -z $requisicao_inicial ]
	do
		read -p "Voce esqueceu de colocar o parametro (GET,PUT,POST,DELETE): " requisicao_inicial
		requisicao=$(echo $requisicao_inicial | awk '{ print toupper($1) }')
	done
else
	requisicao=$(echo $1 | awk '{ print toupper($1) }')

fi

case $requisicao in
	GET)
	cat apache.log | grep GET
	;;

	POST)
	cat apache.log | grep POST
	;;

	PUT)
	cat apache.log | grep PUT
	;;

	DELETE)
	cat apache.log | grep PUT
	;;

	*)
	echo "O parametro passado nao é valido"
	;;
esac

