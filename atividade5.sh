#!/bin/bash

addition() {
    resultado=$(echo "$1 + $2" | bc)
    echo "Resultado: $resultado"
}

subtraction() {
    resultado=$(echo "$1 - $2" | bc)
    echo "Resultado: $resultado"
}

multiplication() {
    resultado=$(echo "$1 * $2" | bc)
    echo "Resultado: $resultado"
}

division() {
    if [ $2 -eq 0 ]; then
        echo "Erro: Divisão por zero não é permitida."
        return
    fi
    resultado=$(echo "scale=2; $1 / $2" | bc)
    echo "Resultado: $resultado"
}

# Laço "infinito" usando For, tive de pesquisar, por que não tinha ideia de como fazer, e não queria usar o while
for (( ; ; )); do
    echo "Calculadora"
    echo "1) Adição"
    echo "2) Subtração"
    echo "3) Multiplicação"
    echo "4) Divisão"
    echo "5) Sair"
    echo -n "Escolha uma opção: "
    read opcao

    if [ "$opcao" == "5" ]; then
        break
    fi

    echo -n "Digite o primeiro número: "
    read num1
    echo -n "Digite o segundo número: "
    read num2

    case $opcao in
        1) addition $num1 $num2 ;;
        2) subtraction $num1 $num2 ;;
        3) multiplication $num1 $num2 ;;
        4) division $num1 $num2 ;;
        *) echo "Opção inválida!" ;;
    esac

    echo "Pressione enter para continuar..."
    read
done

# Dê permissão de execução ao script com o comando: chmod +x atividade5.sh
# Execute o script: ./atividade5.sh