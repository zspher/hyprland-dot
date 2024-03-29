#!/usr/bin/env bash

[ -z "$SCRIPTS_DIR" ] && SCRIPTS_DIR="."
source "$SCRIPTS_DIR"/util/pkg.sh

for p in "${pkg[@]}"; do
    yay -S --noconfirm --needed "$p" --sudoloop
    echo "INSTALLING: " "$p"
done

for p in "${flatpak[@]}"; do
    flatpak install --user "$p" -y
    echo "INSTALLING: " "$p"
done

# install anyrun window switcher
cd ~/Downloads || exit
git clone https://github.com/auctumnus/anyrun-hyprland
cd anyrun-hyprland || exit
cargo build --release
mkdir -p ~/.config/anyrun/plugins
cp target/release/libanyrun_hyprland.so ~/.config/anyrun/plugins
