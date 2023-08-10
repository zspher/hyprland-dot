#!/usr/bin/env bash

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
    qimgv-git
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
    mpv-sponsorblock-git
    mpv-uosc-git
    ffmpeg
    handbrake
    # davinci-resolve
    obs-studio # obs-studio-git 
    v4l2loopback-dkms
    perl-image-exiftool
    kdeconnect

    # utilities
    zsh
    kitty
    less
    dolphin
    kimageformats
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
    clight
    cpu-x

    # documents
    neovim
    visual-studio-code-bin
    libreoffice-fresh
    okular
    masterpdfeditor-free
    tesseract
    calibre
    skanpage
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
    anyrun-git
    wpaperd
    swaync
    wl-clipboard
    copyq

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
    vivid
    lsd
    xdg-ninja-git
    dex
    xdotool

    # theming
    nwg-look-bin
    qt5ct-kde
    ttf-noto-nerd
    papirus-icon-theme
    noto-fonts-emoji
    ttf-cascadia-code-nerd
    posy-improved-cursors
    catppuccin-gtk-theme-mocha
    papirus-folders
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
yay -Y --editmenu --nodiffmenu --save