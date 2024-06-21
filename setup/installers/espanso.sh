#!/bin/sh

install_espanso() {
    COMMAND="espanso"
    if check_command "$COMMAND"; then
        success "Command $COMMAND installed correctly"
        return 0
    else
        info "Installing $COMMAND"
        install_espanso_macos
    fi
}

install_espanso_macos() {
    open "https://espanso.org/install/"
    warn "Press ENTER once installed and the setup will continue."
    read -r _dummy
}

install_espanso
