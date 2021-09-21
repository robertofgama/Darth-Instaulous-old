#!/bin/bash

check_updade () {
    echo "Verificando Atualizações"
    git fetch
}

update () {
    echo "Atualizando Repositórios"
    git pull --rebase --stat origin master
}

update_seguro (){
    check_updade
    echo "Deseja Atualizar? (S/N)"
    read resposta 
    if [ $resposta = "S" ]
    then
        update
    else
        echo ""
    fi

}
