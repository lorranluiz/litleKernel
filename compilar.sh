#!/bin/bash

# Compila o projeto
make pc-x86-64-test

# Verifica se a compilação foi bem-sucedida
if [ $? -ne 0 ]; then
    echo "Erro na compilação."
    exit 1
fi

# Executa o script de boot
./boot.sh