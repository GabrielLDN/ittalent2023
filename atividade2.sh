#!/bin/bash

# Número de diretórios a serem criados
NUM_DIR=10

# Laço de repetição para criar os diretórios, poderia ser feito com While, mas como Golang não tem While, não quero me confundir.
for (( i=1; i<=NUM_DIR; i++ ))
do
    mkdir "diretorio_$i"
    echo "Diretório diretorio_$i criado!"
done

echo "Todos os $NUM_DIR diretórios foram criados com sucesso!"

# Dê permissão de execução ao script com o comando: chmod +x atividade2.sh.
# Execute o script: ./atividade2.sh.