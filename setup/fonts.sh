#!/bin/sh

install_fonts() {
    info "Installing fonts"

    install_fonts_monaspace

    success "Fonts installed correctly"
    return 0
}

install_fonts_monaspace() {
    debug "monaspace"
    sh -c "cd ./fonts/monaspace/util && chmod +x ./install_macos.sh && exec ./install_macos.sh"
}
