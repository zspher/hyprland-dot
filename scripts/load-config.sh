#!/usr/bin/env bash

rsync -azvhP ~/ .. --filter="merge ./util/copy.filter"

## redaction measures
sed -i -e "/.*\[\$e\].*/d" -e "/.*screen:.*/d" -e "/^State.*/d" ../.config/okularrc
sed -i -e '/^Own=.*/d' -e '/\[PasswordGenerator\]/Q' ../.config/keepassxc/keepassxc.ini


files=(
        ../.config/btop/btop.conf
        ../.config/gtk-2.0/gtkrc
        ../.config/qBittorrent/qBittorrent.conf
        ../.config/qt5ct/qt5ct.conf
)
for f in "${files[@]}"; do
    sed -i "s/$USER/\$USER/g" "$f"
done