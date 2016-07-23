#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
	# Mac OSX
	mv ~/.bash_profile ~/.bash_profile.old
	ln -s ~/githome/bashrc ~/.bash_profile
else
	# Linux
	mv ~/.bashrc ~/.bashrc.old
	ln -s ~/githome/bashrc ~/.bashrc	

	mv ~/.bash_profile ~/.bashrc_profile.old
	ln -s ~/githome/bash_profile_linux ~/.bash_profile
fi


# install Vundle
git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

mv ~/.vimrc ~/.vimrc.old
ln -s ~/githome/vimrc ~/.vimrc
mv ~/.screenrc ~/.screenrc.old
ln -s ~/githome/screenrc ~/.screenrc
mv ~/.gitconfig ~/.gitconfig.old
ln -s ~/githome/gitconfig ~/.gitconfig
mv ~/.gitignore ~/.gitignore.old
ln -s ~/githome/gitignore ~/.gitignore
