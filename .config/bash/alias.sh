# User defined aliases

# Save config files to a bare git repository
CONFIG_DIR="$HOME/.dotfiles"
alias config='/usr/bin/git --git-dir=$CONFIG_DIR --work-tree=$HOME'
# To set up repository, run these 2 commands
# git init --bare $CONFIG_DIR
# git --git-dir=$CONFIG_DIR --work-tree=$HOME config --local status.showUntrackedFiles no

# Show classify file type (F), order in columns (C)
alias ls='ls -CF --color=auto'
# Show all files excluding . and .. (A)
alias la='ls -CFA --color=auto'
# Show file permissions and ownership (l)
alias ll='ls -l'

# Confirm before overwriting something (i) and explain what was done (v)
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

# Create non-existant parent directories (p) and explain what was done (v)
alias mkdir='mkdir -pv'

# Human readable sizes (h)
alias df='df -h'
# Show sizes in MB (m)
alias free='free -m'

alias more=less

# Add colours to commands
alias grep='grep --colour=auto'
alias egrap='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
