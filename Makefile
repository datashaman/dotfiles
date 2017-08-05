default:

setup-system:
	sudo apt install stow zsh

setup-dotfiles:
	stow home tools
	vim -c PlugInstall
	curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
