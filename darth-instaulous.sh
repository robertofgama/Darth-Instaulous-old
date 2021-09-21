#!/usr/bin/env bash

# Criação de variáveis com base no YAML
. src/yaml.sh
create_variables src/repositorios.yaml

# Funções
. src/variaveis.sh
. src/funcoes.sh
. src/menus.sh
. src/update.sh


case $1 in
  -i) instalarAplicativos ;;
  -m) menu-tui ;;
  -c) aplicarConfs ;;
  -cs) aplicaConfsSimples ;;
  -up) update_seguro ;;
  *) echo "Escolha uma opção:
  -i    Instala os programas
  -m    Menu TUI";;
esac
