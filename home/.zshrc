#!/bin/zsh

# Golang
export PATH="$PATH:$(go env GOROOT)/bin:$(go env GOPATH)/bin:/opt/homebrew/bin"

# shellcheck source=../bin/source_recursive.sh
. "$HOME/dev_setup/bin/source_recursive.sh"
source_recursive "$HOME/dev_setup/bin"

# Helper scripts
source_recursive "$DEVSETUP_DIR/shell"

# Aliases
source_recursive "$DEVSETUP_DIR/shell/aliases"

# ZSH Plugins
source "$DEVSETUP_DIR/shell/plugins/almostontop/almostontop.plugin.zsh"
source "$DEVSETUP_DIR/shell/plugins/zsh-alias-finder/zsh-alias-finder.plugin.zsh"
source "$DEVSETUP_DIR/shell/plugins/zsh-completions/zsh-completions.plugin.zsh"
# source "$DEVSETUP_DIR/shell/plugins/zsh-bd/bd.plugin.zsh"

# History
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt INC_APPEND_HISTORY   # Append to history immediately
setopt EXTENDED_HISTORY     # Register timestamp of command
setopt HIST_FIND_NO_DUPS    # Avoid duplication when looking up
setopt HIST_IGNORE_ALL_DUPS # Avoid writing duplicates
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search   # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Auto-completions
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select                 # Use arrow keys to complete
zstyle ':completion::complete:*' gain-privileges 1 # Complete even with sudo

# Setup pushd/popd helper
setopt autopushd

# Prompt initialization
eval "$(starship init zsh)"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
