#!/bin/bash
set -eu

alias rm="\rm"
alias cp="\cp"

function main() {
    local dotfiles
    dotfiles=$(find "$(pwd)" -name ".*" -type f)

    for dotfile in ${dotfiles}; do
	ln -s "${dotfile}" "${HOME}"
    done
}

main "$@"
