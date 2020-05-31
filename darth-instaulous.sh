#!/usr/bin/env bash

# Criação de variáveis com base no YAML
. src/yaml.sh
create_variables src/repositorios.yaml

# Funções
. src/funcoes.sh
. src/menus.sh

# Aplicativos para Instalar
repositorios=($telegram_apt_repositorio_ppa)
aplicativos=($anki_apt_app $telegram_apt_app $nodejs_apt_app $neovim_apt_app)

case $1 in
  -i) instalarAplicativos ;;
  -m) menu-tui ;;
  -c) aplicarConfs ;;
  -cs) aplicaConfsSimples ;;
  *) echo "Escolha uma opção:
  -i    Instala os programas
  -m    Menu TUI";;
esac
