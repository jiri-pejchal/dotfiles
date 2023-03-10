alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias -- -='cd -'

#alias ll='ls -l'
alias ll='exa -l'

alias la='ls -la'
alias lt='ls -lrt'
alias lm='exa -l --sort=modified'
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --color-scale'

alias li='locate -i'

alias tarp='tar --use-compress-program=pxz'

alias xcopy='xsel -b'

# git
alias g='git status -s'
alias ..g='cd $(git rev-parse --show-toplevel)'
alias gti='git'

# IP addresses
alias ip='ip --color'
alias ipa='ip -4 --color a'
alias ipb='ip --color --brief'

alias svim='sudo vim'
alias SS='sudo systemctl'

# youtube-dll
alias yt='yt-dlp --add-metadata'
alias yx='yt-dlp -x'

# aptitude
alias u='sudo aptitude -u'
alias U='sudo aptitude upgrade'
alias I='sudo aptitude install'
alias ag='sudo aptitude safe-upgrade'

alias https='http --default-scheme=https'

# emacs
alias gnus='emacs -f gnus &'

# exit to the current directory
alias mc=". /usr/lib/mc/mc-wrapper.sh"

# import all javase packages
# define print functions
alias jshellj="jshell JAVASE PRINTING"

function mcd() {
  mkdir -p "$1" && cd "$1";
}

# vim: set ft=sh:
