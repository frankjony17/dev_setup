#!/bin/sh

. ./bin/ansi_log.sh
. ./bin/check_command.sh
. ./bin/detect_platform.sh
. ./bin/relative_path.sh
. ./bin/source_recursive.sh

info "Loading installers"

source_recursive "./setup"

info "Preparing script permissions"
prepare_executables

info "Pulling submodules"
git submodule update --init --recursive

info "Running installers"

install_home
install_nix
install_zsh

install_ssh
install_fonts

install_with_nix "bat" # https://github.com/sharkdp/bat
install_with_nix "gh" # https://github.com/cli/cli
install_with_nix "glow" # https://github.com/charmbracelet/glow
install_with_nix "go"
# install_with_nix "hyperfine" # https://github.com/sharkdp/hyperfine
install_with_nix "jq" # https://github.com/jqlang/jq --- https://jqlang.github.io/jq/tutorial/
install_with_nix "lnav" # https://lnav.org/
install_with_nix "shfmt" # https://github.com/patrickvane/shfmt
install_with_nix "tldr" # https://github.com/tldr-pages/tldr
install_with_nix "yq" # https://github.com/mikefarah/yq

# Dev specific
# install_with_nix "azure-cli"
install_with_nix "vscode"
install_with_nix "nodejs_18" "nodejs"
# install_with_nix "nodejs_20" "nodejs"
install_with_nix "pyenv"

# Install python versions
info "Installing python versions"
pyenv install 3.12
# pyenv install 3.11
pyenv global 3.12

install_app "bitwarden"
install_app "espanso"

success "Payton was installed"

success "Everything was installed"
info "Please reboot your machine to ensure changes are loaded"
