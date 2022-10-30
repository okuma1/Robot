# Robot

## Objetivo 
Criar um robo em shell script que funciona baseado em chamdas de funções.

## Passo a Passo da configuação.
- Tem 2 formas de executar o boot:

1 - Adicionando o script no diretorio /bin para que você possa executar o comando.

git clone https://github.com/okuma1/Robot

Em seguida, executamos o comando:

chmod 755 Robot/conf.sh && sudo Robot/conf.sh

Agora basta chamar o comando "robot"

2 - Executando como um arquivo.

chmod 755 script.sh
./script.sh


# Argumentos para o Boot.

1-Pingar = pingar algum host

2-namorar = Verifica se o boot namora

3-map = varredura nas portas

3-servicos = verfica os serviços no host

4-update = atualiza os pacotes do host

5-destruicao = destruir a maquina

6-horario = verifica a hora

7-dir = cria diretório

8-man = manual

9-criador = quem criou o boot
