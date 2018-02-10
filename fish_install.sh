#!/bin/bash
echo "\n\n"
echo "#=============================================================================="
echo "# title       : Fish shell"
echo "# description : Instalando uma alternativa configurável e fácil de usar para o Bash."
echo "# author      : Claudio Alexssandro Lino"
echo "# site        : http://codigosecafe.com.br"
echo "# github      : https://github.com/codigosecafe"
echo "# date        : 18/01/2018"
echo "# version     : 1.0"
echo "#=============================================================================="
echo "\n"
mv ~/.bashrc ~/bashrcOLD.txt
mv ./bashrc.tx ~/.bashrc
cd ~/
echo "##### => Lendo os pacotes disponiveis"
env -i sudo apt-get update
echo "\n"
echo "##### => Atulizando a lista de pacotes"
env -i sudo apt-get upgrade -y
echo "\n"
echo "##### => Adcionando fish ao sistema"
env -i sudo apt-add-repository ppa:fish-shell/release-2 -y
env -i sudo apt-get update
env -i sudo apt-get install fish -y
env -i sudo rm .bashrc





env -i sudo set -gx TERM "xterm-256color" set -xU LSCOLORS 'di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
env -i sudo export TERM=xterm-256color

echo "\n"
echo "##### => Defenindo o fish como padrao"
env -i chsh -s /usr/bin/fish
echo "\n"
echo "Iniciando o fish"
env -i fish
echo "\n"
echo "#=========================== FIM DO SCRIPT ===================================="
echo "\n\n"