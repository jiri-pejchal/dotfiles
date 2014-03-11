shopt -s histappend
export HISTCONTROL=ignoreboth

export HISTSIZE=2000
export HISTFILESIZE=8000
export HISTTIMEFORMAT='%F %T '
# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"

# keep working directory when opening new tab in gnome-terminal
. /etc/profile.d/vte.sh
