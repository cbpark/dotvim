#! /usr/bin/env bash

DOTVIM=$HOME/.vim

backup() {
    if [ -e $HOME/$1 ]; then
        echo "-- $1 found."
        mv -v $HOME/$1 $HOME/"$1.old"
    fi
}

backup ".vimrc"
backup ".vim"

git clone git@github.com:cbpark/dotVim.git ${DOTVIM} \
    || git clone https://github.com/cbpark/dotVim.git ${DOTVIM} \
    || { echo "-- git clone failed."; exit 1; }

ln -sf ${DOTVIM}/vimrc $HOME/.vimrc

curdir=$(pwd)
cd ${DOTVIM} || { echo "--" ${DOTVIM} "does not exist."; exit 1; }
git submodule update --init
vim +PluginInstall +qall
vim +PluginClean! +qall
cd $curdir || exit
