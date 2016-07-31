if [ "$(uname)" == "Darwin" ]; then
	export HOME=/Users/cycheng
	export JAVA_HOME=$(/usr/libexec/java_home)

	if [ -f `brew --prefix`/etc/bash_completion ]; then
	    . `brew --prefix`/etc/bash_completion
	fi

	# Git branch in prompt.
	parse_git_branch() {
	    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
	}

	export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

	if [ -n "$PS1" ]; then
	    PS1="\[\033[1;34m\]\A \[\033[1;31m\]\u\[\033[1;33m\]@\[\033[1;32m\]\h\[\033[1;31m\]\[\033[1;35m\] [\w\[\033[1;35m\]]\[\033[1;36m\] >\[\033[0m\] \[\033[32m\]\$(parse_git_branch)\[\033[00m\] "
	fi
else
	export HOME=/home/bryanyuan2
	if [ -n "$PS1" ]; then
	        PS1='\[\033[1;34m\]\A \[\033[1;31m\]\u\[\033[1;33m\]@\[\033[1;32m\]\h\[\033[1;31m\]\[\033[1;35m\] [\w\[\033[1;35m\]]\[\033[1;36m\] >\[\033[0m\]'
	fi

fi

source ~/githome-bryanyuan2/bin/git-completion.bash
source ~/githome-bryanyuan2/bin/git-prompt.sh

PATH=$PATH:$HOME/bin
export TZ=Asia/Taipei

# alias basic
alias grep="grep --color=auto"
alias ls='ls -G'
alias ll="ls -l"
alias lo="ls -o"
alias lh="ls -lh"
alias la="ls -la"
alias sl="ls"
alias vi="vim"
alias vim='env TERM=xterm-256color vim'
alias log='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

# git config
git config --global user.name "bryanyuan2"
git config --global user.email bryanyuan2@gmail.com
git config --global color.ui true
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global core.autocrlf input
