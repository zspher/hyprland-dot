#!/bin/bash

# install
pkg=(
    # internet
    networkmanager
    nm-connection-editor
    network-manager-applet
    brave-bin
    yt-dlp
    wget
    curl
    rclone
    inetutils
    openssh
    qbittorrent
    betterbird-bin
    webcord-bin
    weechat

    # multimedia
    timg
    qimgv
    graphicsmagick
    gifsicle
    gimp
    krita
    inkscape
    hyprpicker-git
    grimblast-git
    easyeffects
    cava
    spotify
    mpv
    mpv-mpris
    ffmpeg
    handbrake
    # davinci-resolve
    obs-studio # obs-studio-git 
    v4l2loopback-dkms
    wf-recorder
    perl-image-exiftool

    # utilities
    zsh
    kitty
    less
    dolphin
    ffmpegthumbs
    kdegraphics-thumbnailers
    libheif
    qt5-imageformats 
    resvg
    kde-cli-tools
    ranger
    ffmpegthumbnailer
    resvg
    kde-cli-tools
    ranger
    ffmpegthumbnailer
    ark
    rsync
    timeshift
    git
    jq
    gparted
    udiskie
    popsicle
    btop
    hardinfo-git
    font-manager
    blueman

    # documents
    neovim
    visual-studio-code-bin
    libreoffice-fresh
    okular
    masterpdfeditor-free
    tesseract
    joplin-desktop
    obsidian

    # security
    polkit-kde-agent
    keepassxc
    swaylock-effects
    clamtk
    seahorse

    # other
    gnome-clocks
    wakatime
    anki
    sddm-git
    hyprland-nvidia # or hyprland, hyprland-git
    eww
    waybar-hyprland # waybar-hyprland-git
    rofi-lbonn-wayland
    swww
    dunst
    wl-clipboard
    copyq
    wlogout

    # base
    xdg-desktop-portal-hyprland-git
    qt5-wayland
    qt6-wayland

    # extra utils
    playerctl
    pavucontrol
    noise-suppression-for-voice
    fastfetch
    bat
    starship
    glow
    xdg-ninja-git
    dex
    xdotool

    # theming
    nwg-look-bin
    qt5ct-kde
    ttf-noto-nerd
    papirus-icon-theme
    noto-fonts-emoji
    otf-cascadia-code-nerd
    posy-improved-cursors
    catppuccin-gtk-theme-mocha
    papirus-folders-catppuccin-git
    lightly-git
    # gtk3-classic

    # gamimg
    # gamescope-git
    # lutris-git
    # steam
)


for p in "${pkg[@]}"; do
    yay -S --noconfirm --needed "$p"
    echo "INSTALLING: " "$p"
done

# post install
bat cache --build
sudo systemctl enable --now NetworkManager.service