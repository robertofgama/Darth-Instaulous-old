#!/usr/bin/env bash

definirCores() {
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

instalarAplicativos(){
  definirCores
  echo "${YELLOW}[+]${RED} Adicionando Repositórios  ${RESET}"
  for i in ${repositorios[@]}; do
    sudo add-apt-repository -y $i
  done

  # Adicionar Keys
  #apt-key adv --keyserver VALOR --recv-keys CHAVE

  echo "${YELLOW}[+]${RED} Atualizando o APT  ${RESET}"
  sudo apt update

  echo "${YELLOW}[+]${RED} Instalando Programas  ${RESET}"
  sudo apt install -y  ${aplicativos[@]}

  echo "${YELLOW}[+]${RED} Removendo Programas  ${RESET}"
  sudo apt remove -y  ${desinstalar[@]}
}

aplicarConfs(){
	dataAtual=$(date +%y%m%d-%H%m%S)
	for i in ${confsPdr[@]}; do
		if [[ -L ${confsPdr[@]} ]]; then
		  touch ${confsPdr[@]}
		else
		  if [[ -e ${confsPdr[@]} ]]; then
				mv ${confsPdr[@]} ${confsPdr[@]}.$dataAtual
		    ln -s $di_local_di/${confsDi[@]} ${confsPdr[@]}
		  else
		    ln -s $di_local_di/${confsDi[@]} ${confsPdr[@]}
				#ln -s $di_local_di/${confsDi[@]} ~/.zshrc
		  fi
		fi
	done

}

aplicaConfsSimples(){
	ln -s ~/.darth-instaulous/confs/shells/zsh/zshrc ~/.zshrc
	ln -s ~/.darth-instaulous/confs/shells/tmux/tmux.conf ~/.tmux.conf
	ln -s ~/.darth-instaulous/confs/vim/nvim/ ~/.config/nvim
	ln -s ~/.darth-instaulous/confs/vim/vim/vimrc ~/.vimrc
}
