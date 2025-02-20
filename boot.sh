#!/bin/bash

# Caminho para o arquivo ELF
ELF_FILE="build-pc-x86-64-test/lk.elf"

# Verifica se o arquivo ELF existe
if [ ! -f "$ELF_FILE" ]; then
    echo "Arquivo $ELF_FILE não encontrado!"
    exit 1
fi

# Comando para dar boot no QEMU com saída gráfica
qemu-system-x86_64 -kernel "$ELF_FILE" -serial stdio -vga std
