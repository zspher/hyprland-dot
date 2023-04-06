#!/usr/bin/env bash

if ! [ "$SHELL" = "$(where zsh)" ]; then
    echo "CHANGING SHELL"
    # sudo chsh -s "$(where zsh)" "$USER"
fi

cp .config/* ~/.config
cp .local/bin ~/.local/bin/wrappedhl

git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim