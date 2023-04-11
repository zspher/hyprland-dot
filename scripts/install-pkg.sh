#!/bin/bash

# install
pkg=(
    # base
    hyprland-nvidia # or hyprland, hyprland-git
    polkit-kde-agent
    dunst
    wl-clipboard
    wf-recorder
    wlogout
    grimblast-git
    xdg-desktop-portal-hyprland-git
    qt5-wayland
    qt6-wayland
    swww
    waybar
    kitty
    swaylock-effects
    sddm-git
    rofi-lbonn-wayland

    # utils
    playerctl
    hyprpicker-git
    timg
    zsh
    pavucontrol
    neovim
    noise-suppression-for-voice
    cava
    imagemagick
    fastfetch
    bat
    btop
    starship
    glow
    xdg-ninja-git

    ## file manager
    pcmanfm-qt
    file-roller
    gvfs
    gvfs-mtp
    ranger
    ffmpegthumbnailer 

    #theming
    nwg-look-bin
    qt5ct-kde
    ttf-noto-nerd
    papirus-icon-theme
    noto-fonts-emoji
    otf-cascadia-code-nerd
    posy-improved-cursors
    catppuccin-gtk-theme-mocha
    papirus-folders-catppuccin-git
)


for p in "${pkg[@]}"; do
    yay -S --noconfirm --needed "$p"
    echo "INSTALLING: " "$p"
done

# post install
bat cache --build