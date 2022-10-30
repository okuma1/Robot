#!/bin/bash 
#
if [ $EUID -ne 0 ] #conferindo se é o root ou nao. ID root (0)
    then
    echo "Você não tem permissão para executar"
    exit 1
fi

chmod 777 Robot/robo.sh
cp Robot/robo.sh /usr/bin/robot 
rm -rf Robot
apt install gnustep-gui-runtime -y 

echo "Configução pronta!
