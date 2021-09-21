#!/usr/bin/env bash

# Caminho do Aplicativo
DI_LOCAL=$HOME/.darth-instaulous


# Criação de variáveis com base no YAML
. $DI_LOCAL/src/yaml.sh
create_variables $DI_LOCAL/src/repositorios.yaml

# Funções
. $DI_LOCAL/src/variaveis.sh
. $DI_LOCAL/src/funcoes.sh
. $DI_LOCAL/src/menus.sh
. $DI_LOCAL/src/update.sh


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
