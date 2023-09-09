# Atividade Prática Shell Script II

#!/bin/bash

# Verifica se o arquivo foi fornecido como argumento
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <caminho_do_arquivo>"
    exit 1
fi

# Verifica se o arquivo existe
if [ ! -f "$1" ]; then
    echo "Erro: O arquivo $1 não existe."
    exit 1
fi

# Conta as palavras no arquivo e exibe o resultado
palavras=$(wc -w < "$1")
echo "O arquivo $1 tem $palavras palavras."

# No terminal para executar no VS Code, use o comando "./atividade.sh atividade.sh" no local do arquivo