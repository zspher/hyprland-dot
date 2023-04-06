#!/usr/bin/env bash

if ! [ "$SHELL" = "$(where zsh)" ]; then
    echo "CHANGING SHELL"
    # sudo chsh -s "$(where zsh)" "$USER"
fi

cp .config/* ~/.config