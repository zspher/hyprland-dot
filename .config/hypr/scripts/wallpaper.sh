#!/usr/bin/env bash

filetypes="\.(jpg|png|gif)$"
base_dir="$HOME/Pictures/wallpapers"
IFS=$'\n' read -d "" -ra "wallpapers" < <(printf '%s\n' "$base_dir/"*)

TIMEOUT=$((30 * 60))

swww init

while true; do
    while true; do
        wallpaper="${wallpapers[RANDOM % ${#wallpapers[@]}]}"
        [[ ! $wallpaper =~ $filetypes ]] || break
        wallpaper="${wallpapers[RANDOM % ${#wallpapers[@]}]}"
    done
    swww img "$wallpaper"
    sleep "$TIMEOUT"
done
