#!/bin/bash

# Pergunta ao usuário o tamanho da senha
echo -n "Digite o tamanho da senha que deseja: "
read TAMANHO

# Gera a senha aleatória
SENHA=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w $TAMANHO | head -n 1)

# Exibe a senha gerada
echo "Sua senha aleatória é: $SENHA"

# Dê permissão de execução ao script com o comando: chmod +x atividade3.sh
# Execute o script: ./atividade3.sh