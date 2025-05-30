#!/bin/bash

# Create a new directory and enter it
function mcd() {
  mkdir -p "$1" && cd "$1";
}

# Find files by name
ff() {
    find . -type f -name "*$1*"
}

# Find files by name
ffi() {
    find . -type f -iname "*$1*"
}


# Cheatsheet for common commands
cheat() {
    curl "cheat.sh/$1"
}

# `g` is a shortcut for git, it defaults to `git s` (status) if no argument is given.
function g() {
    local cmd=${1-status -u -s}
    shift
    git $cmd $@
}

function gu() {
    # no files specified
    if [ $# -eq 0 ]; then
        git add -u
    else
        git add "$@"
    fi
    git commit
}


# Extract archives - use: extract <file>
# Based on http://dotfiles.org/~pseup/.bashrc
function extract() {
        if [ -f "$1" ] ; then
                local filename=$(basename "$1")
                local foldername="${filename%%.*}"
                local fullpath=`perl -e 'use Cwd "abs_path";print abs_path(shift)' "$1"`
                local didfolderexist=false
                if [ -d "$foldername" ]; then
                        didfolderexist=true
                        read -p "$foldername already exists, do you want to overwrite it? (y/n) " -n 1
                        echo
                        if [[ $REPLY =~ ^[Nn]$ ]]; then
                                return
                        fi
                fi
                mkdir -p "$foldername" && cd "$foldername"
                case $1 in
                        *.tar.bz2) tar xjf "$fullpath" ;;
                        *.tar.gz) tar xzf "$fullpath" ;;
                        *.tar.xz) tar Jxvf "$fullpath" ;;
                        *.tar.Z) tar xzf "$fullpath" ;;
                        *.tar) tar xf "$fullpath" ;;
                        *.taz) tar xzf "$fullpath" ;;
                        *.tb2) tar xjf "$fullpath" ;;
                        *.tbz) tar xjf "$fullpath" ;;
                        *.tbz2) tar xjf "$fullpath" ;;
                        *.tgz) tar xzf "$fullpath" ;;
                        *.txz) tar Jxvf "$fullpath" ;;
                        *.zip) unzip "$fullpath" ;;
                        *) echo "'$1' cannot be extracted via extract()" && cd .. && ! $didfolderexist && rm -r "$foldername" ;;
                esac
        else
                echo "'$1' is not a valid file"
        fi
}
