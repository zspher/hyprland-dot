#!/usr/bin/env bash

# sddm theming
echo "[Theme]\nCurrent=corners" | sudo tee /etc/sddm.conf

sudo sed -E -i \
    -e  "s/^(Font=).*/\1\"CaskaydiaCove Nerd Font\"/" \
    -e "s/^(UAPBorderWidth=).*/\1\"2\"/" \
    -e "s/^(FieldBorderWidth=).*/\1\"2\"/" \
    -e "s/^(LoginButtonText=).*/\1\"Login\"/" \
    -e "s/^(TimeFormat=).*/\1\"HH:mm\"/" \
    /usr/share/sddm/themes/corners/theme.conf

# cursor theme
sudo sed -E -i \
    -e "s/^(Inherits=).*/\1Posy_Cursor/" \
    /usr/share/icons/default/index.theme

# services
sudo systemctl enable --now NetworkManager.service
sudo systemctl enable --now sddm.service
sudo systemctl enable --now bluetooth.service

# post install
yay -Y --editmenu --nodiffmenu --devel --save



# astrovim
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git clone https://github.com/portus-zephyr/astrovim_conf ~/.config/nvim/lua/user