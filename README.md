# Darth Instaulous

Sistema de instalação automatizado de softwares e configurações para Ubuntu.

# Lista de Programas
- Anki: Programa de Repetição Espaçada
- NodeJS: Runtime do NodeJS
- Telegram: Aplicativo Desktop do programa de mensagens instantâneas Telegram


# Repositórios
Os repositórios e dados de instalação e configurações estão localizados em `src/repositorios.yaml` estes dados estão organizados da seguinte forma:
- Nome do Programa
  - apt: Configurações para instalação pelo APT
    - app: Nome do aplicativo usado no comando `apt install`
    - repositorio: Configurações de repositórios do APT
      - ppa: Endereço do PPA para ser adicionado
  - snap:
    - app:
  - flatpak:
    - flatremote:
      - XX:

```yaml
nome_do_programa:
  apt:
    app:
    repositorio:
      ppa:
  snap:
    app:
  flatpack:
    app:
```

Darth Instaulous:
- di
  local: Variáveis de caminhos de arquivos
    PROGRAMA: Nome do programa em que se refere as localizações
      di: Localização do Darth Instaulous
      pdr: Localização padrão do arquivo


# Créditos
- YAML Parser
  - [Jonathan Peres - @jasperes / bash-yaml](https://github.com/jasperes/bash-yaml)
  - [Piotr Kuczynski - @pkuczynski / parse_yaml.sh](https://gist.github.com/pkuczynski/8665367)
