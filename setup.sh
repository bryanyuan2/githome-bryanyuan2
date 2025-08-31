#!/bin/bash

# check if running on macOS
if [ "$(uname)" == "Darwin" ]; then
	# OSX
	mv ~/.bash_profile ~/.bash_profile.old
	ln -s ~/githome-bryanyuan2/src/bash/bashrc ~/.bash_profile
else
	# Linux
	mv ~/.bashrc ~/.bashrc.old
	ln -s ~/githome-bryanyuan2/src/bash/bashrc ~/.bashrc

	# backup existing bash profile
	mv ~/.bash_profile ~/.bashrc_profile.old
	ln -s ~/githome-bryanyuan2/src/bash/bash_profile_linux ~/.bash_profile
fi


# install Vundle vim plugin manager
git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# install vim plugins automatically
vim +PluginInstall +qall

# backup existing ~/.vimrc and install cycheng .vimrc
mv ~/.vimrc ~/.vimrc.old
ln -s ~/githome-bryanyuan2/src/vim/vimrc ~/.vimrc

# backup existing ~/.screenrc and install cycheng .screenrc
mv ~/.screenrc ~/.screenrc.old
ln -s ~/githome-bryanyuan2/src/screen/screenrc ~/.screenrc

# backup existing ~/.gitconfig and install cycheng .gitconfig
mv ~/.gitconfig ~/.gitconfig.old
ln -s ~/githome-bryanyuan2/src/git/gitconfig ~/.gitconfig

# backup existing ~/.gitignore and install cycheng .gitignore
mv ~/.gitignore ~/.gitignore.old
ln -s ~/githome-bryanyuan2/src/git/gitignore ~/.gitignore
