# Hyprland Dotfiles
personal dotfiles for a hyprland desktop

- **Window Manager** • [hyprland](https://github.com/hyprwm/Hyprland)
- **Shell** • [zsh](https://www.zsh.org) w/ [starship](https://github.com/starship/starship) 
- **Terminal** • [kitty](https://github.com/kovidgoyal/kitty)
- **Panel** • [waybar](https://aur.archlinux.org/packages/waybar-hyprland-git)
- **Notify Daemon** • [swaync](https://github.com/ErikReider/SwayNotificationCenter)
- **Launcher** • [rofi](https://github.com/davatorium/rofi)

## Install
<details>
<summary>install instructions</summary>

- endeavoros was used as the base with no DE selected
- install packages using [install.sh](./install.sh)
```
./install.sh
```

## Misc

### anyrun hyprland window switcher
> see [anyrun-hyprland](https://github.com/auctumnus/anyrun-hyprland)

1. `git clone https://github.com/auctumnus/anyrun-hyprland`
2. `cd anyrun-hyprland`
3. `cargo build --release`
4. `cp target/release/libanyrun_hyprland.so ~/.config/anyrun/plugins`

### External Monitor Backlight Control
> see [backlight](https://wiki.archlinux.org/title/Backlight#External_monitors)

1. install `ddcutil`
2. add user to `i2c` group (*only if ddcutil <= 1.3*)
3. add `i2c-dev` kernel module (*only if `/dev/i2c-*` are not loaded*)


### Git Config
1. add `username` & `email` to `git/config`
    ```
    [user]
        email = <email>
        name = <username>
    ```

## Theming

### Global Cursor Theme
to have a unified cursor theme before and after login change 

`/usr/share/icons/default`
```ini
[Icon Theme]
Inherits=<cursor theme>
```
### QT theme
change the contents of `/etc/environment` and add
```
QT_QPA_PLATFORMTHEME=qt5ct
```

### SDDM theme
change contents of `/etc/sddm.conf` to
```ini
[Theme]
Current=corners
```

</details>