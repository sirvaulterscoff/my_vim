#!/bin/sh
cd ~
git clone git@github.com:sirvaulterscoff/my_vim.git .vim_git
ln -s .vim_git/.vimrc ~/.vimrc
ln -s .vim_git/.vim ~/.vim


