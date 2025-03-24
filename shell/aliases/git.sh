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

monorepo() {
    info "Starting..."
    cd ~/WorkDev
    info "Deleting local composer-monorepo directory if exists"
    rm -rf composer-monorepo
    info "Cloning composer-monorepo repository"
    git clone git@github.com:onne-place/composer-monorepo.git
    cd composer-monorepo
    info "Updating composer-monorepo repository:"
    info "Switching to develop branch"
    git switch develop
    info "Creating .env file"
    cp .env-sample .env
    info "Updating submodules"
    make git_update
    info "Fetching latest changes between develop and stage"
    make git_latest
    info "Finished..."
}
