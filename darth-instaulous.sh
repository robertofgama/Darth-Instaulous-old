#!/usr/bin/env bash

# Criação de Funções
source funcoes/yaml.sh

# Carregar base de dados
create_variables repositorios.yaml




case $1 in
  -v) parse_yaml repositorios.yaml ;;
  *) echo "Escolha uma opção:
  -v) Exibe as variáveis do banco de dados" ;;
esac
