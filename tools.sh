#!/bin/bash

if ! command -v micro &> /dev/null
then
	# install Micro
	echo "Install Micro"
	curl https://getmic.ro | bash
	mv micro /usr/bin
	export MICRO_TRUECOLOR=1
	export TERM=xterm-256color
fi

if ! command -v starship &> /dev/null
then
	# install Starship theme
	echo "Install Starship theme"
	curl -fsSL https://starship.rs/install.sh | bash
	echo 'eval "$(starship init bash)"' >> ~/.bashrc	
fi

if ! command -v byobu &> /dev/null
then
	# Install a terminal multiplexer
	echo "Install byobu"
	sudo apt-get install byobu	
fi

if ! command -v br &> /dev/null
then
	# Install a file manager
	echo "Install Broot"
	wget https://dystroy.org/broot/download/x86_64-linux/broot
	mv broot /usr/local/bin
	sudo mv broot /usr/local/bin
	sudo chmod +x /usr/local/bin/broot	
fi
