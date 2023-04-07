#!/usr/bin/env bash

if ! [ "$SHELL" = "$(which zsh)" ]; then
    echo "CHANGING SHELL"
    sudo chsh -s "$(which zsh)" "$USER"
fi

cp .config/* ~/.config -r
cp .local/bin ~/.local/bin/wrappedhl -r
cp .zshenv ~/.zshenv

git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
# git clone https://github.com/portus-zephyr/astrovim_conf ~/.config/nvim/lua/user