# Git wrapping to save config files to a bare repository
complete -c config --wraps /bin/git

# Allow auto complete for file names when running `config add`
set -l config_commands_on_files add
complete -c config \
	--condition "__fish_seen_subcommand_from $config_commands_on_files" \
	--arguments '(ls ./)'
