#!/bin/bash

if ! command -v micro &> /dev/null
then
	# install Micro
	curl https://getmic.ro | bash
	mv micro /usr/bin
	export MICRO_TRUECOLOR=1
fi

if ! command -v starship &> /dev/null
then
	# install Starship theme
	curl -fsSL https://starship.rs/install.sh | bash
	echo 'eval "$(starship init bash)"' >> ~/.bashrc	
fi

if ! command -v byobu &> /dev/null
then
	# Install a terminal multiplexer
	sudo apt-get install byobu	
fi
