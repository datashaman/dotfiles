default:

setup: setup-system setup-dotfiles

setup-system:
	sudo apt install stow zsh virtualenvwrapper

setup-dotfiles:
	stow home tools
	vim -c PlugInstall
	curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
