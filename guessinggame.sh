#!/bin/bash

function count_files {
  echo $(ls -1 | wc -l)
}

echo "Bienvenido al juego de adivinar archivos."
echo "¿Cuántos archivos hay en el directorio actual?"

num_files=$(count_files)
guess=-1

while [[ $guess -ne $num_files ]]
do
  read -p "Introduce tu suposición: " guess

  if [[ $guess -lt $num_files ]]; then
    echo "Demasiado bajo. Inténtalo de nuevo."
  elif [[ $guess -gt $num_files ]]; then
    echo "Demasiado alto. Inténtalo de nuevo."
  fi
done

echo "¡Felicidades! Adivinaste correctamente que hay $num_files archivos."
