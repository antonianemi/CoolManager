#!/bin/bash

# Función recursiva para buscar archivos .swift
function search_swift_files() {
    local current_path=$1
    echo "$current_path"
    for file in "$current_path"/*; do
        if [[ -d "$file" ]]; then
            # Es un directorio, llamada recursiva para buscar en él
            search_swift_files "$file"
        elif [[ "${file##*.}" == "swift" ]]; then
            # Es un archivo .swift, imprimir la ruta absoluta
            echo "$(realpath "$file")"
        fi
    done
}

# Carpeta raíz para iniciar la búsqueda recursiva
root_folder="./CoolManager"

# Llamar a la función para buscar archivos .swift recursivamente
search_swift_files "$root_folder"
