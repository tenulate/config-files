# Save config files to a bare git repository
function config
	set CONFIG_DIR "$HOME/.dotfiles"
	/usr/bin/git --git-dir=$CONFIG_DIR --work-tree=$HOME $argv
	# To set up repository, run these 2 commands
	# git init --bare $CONFIG_DIR
	# git --git-dir=$CONFIG_DIR --work-tree=$HOME config --local status.showUntrackedFiles no
end
