function config -d "Save config files to bare git respository"
	set CONFIG_DIR "$HOME/.dotfiles"
	/usr/bin/git --git-dir=$CONFIG_DIR --work-tree=$HOME $argv
	# To set up repository, run these 2 commands
	# git init --bare $CONFIG_DIR
	# git --git-dir=$CONFIG_DIR --work-tree=$HOME config --local status.showUntrackedFiles no
end
