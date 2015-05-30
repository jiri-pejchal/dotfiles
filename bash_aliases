alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

alias ll='ls -l'
alias la='ls -la'

alias v='vim'
alias c=cat

alias tarp='tar --use-compress-program=pxz'

alias xcopy='xsel -b'

alias gti='git'

# IP addresses
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias localip='ip getifaddr'
alias ips="ifconfig -a | perl -nler'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"


# vim: set ft=sh:
