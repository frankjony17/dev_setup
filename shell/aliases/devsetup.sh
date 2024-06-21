#!/bin/sh

alias dot_edit="$EDITOR_NON_BLOCKING $DEVSETUP_DIR"
alias dot_update="(cd $DEVSETUP_DIR && git pull && sh setup.sh && echo 'Updated')"
