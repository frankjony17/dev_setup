#!/bin/sh

alias g='git'
alias ga='git add'
alias gb='git branch'
alias gch='git checkout'
alias gsw='git switch'
alias gc='git commit --verbose'
alias gcm='git commit --verbose --message'
alias gf='git fetch'
alias gpl='git pull'
alias gp='git push'
alias gs='git status'
gcl() {
    git fetch --all
    info "Deleting local branches that no longer have a remote"
    git branch -vv | grep 'gone]' | awk '{print $1}' | xargs git branch -D
    info "Listing local branches that do not have a remote"
    git branch --no-merged | awk '{print $1}'
}
