#! /bin/sh

function backup {
    if [ -e $HOME/$1 ]; then
        echo "-- $1 found."
        mv -v $HOME/$1 $HOME/"$1.old"
    fi
}

backup ".vimrc"
backup ".vim"
git clone git@github.com:cbpark/dotvim.git $HOME/.vim
ln -sf $HOME/.vim/vimrc $HOME/.vimrc
curdir=$(pwd)
cd $HOME/.vim
git submodule update --init
vim +PluginInstall +qall
vim +PluginClean! +qall
cd $curdir
