#!/usr/bin/env bash

case "$1" in 
    launcher) : "launcher" ;;
    menu) : "menu" ;;
    *)  printf '%s\n' "Unknown option" >&2
        exit 1;;
esac

## Run
rofi \
    -show drun \
    -theme $HOME/.config/rofi/bin/"$_".rasi
