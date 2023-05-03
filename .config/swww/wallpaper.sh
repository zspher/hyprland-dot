#!/usr/bin/env bash

random_array_element() {
    # Usage: random_array_element "array"
    local arr=("$@")
    printf '%s\n' "${arr[RANDOM % $#]}"
}

regex() {
    # Usage: regex "string" "regex"
    [[ $1 =~ $2 ]] && printf '%s' "${BASH_REMATCH[1]//\"}"
}

wallpaper_get(){
    IFS=$'\n' read -d "" -ra "wallpapers" < <(printf '%s\n' "$base_dir"/wallpaper/*.{jpg,png})
    random_array_element "${wallpapers[@]}"
}

wallpaper_set(){
    local active_wallpaper=$base_dir/wallpaper/$(regex "$(swww query)" "image: (.*)")
    local wallpaper=$(wallpaper_get)

    while [[ $wallpaper == "$active_wallpaper" ]]; do
        wallpaper=$(wallpaper_get)
    done

    swww img "$wallpaper" \
    --transition-bezier .43,1.19,1,.4 \
    --transition-type wipe \
    --transition-duration 1 \
    --transition-step 90 \
    --transition-angle $((RANDOM % 360)) \
    --transition-fps 20
}

base_dir=$(dirname "$(realpath "$0")")
wallpaper_set
printf "%s" "🖼"