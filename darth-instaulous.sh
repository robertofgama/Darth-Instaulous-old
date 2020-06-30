#!/usr/bin/env bash

# Criação de variáveis com base no YAML
. src/yaml.sh
create_variables src/repositorios.yaml

# Funções
. src/funcoes.sh
. src/menus.sh

# Aplicativos para Instalar
repositorios=($telegram_apt_repositorio_ppa $logitech_mouse_driver_apt_repositorio_ppa)
aplicativos=($anki_apt_app $telegram_apt_app $nodejs_apt_app $neovim_apt_app $powerline_apt_app $tilix_apt_app $tmux_apt_app $terminal_programas_apt_app $logitech_mouse_driver_apt_app $mpv_apt_app) 

case $1 in
  -i) instalarAplicativos ;;
  -m) menu-tui ;;
  -c) aplicarConfs ;;
  -cs) aplicaConfsSimples ;;
  *) echo "Escolha uma opção:
  -i    Instala os programas
  -m    Menu TUI";;
esac
