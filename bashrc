shopt -s histappend
export HISTCONTROL=ignoreboth

export HISTSIZE=2000
export HISTFILESIZE=8000

function mcd() {
  mkdir -p "$1" && cd "$1";
}
