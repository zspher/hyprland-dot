#!/bin/bash

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

    ## file manager
    pcmanfm-qt
    file-roller
    gvfs
    gvfs-mtp
    ranger
    ffmpegthumbnailer 

    #theming
    nwg-look
    qt6ct
    ttf-noto-nerd
    papirus-icon-theme
    noto-fonts-emoji
    otf-cascadia-code-nerd
)


for p in "${pkg[@]}"; do
    yay -S --noconfirm --needed "$p"
    echo "INSTALLING: " "$p"
done