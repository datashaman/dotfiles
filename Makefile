default:

setup: setup-system setup-dotfiles

setup-system:
	sudo apt install \
		ack-grep \
		git-core \
		mysql-client \
		redis-tools \
		stow \
		virtualenvwrapper \
		zsh

setup-dotfiles:
	stow home tools
	vim -c PlugInstall
	fc-cache -vf ~/.local/share/fonts/
	curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
