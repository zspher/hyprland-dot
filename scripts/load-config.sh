#!/usr/bin/env bash

set -a
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
set +a

echo "$SCRIPT_DIR"

rsync -azvhP ~/ $SCRIPT_DIR/.. --filter="merge $SCRIPT_DIR/util/copy.filter"

## redaction measures
sed -i -e "/.*\[\$e\].*/d" -e "/.*screen:.*/d" -e "/^State.*/d" $SCRIPT_DIR/../.config/okularrc
sed -i -e '/^Own=.*/d' -e '/\[PasswordGenerator\]/Q' $SCRIPT_DIR/../.config/keepassxc/keepassxc.ini


files=(
    .config/btop/btop.conf
    .config/gtk-2.0/gtkrc
    .config/qBittorrent/qBittorrent.conf
    .config/qt5ct/qt5ct.conf
)
for f in "${files[@]}"; do
    sed -i "s/$USER/\$USER/g" "$SCRIPT_DIR/../$f"
done