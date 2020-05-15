#!/usr/bin/env bash

menu-tui(){
  whiptail --title "Darth Instaulous" --msgbox "Instalador de Programas por Roberto Gama" --fb 10 50

  opcao=$(whiptail --title "Seleção de Opções" --menu "Escolha uma opção na lista abaixo" --fb 20 50 7 \
  "1" "Instalar aplicativos" \
  "2" "Sair" 3>&1 1>&2 2>&3)

  case $opcao in
    "1")
      instalarAplicativos ;;
    "2")
      exit ;;
  esac
}
