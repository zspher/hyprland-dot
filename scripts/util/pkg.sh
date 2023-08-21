#!/usr/bin/env bash

flatpak=(
    com.obsproject.Studio
    com.github.tchx84.Flatseal
    org.gimp.GIMP
)

pkg=(
    # internet
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
    ark
    rsync
    timeshift
    git
    jq
    gparted
    udiskie
    popsicle
    font-manager
    blueman
    clightd
    wlr-randr
    nwg-display
    filelight
    # syncthing
    # virtualbox-host-dkms
    # virtualbox
    # vagrant

    # utilities: diagnostics & monitoring
    btop
    hardinfo-git
    s-tui
    nvtop
    wev

    # extra utils
    bat
    playerctl
    pavucontrol
    noise-suppression-for-voice
    fastfetch
    starship
    glow
    vivid
    lsd
    xdg-ninja-git
    dex
    xdotool
    flatpak
    wl-clipboard
    xclip
    copyq

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
    gnome-keyring

    # other
    gnome-clocks
    wakatime
    anki
    eww
    waybar-hyprland-git # waybar-hyprland-git
    rofi-lbonn-wayland
    anyrun-git
    wpaperd
    swaync
    swayidle

    # base
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland-git
    qt5-wayland
    qt6-wayland
    sddm-git
    hyprland-nvidia-git # or hyprland, hyprland-git

    # gamimg
    gamescope-git
    lutris-git
    steam

    #fonts
    ttf-noto-nerd
    noto-fonts-emoji
    ttf-cascadia-code-nerd
    ttf-nerd-fonts-symbols

    # theming
    nwg-look-bin
    qt5ct-kde
    papirus-icon-theme
    papirus-folders
    posy-improved-cursors
    catppuccin-gtk-theme-mocha
    lightly-git
    sddm-theme-corners-git
    gtk3-classic
)