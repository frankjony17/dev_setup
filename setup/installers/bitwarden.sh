#!/bin/sh

install_bitwarden() {
    COMMAND="bitwarden"
    if check_command "$COMMAND"; then
        success "Command $COMMAND installed correctly"
        return 0
    else
        info "Installing $COMMAND"
        install_bitwarden_macos
    fi
}

install_bitwarden_macos() {
    open "https://itunes.apple.com/app/bitwarden/id1352778147"
    warn "Press ENTER once installed and the setup will continue."
    read -r _dummy
}

install_bitwarden
