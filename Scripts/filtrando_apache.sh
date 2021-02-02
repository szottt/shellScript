#!/bin/bash

cd ~/Documentos/Cursos/Alura/ShellScriptAulaDois

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

if [[ $1 =~ $regex ]]
then
	cat apache.log | grep $1
	if [ $? -ne 0 ]
	then
		echo "O endereço IP procurado nao esta presente no arquivo de Log"
	fi
else
	echo "Formato passado nao é valido"
fi

