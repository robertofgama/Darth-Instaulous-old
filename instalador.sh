#!/usr/bin/env bash

REPO=https://github.com/robertofgama/Darth-Instaulous
LOCAL=$HOME/.darth-instaulous


teste-requisitos() {
	command -v "$@" >/dev/null 2>&1
}

definir-cores() {
	if [ -t 1 ]; then
		RED=$(printf '\033[31m')
		GREEN=$(printf '\033[32m')
		YELLOW=$(printf '\033[33m')
		BLUE=$(printf '\033[34m')
		BOLD=$(printf '\033[1m')
		RESET=$(printf '\033[m')
	else
		RED=""
		GREEN=""
		YELLOW=""
		BLUE=""
		BOLD=""
		RESET=""
	fi
}

verificar-instalacao-existente() {
  if [[ -L $LOCAL ]]; then
    echo "${RED}Você já tem o Darth Instaulous instalado  ${RESET}"
		exit 1
  fi
}

clonar-repositorio(){
	echo "${RED}Clonando Repositório  ${RESET}"
	git clone $REPO $LOCAL
	#cd $LOCAL
	#chmod +x darth-instaulous.sh
	#./darth-instaulous.sh
}



################ Principal ################
instalar(){
definir-cores

# Verificar Requisitos
if ! teste-requisitos git; then
	echo "${YELLOW}GIT não está instalado.${RESET} Instale o GIT e reinicie a instalação."
	exit 1
fi

verificar-instalacao-existente
clonar-repositorio


printf "$RED"
cat <<-'EOF'

                                         .-.
                                        |_:_|
                                       /(_Y_)\
                  .                   ( \/M\/ )
                   '.               _.'-/'-'\-'._
                     ':           _/.--'[[[[]'--.\_
                       ':        /_'  : |::"| :  '.\
                         ':     //   ./ |oUU| \.'  :\
                           ':  _:'..' \_|___|_/ :   :|
                             ':.  .'  |_[___]_|  :.':\
                              [::\ |  :  | |  :   ; : \
                               '-'   \/'.| |.' \  .;.' |
                               |\_    \  '-'   :       |
                               |  \    \ .:    :   |   |
                               |   \    | '.   :    \  |
                               /       \   :. .;       |
                              /     |   |  :__/     :  \\
                             |  |   |    \:   | \   |   ||
                            /    \  : :  |:   /  |__|   /|
                        snd |     : : :_/_|  /'._\  '--|_\
                            /___.-/_|-'   \  \
                                           '-'

 ______           _   _         _____          _              _
 |  _  \         | | | |       |_   _|        | |            | |
 | | | |__ _ _ __| |_| |__       | | _ __  ___| |_ __ _ _   _| | ___  _   _ ___
 | | | / _` | '__| __| '_ \      | || '_ \/ __| __/ _` | | | | |/ _ \| | | / __|
 | |/ / (_| | |  | |_| | | |    _| || | | \__ \ || (_| | |_| | | (_) | |_| \__ \
 |___/ \__,_|_|   \__|_| |_|    \___/_| |_|___/\__\__,_|\__,_|_|\___/ \__,_|___/
														  								... executado com sucesso!!

		Bem vindo ao lado negro do APT!


EOF
printf "$RESET"

}

instalar
