alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias -- -='cd -'

alias ll='ls -l'
alias la='ls -la'
alias lt='ls -lrt'

alias tarp='tar --use-compress-program=pxz'

alias xcopy='xsel -b'

# git
alias gti='git'
alias g='git status -s'

# IP addresses
alias ip='ip --color'
alias ipa='ip -4 --color a'
alias ipb='ip --color --brief'

# aptitude
alias u='sudo aptitude -u'
alias au='sudo aptitude upgrade'
alias ai='sudo aptitude install'
alias ag='sudo aptitude safe-upgrade'

alias SS='sudo systemctl'

# youtube-dll
alias yt='youtube-dl --add-metadata'
alias yta='youtube-dl -x'

# aptitude
alias u='sudo aptitude -u'
alias au='sudo aptitude upgrade'
alias ai='sudo aptitude install'
alias ag='sudo aptitude safe-upgrade'

alias https='http --default-scheme=https'

# emacs 
alias gnus='emacs -f gnus &'

# exit to the current directory
alias mc=". /usr/lib/mc/mc-wrapper.sh"

function mcd() {
  mkdir -p "$1" && cd "$1";
}

# vim: set ft=sh:
