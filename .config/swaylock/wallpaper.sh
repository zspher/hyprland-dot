#!/usr/bin/env bash

random_array_element() {
    # Usage: random_array_element "array"
    local arr=("$@")
    printf '%s\n' "${arr[RANDOM % $#]}"
}

wallpaper_get() {
    IFS=$'\n' read -d "" -ra "wallpapers" < <(printf '%s\n' "$base_dir/"*.{jpg,png})
    random_array_element "${wallpapers[@]}"
}

base_dir="$HOME/Pictures/wallpapers"
wallpaper_get
