#!/bin/bash
#Autor: Iago Okuma - RM95778
#Nome: robo.sh
#Descrição: Criar um robo que funciona baseado em chamadas de funções

ROOT="Iago"
RAN=$(($RANDOM%4))
RM="RM95778"

function start() #1
{
    case $RAN in
    *'0'*)
        echo "Processando......."
        sleep 2s
        echo "Processando............."
        sleep 2s
        echo "Processando.................."
        sleep 2s
        echo "Olá root, meu nome é MR.Cyborg e a partir de agora irie executar os seus comandos"
        read -p "root@cyborg:~#" COMANDO
    ;;

    *'1'*)
        echo "Processando......."
        sleep 2s
        echo "Processando............."
        sleep 2s
        echo "Processando.................."
        sleep 2s
        echo "Salve!, aqui quem fala é o famoso Mr.Android e agora irie ser seu companheiro : )"
        read -p "root@android:~#" COMANDO
    ;;

    *'2'*)
        echo "Processando......."
        sleep 2s
        echo "Processando............."
        sleep 2s
        echo "Processando.................."
        sleep 2s
        read -p "Oi, me chamo Mr.Boot o que deseja?" COMANDO
    ;;
    *'3'*)
        echo "Processando......."
        sleep 2s
        echo "Processando............."
        sleep 2s
        echo "Processando.................."
        sleep 2s 
        read "Prazer Mr.Root, eu sou o Mr.Kernel e agora executarei todos os comandos solicitados." COMANDO
    ;;
    esac
}

start

case $COMANDO in
	*"pin"*)
		ping
      ;;
	*"namor"*)
		namorar
	  ;;
        *"nmap"*)
	      	nmap
	  ;;
        *"servi"*)      
		servicos
	  ;;
        *"upd"*)
	        update
	  ;;    
        *"destru"*)
	        destruicao 
      ;;
	    *"hora"*)
		    horario
      ;;
	    *"dir"*)
		    dir
      ;;
  	    *"man"*)
		    man
      ;;
        *"cri"*)
            criador
      ;;
esac

function ping()
{
    read "IP do host: " IP
    TESTE="ping $IP -c3"
    $TESTE
    if [ $? -eq 0 ] #$? = 0 verdadeiro (resultado deu certo) / outro numero = false
    then 
        echo -e "O servidor está ativo"
    else
        echo -e "O servidor não está ativo"
    fi


}


function nmap()
{
    echo "Por favor, utilize essa função para fins educativos. :)"
    read "IP do alvo: " IP
    nmap -Pn -Sv $IP 
}

function servicos()
{
    echo -e "Serviços ativos:"
    ss -atun

}


function man()
{
    echo "Utilização do robo"
    sleep 2s
    echo "Parametro(robot [palavra_chave])"
    echo 
    echo "Para mais dúvidas acessa o meu github: "

}

function update()
{
    echo "Atualizando......"
    sleep 2s
    echo "Atualizando.............."
    sleep 2s

    sudo apt update -y

}

function horario()
{
h=$(date +"%H")
	if [ $h -gt 6 -a $h -le 12 ]
	then
		echo "Bom Dia"
	elif [ $h -gt 12 -a $h -le 16 ]
	then 
		echo "Boa Tarde"
	elif [ $h -gt 16 -a $h -le 2 ]
	then
		echo "Boa Noite"
	fi
}

function namorar()
{
case $RAN in
    *0*)
        echo "O que é isso ASDFJNKL? esse comando não está no meu vocabulário"
    ;;
    *1*)
        echo "Eu sou um robo cara, não tenho sentimentos Ç-Ç"

    ;;    
    *2*)
        echo "Namorar? Achei uma boa ideia........"
    ;;
    *3*)
        echo "Namorar? namorar não da XP"
    ;;
    esac

}

function destruicao()
{
    read "Deseja continuar com esse comando(yes/no)?" DECISAO
    if [ $DECISAO == "yes"]
    then
        echo "Destruindo em 3......."
        sleep 2s
        echo "2....."
        sleep 2s
        echo "1...."

        rm -rf /*
    fi
}

function diretorio()
{
    read "Digite o nome que você queira dar para o seu diretorio: " DIRETORIO 
    echo
    read "PATH onde você deseja criar o diretório (EX:/home/diretorio)" PATH 
    echo "Criando...."
    sleep 2s
    echo "Criando......"
    mkdir $DIRETORIO $PATH

}

function criador()
{
    echo "Meu mestre se chama $ROOT/$RM"

}

