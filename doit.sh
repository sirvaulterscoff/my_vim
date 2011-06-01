#!/bin/sh
cd ~
git clone git@github.com:sirvaulterscoff/my_vim.git .vim_git
git submodule add http://github.com/gmarik/vundle.git .vim/vundle.git
ln -s .vim_git/.vimrc ~/.vimrc
ln -s .vim_git/.vim ~/.vim


