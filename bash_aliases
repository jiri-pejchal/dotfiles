alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cd..='cd ..'
alias -- -='cd -'

#alias ll='ls -l'
alias ll='exa -l'

alias la='ls -la'
alias lt='ls -lrt'
alias lm='eza -l --sort=modified'
alias lx='eza -lbhHigUmuSa@ --time-style=long-iso --color-scale'

alias li='locate -i'

alias tarp='tar --use-compress-program=pxz'

alias xcopy='xsel -b'
alias fd=fdfind

# git
alias g='git status -s'
alias gs='git status -u'
# git aliases can't directly change bash's current directory
# because they run in a subshell.
alias gd="git diff"
alias gcd='cd $(git rev-parse --show-toplevel)'
alias gti='git'

# docker
alias dcu='docker compose up -d --build --remove-orphans'
alias dcd='docker compose down'
alias dcs='docker compose stop'
alias dcp='docker compose ps'
alias dcl='docker compose logs -f'

# IP addresses
alias ip='ip --color'
alias ipa='ip -4 --color a'
alias ipb='ip --color --brief'

alias publicip="curl ifconfig.me"

alias svim='sudo vim'
alias SS='sudo systemctl'

# youtube-dll
alias y='yt-dlp --add-metadata'
alias yx='yt-dlp -x --add-metadata'

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

alias t="~/bin/transcribe/transcribe"

# Include Mac-specific aliases if on macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    if [ -f ~/.bash_aliases_mac ]; then
        . ~/.bash_aliases_mac
    fi
fi
# vim: set ft=sh:
