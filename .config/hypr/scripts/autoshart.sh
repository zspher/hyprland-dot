#!/usr/bin/env bash
sleep 4
killall xdg-desktop-portal-wlr
killall xdg-desktop-portal
/usr/lib/xdg-desktop-portal-wlr &
sleep 4
/usr/lib/xdg-desktop-portal &

# see https://wiki.hyprland.org/FAQ/#some-of-my-apps-take-a-really-long-time-to-open
