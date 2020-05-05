# ~/.bashrc
#

# return if shell is not interactive (not called with -i parameter)
[[ $- != *i* ]] && return

# source bash completion if it exists
[[ -r /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion


# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

# Use our defined aliases if running shell in non-interctive mode
shopt -s expand_aliases

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

# export QT_SELECT=4

# Change the window title of X terminals
case ${TERM} in
	xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
		;;
	screen*)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
		;;
esac

# complete determines which options to cycle through or display
# when pressing <tab>. It can be different for each command, here
# we set <tab> completion to list file (f) and commands (c)
# when "sudo" is the first word entered in the terminal
complete -cf sudo

# Source personal settings
SETTINGS_DIR="${HOME}/.config/bash"
[[ -r ${SETTINGS_DIR}/alias.sh ]] && . ${SETTINGS_DIR}/alias.sh
[[ -r ${SETTINGS_DIR}/function.sh ]] && . ${SETTINGS_DIR}/function.sh
[[ -r ${SETTINGS_DIR}/dircolours.sh ]] && . ${SETTINGS_DIR}/dircolours.sh
