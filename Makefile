SHELL := /bin/bash

install: install-zsh install-vim install-pip install-virtualenvwrapper install-tmux

install-zsh:
	[[ -d ~/.oh-my-zsh ]] || git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	ln -fs `pwd`/zsh/yumike.zsh-theme ~/.oh-my-zsh/themes/yumike.zsh-theme
	ln -fs `pwd`/zsh/zshrc ~/.zshrc

install-vim:
	[[ -d ~/.vim ]] || git clone git://github.com/yumike/dotvim.git ~/.vim
	cd ~/.vim && make install

install-pip:
	mkdir -p ~/.pip
	ln -fs `pwd`/pip/pip.conf ~/.pip/pip.conf

install-virtualenvwrapper:
	mkdir -p ~/.virtualenvs
	ln -fs `pwd`/virtualenvwrapper/* ~/.virtualenvs

install-ack:
	ln -fs `pwd`/ack/ackrc ~/.ackrc

install-tmux:
	ln -fs `pwd`/tmux/tmux.conf ~/.tmux.conf
