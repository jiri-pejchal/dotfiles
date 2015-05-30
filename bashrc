# list all options:  shopt -p
shopt -s histappend
# don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

export HISTSIZE=2000
export HISTFILESIZE=8000
export HISTTIMEFORMAT='%F %T '

# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"

# keep working directory when opening new tab in gnome-terminal
. /etc/profile.d/vte.sh


# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


# a command name that is the name of a directory is executed
# as if it were the argument to the cd command
shopt -s autocd

# correct minor errors in the spelling of a directory component
shopt -s cdspell

# spelling correction on directory names during word completion
shopt -s dirspell

#redshif-tgtk  -l 49.20:16.6097981 -t 4500K:3500K
