alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

alias ll='ls -l'
alias la='ls -la'

alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -v'
alias gd='git diff'
alias gdc='git diff --cached'
alias gi='git commit -v'
alias gl='git log'
alias gp='git push'
alias gpu='git pull'
alias gra='git remote add'
alias grr='git remote rm'
alias gs='git status'
alias go='git checkout'
alias glog='git log'
alias glogp='git log --pretty=format:"%h %s" --graph'

alias v='vim'

# IP addresses
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias localip='ip getifaddr'
alias ips="ifconfig -a | perl -nler'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"


# vim: set ft=sh:
