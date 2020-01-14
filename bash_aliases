alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

alias ll='ls -l'
alias la='ls -la'

alias v='vim'
alias c=cat

alias ip4='ip -4 --color a'
alias https='http --default-scheme=https'

alias tarp='tar --use-compress-program=pxz'

alias xcopy='xsel -b'

alias gti='git'

# IP addresses
alias ip='ip --color'
alias ipb='ip --color --brief'
alias localip='ip getifaddr'
alias ips="ifconfig -a | perl -nler'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

alias https='http --default-scheme=https'
# vim: set ft=sh:
